\name{assert_that}
\alias{assert_that}
\alias{see_if}
\title{Assert that certain conditions are true.}
\usage{
  assert_that(..., env = parent.frame())

  see_if(..., env = parent.frame())
}
\arguments{
  \item{...}{unnamed expressions that describe the
  conditions to be tested.  Rather than combining
  expressions with \code{&&}, separate them by commas so
  that better error messages can be generated.}

  \item{env}{(advanced use only) the environment in which
  to evaluate the assertions.}
}
\description{
  \code{assert_that} is a drop-in replacement for
  \code{\link{stopifnot}} but is designed to give
  informative error messages.
}
\section{Assertions}{
  Assertion functions should return a single \code{TRUE} or
  \code{FALSE}: any other result is an error, and
  \code{assert_that} will complain about it. This will
  always be the case for the assertions provided by
  \code{assertthat}, but you may need be a more careful for
  base R functions.

  To make your own assertions that work with
  \code{assert_that}, see the help for
  \code{\link{on_failure}}.
}
\examples{
x <- 1
# assert_that() generates errors, so can't be usefully run in
# examples
\dontrun{
assert_that(is.character(x))
assert_that(length(x) == 3)
assert_that(is.dir("asdf"))
y <- tempfile()
writeLines("", y)
assert_that(is.dir(y))
}

# But see_if just returns the values, so you'll see that a lot
# in the examples: but remember to use assert_that in your code.
see_if(is.character(x))
see_if(length(x) == 3)
see_if(is.dir(17))
see_if(is.dir("asdf"))
}

