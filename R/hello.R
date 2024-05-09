#' hello world expamle 2.0
#'
#' liuSHHFSDIUBEKJvnhfbFDVNSDCBHSDBJDSC
#' JKSBDchjBSDJvNHCVGC
#'
#'
#'
#' jhbfchjndskjnmkdnvbcbsdhcbjksbljhcb
#' slkmxc
#'
#'
#'
#' @param x value to be printed
#'
#' @export
#'
#' @examples
#'
#' hello()
#'
hello <- function(x = NULL) {

  if (is.null(x = x)) {
    print("Hello, world!")
  } else {

    if (is.numeric(x = x)) {

      out <- rnorm(n = x)

      structure(.Data = out,
                class = c("hello", "vector"))

    } else {

      stop("gimme a number")
    }
  }
}


#' plot method for hello
#'
#' @param x x
#' @param ... other arguments
#'
#' @method plot hello
#' @export
#'
#' @examples
#'
#' plot(x = hello(x = 100))
#'
plot.hello <- function(x, ...) {
  p <- ggplot() +
    geom_line(mapping = aes(x = seq_along(along.with = x),
                            y = as.numeric(x = x)))
  p
}

