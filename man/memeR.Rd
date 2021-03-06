% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/memeR.R
\name{memeR}
\alias{memeR}
\title{Run MEME using R}
\usage{
memeR(sequences, background = NULL, outdir = "./",
  objfun = c("classic", "de", "se", "cd", "ce")[1], test = c("mhg",
  "mbn", "mrs")[1], shuf = 10, seed = 50, hsfrac = 0.5,
  cefrac = 0.25, searchsize = 0.5, alph = "protein",
  revcomp = FALSE,
  alphfile = "/Users/Wubing/Jobs/Project/UPS/_Data/AA_letters",
  mod = c("oops", "zoops", "anr")[1], nmotifs = 5, evt = NULL,
  time = 6000, minsites = 0.2 * length(sequences), maxsites = 600,
  minw = 6, maxw = 15, opencost = NULL, extendcost = NULL,
  noendgaps = TRUE, maxiter = 30, prior = c("dirichlet", "dmix",
  "mega", "megap", "addone")[1],
  api = "/Users/Wubing/Applications/meme/bin/meme")
}
\arguments{
\item{sequences}{a list of sequences.}

\item{background}{a list of control sequences.}

\item{outdir}{name of directory for output files.}

\item{objfun}{objective function (default: classic).
Classic mode: You provide one set of sequences and MEME discovers motifs
enriched in this set. Enrichment is measured relative to a (higher order)
random model based on frequencies of the letters in your sequences, or relative
to the frequencies given in a "Custom background model" that you may provide.
Discriminative mode: You provide two sets of sequences and MEME discovers motifs
that are enriched in the first (primary) set relative to the second (control) set.
In Discriminative mode, we first calculate a position-specific prior from the two
sets of sequences. MEME then searches the first set of sequences for motifs using
the position-specific prior to inform the search. This approach is based on the
simple discriminative prior "D" described in Section 3.5 of Narlikar et al.
We modify their approach to search for the "best" initial motif width, and to handle
protein sequences using spaced triples. Refer to the psp-gen documentation and to
our paper for more details.
Differential Enrichment mode: You provide two sets of sequences and MEME discovers
motifs that are enriched in the first (primary) set relative to the second (control)
set. In Differential Enrichment mode, MEME optimizes an objective function based on
the hypergeometric distribution to determine the relative enrichment of sites in the
primary sequences compared to the control sequences.}

\item{test}{statistical test type (default: mhg).}

\item{shuf}{preserve frequencies of k-mers of size <kmer> when shuffling.}

\item{seed}{random seed for shuffling and sampling.}

\item{hsfrac}{fraction of primary sequences in holdout set.}

\item{cefrac}{fraction sequence length for CE region.}

\item{searchsize}{maximum portion of primary dataset to use for motif search (in characters).}

\item{alph}{sequences use DNA/RNA/protein alphabet.}

\item{revcomp}{allow sites on + or - DNA strands.}

\item{mod}{distribution of motifs.}

\item{nmotifs}{maximum number of motifs to find.}

\item{evt}{stop if motif E-value greater than <evt>.}

\item{time}{quit before <t> CPU seconds consumed.}

\item{minsites}{minimum number of sites for each motif.}

\item{maxsites}{maximum number of sites for each motif.}

\item{minw}{minimum motif width.}

\item{maxw}{maximum motif width.}

\item{opencost}{gap opening cost for multiple alignments.}

\item{extendcost}{gap opening cost for multiple alignments.}

\item{noendgaps}{do not count end gaps in multiple alignments.}

\item{maxiter}{maximum EM iterations to run.}

\item{prior}{type of prior to use.}
}
\description{
Run MEME using R
}
