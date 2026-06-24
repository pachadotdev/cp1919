library(dplyr)

pulsar <- as.data.frame(readr::read_csv("dev/cp1919.csv"))

usethis::use_data(pulsar)

unique(pulsar$y)

pulsar <- pulsar |>
    rename(measurement = y, radio_intensity = z, time = x) |>
    select(measurement, time, radio_intensity)

library(ggplot2)

col1 <- "white"
col2 <- "black"

ggplot(pulsar) +
    geom_line(
        aes(x = time, y = radio_intensity)
    ) +
    facet_wrap(~measurement)

library(ggridges)

ggplot(pulsar, aes(x = time, y = measurement, height = radio_intensity, group = measurement)) +
    geom_ridgeline(
        min_height = min(pulsar$radio_intensity),
        scale = 0.2,
        linewidth = 0.5,
        fill = col1,
        colour = col2
    ) +
    scale_y_reverse() +
    theme_void() +
    theme(
        panel.background = element_rect(fill = col1),
        plot.background = element_rect(fill = col1, color = col1),
    )

usethis::use_data(pulsar, overwrite = TRUE)
