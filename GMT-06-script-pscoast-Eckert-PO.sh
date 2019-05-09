# Purpose: basemap in Eckert VI equal-area pseudocylindrical projection (here: Pacific Ocean)
# GMT modules: pscoast, logo
gmt pscoast -Rg -JKs180/9i -Gdarkseagreen1 -Slightcyan -W0.25p -Df \
	-B+t"Pacific Ocean, Eckert VI projection" -Bx30g30 -By10g10 \
	--FONT_TITLE=16p,Helvetica,dimgray \
	-Vv -U -K > GMT_eckert.ps
gmt logo -R -J -O -Dx10.5/-2.2+o0.1i/0.1i+w2c >> GMT_eckert.ps
