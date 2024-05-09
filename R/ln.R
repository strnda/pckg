#' linear reservir
#'
#' @param IN input
#' @param a alpha
#' @param S0_1 storage
#' @param k_1 dischrage
#' @param S0_2 storage
#' @param k_2 dischrage
#' @param S0_3 storage
#' @param k_3 dischrage
#'
#' @export
#'
#' @import data.table
#' @importFrom lubridate isoyear
#'
#' @examples
#'
#' ln_complex(IN = rnorm(n = 100))
#'
ln_complex <- function(IN,
                       a = .25,
                       S0_1 = 100, k_1 = .1,
                       S0_2 = 15, k_2 = .2,
                       S0_3 = 50, k_3 = .05) {

  OUT <- S_1 <- S_2 <- S_3 <-
    Q_1 <- Q_2 <- Q_3 <- vector(mode = "numeric",
                                length = length(x = IN))

  S_1[1] <- S0_1
  S_2[1] <- S0_2
  S_3[1] <- S0_3

  for (i in seq_along(along.with = IN)) {

    Q_1[i] <- k_1 * S_1[i]
    S_1[i + 1] <- S_1[i] - Q_1[i] + IN[i] * a

    Q_2[i] <- k_2 * S_2[i]
    S_2[i + 1] <- S_2[i] - Q_2[i] + IN[i] * (1 - a)

    Q_3[i] <- k_3 * S_3[i]
    S_3[i + 1] <- S_3[i] - Q_3[i] + Q_1[i]

    OUT[i] <- Q_3[i] + Q_2[i]
  }
  sim <- data.table(IN = IN,
                    S_1 = S_1[-length(x = IN)],
                    S_2 = S_2[-length(x = IN)],
                    S_3 = S_3[-length(x = IN)],
                    Q_1 = Q_1,
                    Q_2 = Q_2,
                    Q_3 = Q_3,
                    OUT = OUT)
  sim
}
