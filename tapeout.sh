#!/bin/bash

X="tapeout/bypass_crossmix"
B="bypass_crossmix/bypass_crossmix"

rm -r bypass_crossmix
mkdir -p bypass_crossmix

cp ${X}-F.Cu.gbr ${B}.GTL
cp ${X}-F.Mask.gbr ${B}.GTS
cp ${X}-F.SilkS.gbr ${B}.GTO

cp ${X}-B.Cu.gbr ${B}.GBL
cp ${X}-B.Mask.gbr ${B}.GBS
cp ${X}-B.SilkS.gbr ${B}.GBO

cp ${X}-Edge.Cuts.gbr ${B}.GML
cp ${X}.drl ${B}.TXT

rm bypass_crossmix.zip
zip -r bypass_crossmix.zip bypass_crossmix
