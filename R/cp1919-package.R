#' @keywords internal
"_PACKAGE"

#' Radio Observations of the Pulse Profiles and Dispersion Measures of Twelve Pulsars
#'
#' Successive pulses from CP 1919, the first pulsar discovered. The pulses occur every 1.337
#' seconds. They are caused by rapidly spinning neutron star.
#'
#' @format ## `pulsar`
#' A data frame with 24,000 rows and 4 columns:
#' \describe{
#'   \item{measurement}{Labels successive pulses. The dataset contains 80 consecutive radio pulses.}
#'   \item{time}{The duration of individual, consecutive radio pulses emitted by the rotating
#'      neutron star CP 1919. Each pulse lasts about 0.04 seconds.}
#'   \item{radio_intensity}{The peaks and troughs of each individual pulse.}
#' }
#' 
#' @examples
#' head(pulsar)
#'
#' @source <https://www.proquest.com/docview/302499144/abstract?sourcetype=Dissertations%20&%20Theses>
"pulsar"
