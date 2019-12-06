#!/bin/bash
declare -a A
declare -a B
declare -a C
declare -a D
pilihan=1;
while [ $pilihan -ne 4 ];
do
echo "1. input nilai matriks : ";
echo "2. hasil penjumlahan matriks : ";
echo "3. nilai perkalian matriks : ";
echo "4. keluar";
echo "pilihan";
read pilihan; 

if [ $pilihan -eq 1 ]
then
for ((i=0;i<4;i++))
do
echo "input elemen matriks A-$i : ";
read A[$i];
done

for ((i=0;i<4;i++))
do
echo "input elemen matriks B-$i : ";
read B[$i];
done
fi

if [ $pilihan -eq 2 ]
then
	for ((i=0;i<4;i++))
	do
	let C[$i]=A[$i]+B[$i];
	done
echo -e  "${C[0]} ${C[1]} \n${C[2]} ${C[3]}";
fi

if [ $pilihan -eq 3 ]
then 
let D[0]=A[0]*B[0]+A[1]*B[2];
let D[1]=A[0]*B[1]+A[1]*B[3];
let D[2]=A[2]*B[0]+A[3]*B[2];
let D[3]=A[2]*B[1]+A[3]*B[3];
echo -e "${D[0]} ${D[1]} \n${D[2]} ${D[3]}";
fi
done
