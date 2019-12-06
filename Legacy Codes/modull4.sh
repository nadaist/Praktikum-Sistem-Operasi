#!/bin/bash

pilihan=1;
while [ $pilihan -ne 2 ];
do
echo "1. menu kalkulator loop"
echo "2. exit";
echo "pilihan : ";
read pilihan;
if [ $pilihan -eq 1 ]
then
echo "Masukkan Bilangan acuan : ";
read bil;
echo "Masukkan Batasan loop : ";
read loop;
echo "penjumlahan";
 for ((i=1; i<=$loop; i=i+1))
 do jumlah=0;
 let jumlah=$bil+$i;
 echo "$bil + $i = $jumlah";
done
echo "pengurangan";
 for ((i=1; i<=$loop; i=i+1))
 do
jumlah=0;
let jumlah=$bil-$i;
echo "$bil - $i = $jumlah";
done

echo "pembagian"
for ((i=1; i<=$loop; i=i+1))
do
jumlah=0;
let jumlah=$bil/$i;
echo "$bil / $i = $jumlah";
done
echo "perkalian";
for ((i=1; i<=$loop; i=i+1))
do
jumlah=0;
let jumlah=$bil*$i;
echo "$bil x $i = $jumlah";
done
fi
done

