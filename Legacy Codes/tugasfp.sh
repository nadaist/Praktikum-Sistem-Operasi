 #!/bin/bash
lagi='y'
while [ $lagi=='y' ] || [ $lagi=='Y' ];
do
clear
   echo "PROGRAM PEMBELIAN ALAT ELEKTRONIK ONLINE ";
   echo "=======================================";
   echo "1. DATA DIRI PENJUAL";
   echo "2. MEMBUAT CATATAN";
   echo "3. MENGHAPUS CATATAN";
   echo "4. DAFTAR BARANG     ";
   echo "5. DATA PEMBELI";
   echo "6. CETAK TRANSAKSI ";
   echo "7. KELUAR       ";
   echo "=======================================";
   read -p "Pilihan anda [1-7] :" pil;
   echo "=======================================";
case $pil in
1)
clear
  echo "+===================================+"
  echo "|          Final Project            |"
  echo "| Dibuat Oleh :                     |"
  echo "| Nada istighfariana                |"
  echo "| 18081010135                       |"
  echo "+===================================+"
  read data diri
clear
;;
2)
gedit catatan.txt
clear
;;
3) 
echo catata.txt=$1
rm catatan.txt
clear
;;
4)
clear
    echo "=====================================";
    echo "        MENU BARANG ";
    echo "=====================================";
    echo "1. TV";
    echo "2. LAPTOP";
    echo "3. KULKAS";
    echo "=====================================";
    echo -n "Masukkan Pilihan Jenis Barang: "
    read barang
     case $barang in
     1) 
     clear
        echo "=================================";
        echo " Dafar tv yang tersedia ";
        echo "=================================";
        echo " 1. Sony  Rp.10000000";
        echo " 2. Sharp	Rp.8000000";
        echo " 3. Panasonic  Rp.7500000";
        echo " 4. Samsung  Rp.9000000";
        echo " 5. Toshiba  Rp.5500000";
        echo "===================================";
        echo -n "Pilihan TV: "
        read TV
        echo -n "Jumlah : "
        read jumb
        if [ $TV -eq 1 ];    then jenisTV="Sony";
       harga=10000000;
       let total=jumb*harga;
       elif [ $TV -eq 2 ]; then jenisTV="Sharp";
       harga=8000000;
       let totalb=jumb*harga; 
       elif [ $TV -eq 3 ]; then jenisTV="Panasonic";
       harga=7500000;
       let totalb=jumb*harga;
        elif [ $TV -eq 4 ]; then jenisTV="Samsung";
       harga=9000000;
       let totalb=jumb*harga;
       elif [ $TV -eq 5 ]; then jenisTV="Toshiba";
       harga=5500000;
       let totalb=jumb*harga;
       exit 1
       fi
       ;;
       2)
       clear
        echo "=====================================================";
        echo " Dafar laptop yang tersedia ";
        echo "=====================================================";
        echo " 1. Samsung	Rp.4000000";
        echo " 2. Asus		Rp.6000000";
        echo " 3. Hp		Rp.5000000";
        echo " 4. Acer		Rp.3000000";
        echo " 5. Apple		Rp.7000000";
        echo "====================================================";
        echo -n "Pilihan LAPTOP: "
        read LAPTOP
        echo -n "Jumlah : "
        read jums
        if [ $LAPTOP -eq 1 ];    then jenisLAPTOP="Samsung";
       harga=4000000;
       let totals=jums*harga;
       elif [ $LAPTOP -eq 2 ]; then jenisLAPTOP="Asus";
       harga=6000000;
       let totals=jums*harga;
       elif [ $LAPTOP -eq 3 ]; then jenisLAPTOP="Hp";
       harga=5000000;
       let totals=jums*harga;
        elif [ $LAPTOP -eq 4 ]; then jenisLAPTOP="Acer";
       harga=3000000;
       let totals=jums*harga;
       elif [ $LAPTOP -eq 5 ]; then jenisLAPTOP="Apple";
       harga=7000000;
       let totals=jums*harga;
       else
       echo "Sorry, tidak tersedia"
       exit 1
       fi
       ;;
       3)
       clear
        echo "=====================================================";
        echo " Dafar kulkas yang tersedia ";
        echo "=====================================================";
        echo " 1. Hitachi     Rp.10000000";
        echo " 2. Electrolux  Rp.11000000";
        echo " 3. Sharp     Rp.9000000";
        echo " 4. Panasonic  Rp.8000000";
        echo " 5. Samsung   Rp.9500000";
        echo "=====================================================";
        echo -n "Pilihan KULKAS: "
        read KULKAS
        echo -n "Jumlah : "
        read jumt
        if [ $KULKAS -eq 1 ];    then jenisKULKAS="Hitachi";
       harga=10000000;
       let totalt=jumt*harga;
       elif [ $KULKAS -eq 2 ];    then jenisKULKAS="Electrolux";
       harga=11000000;
       let totalt=jumt*harga;
       elif [ $KULKAS -eq 3 ];    then jenisKULKAS="Sharp";
       harga=90000000;
       let totalt=jumt*harga;
       elif [ $KULKAS -eq 4 ];    then jenisKULKAS="Panasonic";
       harga=8000000;
       let totalt=jumt*harga;
       elif [ $KULKAS -eq 5 ];    then jenisKULKAS="Samsung";
       harga=9500000;
       let totalt=jumt*harga;
        else
       echo "Sorry, tidak tersedia"
       exit 1
       fi
       esac
   ;;
   5)
    clear
    echo -n "Masukan nama anda                 :";
       read nama 
    echo -n "Masukan alamat anda               :";
       read alamat
    echo "(1) Surabaya  (2) Bangkalan  (3) Jombang";
    echo -n "Masukkan Kota anda                :";
       read kota
    if [ $kota -eq 1 ];
        then
        ongkir=30000
    elif [ $kota -eq 2 ];
        then
        ongkir=50000
    elif [ $kota -eq 3 ];
        then
        ongkir=60000
    else
        echo "Maaf Ongkir tidak dapat di proses"
    exit 1
    fi
    ;;
 6)
       clear
        let total=$totalb+$totals+$totalt+$ongkir

       clear;
       echo "DATA PEMBELI ALAT ELEKTRONIK";
       echo "====================================";
       echo "NAMA           : $nama";
       echo "ALAMAT         : $alamat";
       echo "ongkir         : $ongkir";
       echo "Jenis TV       : $jenisTV";
       echo "Jumlah         : $jumb";
       echo "Jenis LAPTOP   : $jenisLAPTOP";
       echo "Jumlah         : $jums";
       echo "Jenis KULKAS   : $jenisKULKAS";
       echo "Jumlah         : $jumt";
       echo "====================================";
       echo "TOTAL BAYAR : $total";
       echo "====================================";
       echo
    ;;
    7)
       exit 0
;;
*)
       echo "Sorry, tidak tersedia"
       exit 1
;;
esac
echo -n "Kembali ke menu utama (y/t) :";
read lagi;
done







