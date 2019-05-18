# Purpose: Geological map in Eckert VI equal-area pseudocylindrical projection (here: Pacific Ocean)
# GMT modules: pscoast, psxy, logo
ps=GMT_geology_World
gmt pscoast -Rg -JKs180/9i -Gdarkseagreen1 -Slightcyan -W0.25p -Dc \
    --FORMAT_GEO_MAP=dddF \
    --MAP_FRAME_PEN=dimgray \
    --MAP_FRAME_WIDTH=0.1c \
    --MAP_TITLE_OFFSET=0.5c \
    --MAP_TICK_PEN_PRIMARY=thinner,dimgray \
    --FONT_TITLE=12p,Palatino-Roman,black \
    --FONT_ANNOT_PRIMARY=8p,Helvetica,dimgray \
    --FONT_LABEL=8p,Helvetica,dimgray \
	-B+t"Geological features, World map" -Bx30g30 -By10g10 \
	--FONT_TITLE=12p,Helvetica,dimgray \
	-Vv -K > $ps
gmt psxy -R -J hotspots.gmt -Sc0.2c -Gred -O -K >> $ps
gmt psxy -R -J ridge.gmt -Sf0.5c/0.15c+l+t -Wthin,purple -Gpurple -O -K >> $ps
gmt psxy -R -J transform.gmt -Sf0.5c/0.15c+l+t -Wthin,orange -Gorange -O -K >> $ps
gmt psxy -R -J trench.gmt -Sf1.5c/0.2c+l+t -Wthick,red -Gred -O -K >> $ps
gmt psxy -R -J LIPS.2001.points.gmt -Sc0.1c -Gyellow -O -K >> $ps
gmt psxy -R -J LIPS.2011.gmt -L -Gp7+bred+f-+r300 -Wthinnest,red -O -K >> $ps
gmt psxy -R -J ophiolites.gmt -Sc0.1c -Gfirebrick -O -K >> $ps
# Scale bar
gmt psbasemap -R -J \
    --FONT=8p,Palatino-Roman,dimgray \
    -Lx5.3i/-0.5i+c50+w10000k+l"Eckert VI equal-area pseudocylindrical projection. Scale (km)"+f \
    -UBL/45p/-40p -O -K >> $ps
# logo
gmt logo -R -J -Dx10.5/-2.8+o0.1i/0.1i+w2c -O >> $ps
