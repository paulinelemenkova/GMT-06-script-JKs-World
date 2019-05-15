# Purpose: Geological map in Eckert VI equal-area pseudocylindrical projection (here: Pacific Ocean)
# GMT modules: pscoast, psxy, logo
ps=GMT_geology_World
gmt pscoast -Rg -JKs180/9i -Gdarkseagreen1 -Slightcyan -W0.25p -Dl \
	-B+t"Pacific Ocean, Eckert VI projection" -Bx30g30 -By10g10 \
	--FONT_TITLE=16p,Helvetica,dimgray \
	-Vv -U -K > $ps
gmt psxy -R -J hotspots.gmt -Sc0.2c -Gred -O -K >> $ps
gmt psxy -R -J ridge.gmt -Sf0.5c/0.15c+l+t -Wthin,purple -Gpurple -O -K >> $ps
gmt psxy -R -J transform.gmt -Sf0.5c/0.15c+l+t -Wthin,orange -Gorange -O -K >> $ps
gmt psxy -R -J trench.gmt -Sf1.5c/0.2c+l+t -Wthick,red -Gred -O -K >> $ps
gmt psxy -R -J LIPS.2001.points.gmt -Sc0.1c -Gyellow -O -K >> $ps
gmt psxy -R -J LIPS.2011.gmt -Sc0.05c -Gmagenta -O -K >> $ps
gmt psxy -R -J ophiolites.gmt -Sc0.1c -Gfirebrick -O -K >> $ps
gmt logo -R -J -O -Dx10.5/-2.2+o0.1i/0.1i+w2c >> $ps
