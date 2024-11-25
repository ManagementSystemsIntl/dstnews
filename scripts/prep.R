# prep

base_packages <- c("tidyverse", "easystats", "corrplot","DescTools","estimatr","extrafont","janitor",
                   "reshape2", "haven", "broom","HH","Hmisc","plotrix","scales","sysfonts","foreign","car",
                   "ICC","openxlsx","readr","readxl","sjmisc","sjPlot","flextable", "sjstats","sjlabelled","skimr",
                   "labelled", "texreg","psych","viridis","here","jtools","huxtable","stringi", "kableExtra")

# Install packages not yet installed
installed_packages <- base_packages %in% rownames(installed.packages())
if (any(installed_packages == FALSE)) {
  install.packages(base_packages[!installed_packages])
}

lapply(base_packages, library, character.only=T)

viz_packages <- c("patchwork","gganimate","ggstatsplot","ggthemes","ggrepel","ggpubr","cowplot","ggdist","ggtext",
                  "geomtextpath","ggfortify", "ggridges", "gghighlight")

# Install packages not yet installed
installed_packages <- viz_packages %in% rownames(installed.packages())
if (any(installed_packages == FALSE)) {
  install.packages(viz_packages[!installed_packages])
}

lapply(viz_packages, library, character.only=T)

table_packages <- c("gt", "gtsummary", "gtExtras","flextable", "officer")
# Install packages not yet installed
installed_packages <- table_packages %in% rownames(installed.packages())
if (any(installed_packages == FALSE)) {
  install.packages(table_packages[!installed_packages])
}

lapply(table_packages, library, character.only=T)

options(digits=3, scipen=6)

# set default
base <- theme_bw() + theme(panel.grid.minor.x=element_blank(),
                           panel.grid.minor.y=element_blank(),
                           plot.title=element_text(#face="bold",
                                                   size=16, hjust=.5, family = "Source Sans Pro"),
                           plot.subtitle = element_text(size=14, family="Source Sans Pro"),
                           plot.caption=element_text(size=11, family="Source Sans Pro"),
                           axis.title=element_text(size=14, family="Source Sans Pro"),
                           axis.text=element_text(size=12, family="Source Sans Pro"),
                           legend.text=element_text(size=12, family="Source Sans Pro"),
                           strip.text=element_text(size=12, family="Source Sans Pro"),
                           panel.border=element_blank(),
                           axis.ticks = element_blank())

theme_set(base)

faceted <- theme_bw() +
    theme(panel.grid.minor.x=element_blank(),
          panel.grid.minor.y=element_blank(),
          plot.title=element_text(#face="bold",
                                  size=18, hjust=.5, family = "Source Sans Pro"),
          plot.subtitle = element_text(size=16, family="Source Sans Pro"),
          plot.caption=element_text(size=12, family="Source Sans Pro"),
          axis.title=element_text(size=16, family="Source Sans Pro"),
          axis.text=element_text(size=14, family="Source Sans Pro"),
          legend.text=element_text(size=14, family="Source Sans Pro"),
          strip.text=element_text(size=14, family="Source Sans Pro"))



facet_style <- function(){theme_bw() +
        theme(panel.grid.minor.x=element_blank(),
              panel.grid.minor.y=element_blank(),
              plot.title=element_text(face="bold",size=18, hjust=.5, family = "Source Sans Pro"),
              plot.subtitle = element_text(size=16, family="Source Sans Pro"),
              plot.caption=element_text(size=12, family="Source Sans Pro"),
              axis.title=element_text(size=16, family="Source Sans Pro"),
              axis.text=element_text(size=14, family="Source Sans Pro"),
              legend.text=element_text(size=14, family="Source Sans Pro"),
              strip.text=element_text(size=14, family="Source Sans Pro"))
}
