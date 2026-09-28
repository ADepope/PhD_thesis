# latexmkrc: build rules for this thesis, replacing build-thesis.sh.
# Overleaf reads this file automatically. Locally, run: latexmk -pdf main.tex
#
# 1. The List of Terms (.glo -> .gls) and the List of Abbreviations (.acn -> .acr)
#    are built with exactly the makeindex calls of build-thesis.sh.
# 2. Speed-up: intermediate LaTeX passes run in pdfTeX draft mode, which skips
#    embedding the images (about 5 s instead of 35 s per pass). As soon as a
#    draft pass leaves the auxiliary files unchanged, the document has converged
#    and one normal pass writes the PDF. That PDF is identical to the one from a
#    build without draft passes.

use File::Basename;
use Digest::MD5;

# ---- 1. Glossaries ---------------------------------------------------------

add_cus_dep('glo', 'gls', 0, 'thesis_glo2gls');
add_cus_dep('acn', 'acr', 0, 'thesis_acn2acr');
push @generated_exts, qw(glo gls glg acn acr alg ist glsdefs);

sub thesis_glo2gls { return thesis_makeindex($_[0], 'glg', 'gls', 'glo'); }
sub thesis_acn2acr { return thesis_makeindex($_[0], 'alg', 'acr', 'acn'); }

# makeindex -t X.<log> -s X.ist -o X.<out> X.<in>, run inside the directory of
# the files because makeindex refuses to write to absolute paths.
sub thesis_makeindex {
    my ($path_base, $log, $out, $in) = @_;
    my ($base, $dir) = fileparse($path_base);
    return system("cd \"$dir\" && makeindex -t \"$base.$log\" -s \"$base.ist\""
                  . " -o \"$base.$out\" \"$base.$in\"");
}

# ---- 2. Draft passes -------------------------------------------------------

# Files that pdflatex reads back in the next pass (latexmk tracks all of them).
our @thesis_feedback_exts = qw(aux toc lof lot loa out glsdefs);
our $thesis_pdflatex_runs = 0;

# Wrap the pdflatex command already configured (e.g. by Overleaf); leave any
# unusual configuration alone.
if ($pdflatex =~ /^\s*\S*pdflatex\b/) {
    $pdflatex = "internal thesis_pdflatex $pdflatex";
}

sub thesis_pdflatex {
    my ($program, @args) = @_;
    $thesis_pdflatex_runs++;
    my @files = map { "$aux_dir1$root_filename.$_" } @thesis_feedback_exts;
    my %before = map { $_ => thesis_md5($_) } @files;

    my $ret = system($program, '-draftmode', @args);
    my @changed = grep { thesis_md5($_) ne $before{$_} } @files;

    # Not converged yet: latexmk runs BibTeX/makeindex if needed and calls us again.
    if ($ret == 0 && @changed && $thesis_pdflatex_runs < $max_repeat) {
        print "latexmkrc: draft pass changed @changed; another pass follows\n";
        return 0;
    }
    # Converged (or an error occurred, or this is the last allowed pass):
    # normal pass that writes the PDF.
    print "latexmkrc: running the normal pass that writes the PDF\n";
    return system($program, @args);
}

sub thesis_md5 {
    open(my $fh, '<', $_[0]) or return '';
    binmode($fh);
    return Digest::MD5->new->addfile($fh)->hexdigest;
}
