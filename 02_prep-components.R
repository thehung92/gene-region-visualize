# prep components

#### create annotation ####
# y axis on the right side
col.axis="blue"
p2 <- ggplot(head(recomb.rate), aes(pos, recomb_rate)) +
  geom_blank() +
  labs(y="Recombination Rate\n(cM/Mb)") +
  scale_y_continuous(position="right", limits=c(0,100)) +
  # capped the axis
  coord_capped_cart(right="both") +
  theme(axis.line.y=element_line(color=col.axis),
        axis.ticks.y=element_line(color=col.axis),
        axis.text.y=element_text(color=col.axis),
        text=element_text(family="Arial", face="bold",color=col.axis),
        axis.line.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank(),
        axis.title.x=element_blank(),
        panel.grid=element_blank(),
        plot.background=element_blank(),
        panel.background=element_blank())
# create bottom legend
set.seed=12345
df <- tibble(x=1:20,
             y=runif(20,0,8),
             z=runif(20,0,1))
df$range <- cut(df$z, breaks=seq(0,1,0.2))
# annotate lead dot
df$range <- as.character(df$range)
df$range[1] <- "Lead.variant"
# create breaks factor
break.factor <- as.factor(df$range) %>% levels()
# create color palette
col.palette <- c("darkblue","lightblue","green","orange","red","darkviolet")
# create label
break.label <- c("0-0.2","0.2-0.4","0.4-0.6","0.6-0.8","0.8-1","Lead variant")
legend.title <- parse(text="r^2~`:`")
# function for small legend
addSmallLegend <- function(myPlot, pointSize = 1, textSize = 6, spaceLegend = 0.2) {
  myPlot +
    guides(shape = guide_legend(override.aes = list(size = pointSize),
                                nrow=1, ncol=6)#,
           #color = guide_legend(override.aes = list(size = pointSize),
           #                    nrow=1, ncol=6)
    ) +
    theme(legend.title = element_text(size = textSize), 
          legend.text  = element_text(size = textSize),
          legend.key.size = unit(spaceLegend, "lines"))
}
# plot scatter with horizontal legend
p <- ggplot(df, aes(x,y,color=range,shape=range, group=range)) +
  geom_point() +
  scale_color_manual(legend.title,
                     breaks=break.factor,
                     values=col.palette,
                     #name=parse(text="r^2~`:`"),
                     labels=break.label
  ) +
  scale_shape_manual(legend.title,
                     breaks=break.factor,
                     values=c(rep(20,length(break.factor)-1),18),
                     #name=parse(text="r^2~`:`"),
                     labels=break.label
  ) +
  theme_light() +
  theme(text=element_text(family="Arial", color="grey50"),
        legend.position="bottom",
        legend.direction="horizontal",
        legend.background=element_rect(size=0.2,linetype="solid",
                                       fill="transparent")
  ) +
  guides(color=guide_legend(nrow=1,ncol=6))
p <- addSmallLegend(p,2.5,8,0.5)
# extract legend
leg <- get_legend(p) %>% as_ggplot()
#### create dashed line ####
text <- "Threshold:  <span style='color:red'>**\u2012 \u2012 \u2012**</span>  Bonferroni correction"
g <- richtext_grob(text,
                   #x=0.75,y=0.498,
                   hjust=0,vjust=0.5,
                   gp=gpar(fontfamily="Arial", fontsize=8, col="#808080"))