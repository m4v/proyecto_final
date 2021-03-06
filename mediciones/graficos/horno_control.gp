#!/usr/bin/gnuplot

set term pngcairo enhanced solid size 1280,720 fontscale 1

set datafile separator ","
set decimalsign ","

set grid
#set rmargin 10
#set lmargin 1
#set tmargin 1
#set bmargin 0.5
set xlabel "Tiempo [minutos]"
set ylabel "Temperatura [°C]"

datos_1 = "../captura_programa_11-Nov-2016_175802.csv"
t0_1 = 528

datos_2 = "../captura_programa_10-Nov-2016_152524.csv"
t0_2 = 39

datos_3 = "../captura_programa_09-Nov-2016_195356.csv"
t0_3 = 44

datos_4 = "../captura_programa_09-Nov-2016_145400.csv"
t0_4 = 0

set xrange [0:60]
#set yrange [0:3.24]
#set y2range [0:1000]

set output "horno_programa_1.png"
set title "Ensayo del programa"
set key bottom right

plot datos_1 using (($1 - t0_1)/60):($2) title "programa 11/11 (con display)" with lines lc rgb "blue", \
     datos_2 using (($1 - t0_2)/60):($2) title "programa 10/11" with lines lc rgb "red", \
     datos_3 using (($1 - t0_3)/60):($2) title "programa  9/11" with lines lc rgb "purple", \
     datos_4 using (($1 - t0_4)/60):($2) title "programa  9/11" with lines lc rgb "web-green"

