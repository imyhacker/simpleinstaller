#!/bin/bash
clear;
echo "
.:Simple Installer:.
Crafted By Arikun - IndoSec

More Information On My Github
_____________________________";
echo "
1. Install On Distro
2. Discalimer
";
read -p ">> " bingung

if [ $bingung = "1" ]; then
clear

clear;
echo "
.:Simple Installer:.
Crafted By Arikun - IndoSec

More Information On My Github
_____________________________";
echo "
1. Ubuntu
2. Debian
";
read -p "Choose Distro >> " distro;

if [ $distro = "1" ]; then
	echo "
	App For WebServer Ubuntu
	1. Bind9
	2. Apache2
	3. PHP
	4. Mysql Server 
	5. Mysql Client
	6. PHPMYADMIN
	7. POSTFIX
	8. SQUIRELMAIL
	";
	read -p "Continue To Install ? (y/n) " con1
	if [ $con1 = "y" ] || [ $con1 = "Y" ] ; then
		apt-get update
		apt-get upgrade
		apt-get install -y bind9
		apt-get install apache2
		apt-get install php php-mysql libapache2-mod-php php-cli php-cgi php-gd mysql-server mysql-client zip -y
		apt-get install mysql-server
		apt-get install mysql-client
		apt-get install phpmyadmin
		apt-get install postfix
		apt-get install squirrelmail squirrelmail-decode

		service apache2 restart
		clear
		echo "Installasi Telah Berhasil, Coba Cek Kembali Apakah Sudah Terinstall Semua.";
	elif [ $con1 = "n" ] || [ $con1 = "N" ]; then
		clear
		echo "Program Stopped !";
	fi


elif [ $distro = "2" ]; then
	echo "
	App For WebServer Debian
	1. Bind9
	2. Apache2
	3. PHP
	4. Mysql Server 
	5. Mysql Client
	6. PHPMYADMIN
	7. POSTFIX
	8. SQUIRELMAIL
	";
	read -p "Continue To Install ? (y/n) " con2
	if [ $con2 == "y" ][ $con2 == "Y" ] ; then
		apt-get update
		apt-get upgrade
		apt-get install -y bind9
		apt-get install apache2
		apt-get install php php-mysql libapache2-mod-php php-cli php-cgi php-gd mysql-server mysql-client zip -y
		apt-get install mysql-server
		apt-get install mysql-client
		apt-get install phpmyadmin
		apt-get install postfix
		apt-get install squirrelmail squirrelmail-decode

		service apache2 restart
		clear
		echo "Installasi Telah Selesai, Coba Cek Kembali Apakah Sudah Terinstall Semua.";
	elif [ $con2 = "n" ] || [ $con2 = "N" ]; then
		clear
		echo "Program Stopped !";
	fi

else
	clear 
	echo "Oops.. Program Error..";
	echo "Found Error ? Check My Github And Message Me In Telegram. :) ";
fi
elif [ $bingung = "2" ]; then

echo "
Discalimer:

Program Ini Adalah Program Beta Yang Masih Perlu Dikembangkan,
Untuk Cara Menggunakkannya Kamu Harus Terhubung Ke Internet.


Regards, Arikun@indsc
";
fi