#!/bin/bash

file=gen_h25_dyn.sh
cp script_temp.sh $file
sed -i 's/_impfile_/h25_dynamisch_2025.csv/g' $file
sed -i 's/_tab_/h25_dyn_2025/g' $file
sqlite3 -init $file stromdatenroh.sqlite .quit


file=gen_p25_dyn.sh
cp script_temp.sh $file
sed -i 's/_impfile_/p25_dynamisch_2025.csv/g' $file
sed -i 's/_tab_/p25_dyn_2025/g' $file
sqlite3 -init $file stromdatenroh.sqlite .quit


file=gen_s25_dyn.sh
cp script_temp.sh $file
sed -i 's/_impfile_/s25_dynamisch_2025.csv/g' $file
sed -i 's/_tab_/s25_dyn_2025/g' $file
sqlite3 -init $file stromdatenroh.sqlite .quit

file=gen_h0_dyn.sh
cp script_temp.sh $file
sed -i 's/_impfile_/h0_dynamisch_1999.csv/g' $file
sed -i 's/_tab_/h0_dyn_1999/g' $file
sqlite3 -init $file stromdatenroh.sqlite .quit

# Download from SMARD
sqlite3 -init strompreise.sh stromdatenroh.sqlite .quit


