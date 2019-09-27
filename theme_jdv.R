library(tidyverse)

#To use as reference
# ?theme
# names(pdfFonts())


# Theme JDV ---------------------------------------------------------------

theme_jdv <- function(base_size = 11, 
                      base_family = "Arial Narrow") {
  theme_minimal(base_size = base_size,
                base_family = base_family) %+replace%
    theme(axis.title = element_text(face = 'bold'), 
          axis.title.x = element_text(vjust = -2),
          axis.title.y = element_text(vjust = 4, 
                                      angle = 90),
          legend.title = element_text(face = 'bold'), 
          legend.text = element_text(margin = margin(t = 7)),
          legend.spacing.x = unit(1.0, 'cm'),
          legend.key.height = unit(5, "pt"),
          legend.key.width = unit(5, "pt"),
          legend.box.margin = margin(t = .6, r = 2, unit = "cm"),
          panel.grid.major = element_line(linetype = 'solid', 
                                          size = .2), 
          panel.grid.minor = element_blank(),
          panel.background = element_blank(),
          plot.title = element_text(size = 21, 
                                    face = 'bold', 
                                    hjust = 0, 
                                    vjust = 3), 
          plot.subtitle = element_text(hjust = 0, 
                                       vjust = 2),
          plot.margin = unit(c(.8, 1, .5, .8), "cm"),
          strip.text.x = element_text(face = "bold", 
                                      size = 12),
          complete = FALSE,
          validate = TRUE)
}


# Dark Version ------------------------------------------------------------


theme_jdv_dark <- function(base_size = 11, 
                      base_family = "Arial Narrow") {
  theme_minimal(base_size = base_size,
                base_family = base_family) %+replace%
    theme(axis.title = element_text(face = 'bold', 
                                    color = "#FFFFFF"),
          axis.title.x = element_text(vjust = -2, 
                                      color = "#FFFFFF"),
          axis.title.y = element_text(vjust = 4, 
                                      angle = 90, 
                                      color = "#FFFFFF"),
          axis.text = element_text(color = "#FFFFFF"),
          legend.title = element_text(face = 'bold', 
                                      color = "#FFFFFF"),
          legend.text = element_text(color = "#FFFFFF", 
                                     size = 10),
          panel.grid.major = element_blank(), 
          panel.grid.minor = element_blank(),
          plot.background = element_rect(fill = "grey20"), 
          plot.title = element_text(size = 19, 
                                    face = 'bold', 
                                    hjust = 0, 
                                    vjust = 3, 
                                    color = "light grey"), 
          plot.subtitle = element_text(hjust = 0, 
                                       vjust = 2, 
                                       color = "#FFFFFF"),
          plot.margin = unit(c(.8, .5, .5, 1), "cm"),
          strip.text = element_text(color = "#FFFFFF", 
                                    face = "bold", 
                                    size = 11),
          strip.background = element_rect(size = 8),
          complete = FALSE,
          validate = TRUE)
}


# Quick Test Plots --------------------------------------------------------
# 
# diamonds %>%
#   ggplot(aes(carat, price, color = cut)) +
#   ggtitle("Diamond Prices", subtitle = "subtitle") +
#   geom_smooth(se = FALSE) +
#   theme_jdv()
# 
# diamonds %>%
#   ggplot(aes(cut, price, fill = cut)) +
#   ggtitle("Diamond Prices", subtitle = "subtitle") +
#   geom_violin() +
#   theme_jdv()

