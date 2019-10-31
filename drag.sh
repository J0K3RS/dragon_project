#!/bin/bash
clear
drag(){
echo "                 ___====-_  _-====___ "
sleep 0.03
echo "           _--^^^#####//      \\#####^^^--_ "
sleep 0.03
echo "        _-^##########//(    ) \\##########^-_ "
sleep 0.03
echo "       -############/  |\^^/|  \\############- "
sleep 0.03
echo "     _/############//  (@::@)   \\############\_ "
sleep 0.03
echo "    /#############((    \\//     ))#############\ "
sleep 0.03
echo "   -###############\\    (oo)    //###############- "
sleep 0.03
echo "  -#################\\  / VV \  //#################- "
sleep 0.03
echo " -###################\\/      \//###################- "
sleep 0.03
echo "_#/|##########/\######(   /\   )######/\##########|\#_ "
sleep 0.03
echo "|/ |#/\#/\#/\/  \#/\##\  |  |  /##/\#/  \/\#/\#/\#| \| "
sleep 0.03
echo "   |/  V  V      V  \#\| |  | |/#/  V      V  V  \|   "
sleep 0.03
echo "                     / | |  | | \   "              
sleep 0.03
echo "                    (  | |  | |  ) "
sleep 0.03
echo "                   __\ | |  | | /__ "
sleep 0.03
echo "                  (vvv(VVV)(VVV)vvv) "
sleep 0.03
echo "========================================================="
sleep 0.2
echo "===                 Dragon Project                    ==="
sleep 0.05
echo "========================================================="
}
get_chaos_angel="http://zlucifer.com/api/hackbae.php?request=chaos"
mulai(){
      echo "Gunakan Dragon Project lagi?"
      echo "y/n?"
      read lagi
      if [ $lagi = "y" ];then
          clear
          drag
          start_chaos_angel
      else
          echo "Terimakasih sudah menggunakan Dragon Project"
          exit
      fi
}
start_chaos_angel(){
      echo "[1] Buat File"
      echo "[2] Cek Hasil"
      echo "[3] Close Dragon Project"
      echo "1/2/3?"
      read request
      if [ $request = "1" ]; then
          echo "Masukan email kamu"
          read email
          echo "Masukan nama file"
          read create
          echo "Apakah Email $email dan Nama file $create sudah benar?"
          echo "y/n?"
          read konfirmasi
          if [ $konfirmasi = "y" ]; then
              load
              clear
              drag
              build=`curl -s $get_chaos_angel/build.php?create=$create"&email="$email`
              echo -e $build
          else
              echo "Kesalahan"
          fi
          mulai
      elif [ $request = "2" ]; then
          clear
          drag
          echo "Buat file baru Google Drive"
          echo "Masukan email kamu"
          read email
          echo "Apakah Email $email sudah benar?"
          echo "y/n?"
          read konfirmasi
          if [ $konfirmasi = "y" ]; then
              load
              clear
              drag
              search=`curl -s $get_chaos_angel/search.php?email=$email`
              echo -e $search
          else
              echo "Kesalahan"
          fi
          mulai
      elif [ $request = "3" ];then
          echo "Terimakasih sudah menggunakan Dragon Project"
          exit
      else
          echo "Kesalahan"
          mulai
      fi
}
load(){
      echo -e "\n"
      bar=" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
      barlength=${#bar}
      i=0
      while((i<100)); do
          n=$((i*barlength / 100))
          printf "\e[00;32m\r[%-${barlength}s]\e[00m" "${bar:0:n}"
          ((i += RANDOM%5+2))
          sleep 0.2
      done
}
#start
clear
echo "PERINGATAN : KESALAHAN ATAU KEJAHATAN ADALAH TANGGUNG JAWAB DARI PEMAKAI"
echo "GUNAKAN TOOLS UNTUK KEBAIKAN JANGAN DISALAH GUNAKAN :)"
echo "Lanjutkan?"
echo "y/n?"
read lanjutkan
if [ $lanjutkan = "y" ];then
    clear
    echo "Loading.."
    load
    clear
    drag
    echo Selamat datang kak, Siapa nick kaka? #tulisan keluar
    read nick #membaca yang ditulis
    clear
    drag
    echo "Dragon Project adalah tools untuk"
    echo "peretasan google account via"
    echo "Google Drive"
    echo
    echo Selamat datang $nick ":)"
    echo
    start_chaos_angel
else
    echo "Powered by JerkKids"
fi

