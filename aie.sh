# terminali temizle
clear

# Zenity
GUI=$(zenity --list --checklist \
	--height 800 \
	--width 1200 \
	--title="AfterInstallElementary" \
	--text "Çalıştırmak istediğiniz eylemin karşısındaki kutucuğu/ kutucukları işaretleyin.(İşlemler internet bağlantısı gerektirir.)" \
	--column=Seç \
	--column=Eylemler \
	--column=Açıklama \
	FALSE "Sistemi Güncelle" "Sistemde mevcut olan bütün paketleri günceller."  \
	FALSE "Sistemi Yükselt" "Sistemde mevcut olan bütün paketleri günceller, paket kaldırılması gerekiyorsa kaldırır ve gerekiyorsa yeni paketler kurar."  \
    FALSE "PPA Kullanımını Etkinleştir" "Güvenlik sebepleri ile Elementary OS'ta varsayılan olarak PPA pasiftir, bunu aktif hale getirir." \
	FALSE "Bellek Kullanımını Optimize Et" "Preload yazılımını kurar, bu yazılım programları kullanım sıklığınızı analiz eder ve bellek optimizasyonu sağlar." \
	FALSE "Kur: Ubuntu Restricted Extras" "Sınırlı lisanslara sahip yaygın şekilde kullanılan yazılımları kurar [mp3, avi, mpeg, TrueType, Java, Flash vb.]." \
    FALSE "Kur: Elementary Tweaks" "Elementary Tweaks sisteminizi özelleştirmeye yarayan bir araçtır." \
	FALSE "Kur: Extra Multimedia Codecs" "Gerekebilecek extra medya kodeklerini kurar." \
	FALSE "Kur: Arşiv Formatları İçin Destek" "Arşiv formatları için destekleri kurar." \
	FALSE "Kur: GDebi" "Gdebi'yi kurar.Gdebi deb uzantılı paketleri kurmaya yarayan basit ve kullanışlı bir araçtır." \
	FALSE "Kur: Google Chrome" "Google Chrome'u kurar.Google Chrome hızlı ve güvenli bir tarayıcıdır." \
	FALSE "Kur: Chromium" "Chromium'u kurar. Chromium, Google Chrome'un açık kaynaklı olan versiyonudur." \
	FALSE "Kur: Firefox" "Firefox'u kurar. Firefox ücretsiz ve açık kaynak kodlu hızlı bir web tarayıcısıdır." \
	FALSE "Kur: VLC" "VLC medya oynatıcısını kurar.VLC oldukça fazla dosya formatını destekleyen açık kaynak kodlu güçlü bir medya oynatıcısıdır." \
	FALSE "Kur: Transmission" "Bir BitTorrent istemcisi olan Transmission'ı kurar." \
	FALSE "Kur: Atom" "Atom metin editörünü kurar.Atom açık kaynak kodlu kullanımı kolay olan bir metin editörüdür." \
    FALSE "Kur: VS Code" "Microsoft tarafından geliştirilen açık kaynak kodlu güçlü bir metin editörüdür." \
	FALSE "Kur: LibreOffice" "Oldukça güçlü açık kaynak kodlu ofis yazılımı olan LibreOffice'i kurar." \
    FALSE "Kur: GIT" "Github bütünleşmesini kurar." \
    FALSE "Kur: Ruby" "Ruby yorumlayıcısını kurar." \
    FALSE "Kur: UKUU" "Ubuntu Kernel Update Utiliy aracı çekirdeğin en yeni sürüme güncellenmesini sağlar.Çekirdek güncellemeleri her zaman iyi sonuçlar getirmeyebilir.Bu sebeple aracı kullanırken dikkatli davranın." \
    FALSE "Başlangıç Uygulamalarını Göster" "Sistem ayarlarında başlangıçta çalışan uygulamaların gösterilmesini ve düzenlenmesini sağlayan bölümü görünür yapar." \
    FALSE "DVD Film Desteğini Etkinleştir" "DVD desteğini etkinleştirir." \
    FALSE "Kaldır: Epiphany Browser" "Sistemle birlikte kurulu gelen Ephiphany tarayıcısını kaldırır.Seçeneği işaretlemeden önce başka bir tarayıcının kurulu olduğundan emin olun." \
	FALSE "Bozulan Paketleri Onar" "Belirli sebeplerden dolayı hasara uğrayan paketleri onarır." \
	FALSE "Sistemi Temizle" "Artık kullanılmayan paketleri kaldırır." \
	--separator=', ');

# sistemi güncelle
#--------------------------------------------------------------------
if [[ $GUI == *"Sistemi Güncelle"* ]]
then
	clear
	echo "Sistem Güncelleniyor .."
	echo "-----------------------"
	sudo apt-get -y update
	sudo apt-get -y upgrade
fi



# sistemi yükselt
#--------------------------------------------------------------------
if [[ $GUI == *"Sistemi Yükselt"* ]]
then
	echo "Sistem Yükseltiliyor .."
	echo "-----------------------"
	sudo apt-get -y dist-upgrade
fi



# PPA etkinleştir
#--------------------------------------------------------------------
if [[ $GUI == *"PPA Kullanımını Etkinleştir"* ]]
then
	echo "PPA etkinleştiriliyor .."
	echo "-----------------------"
	sudo apt-get -y install software-properties-common
fi



# preload kur
#--------------------------------------------------------------------
if [[ $GUI == *"Bellek Kullanımını Optimize Et"* ]]
then
	clear
	echo "Preload Kuruluyor .."
	echo "--------------------"
	sudo apt-get -y install preload
fi




# ubuntu-restircted-extras paketini kur
#--------------------------------------------------------------------
if [[ $GUI == *"Kur: Ubuntu Restricted Extras"* ]]
then
	clear
	echo "Kuruluyor: Ubuntu Restricted Extras .."
	echo "--------------------------------------"
	sudo apt-get -y install ubuntu-restricted-extras
fi




# elementary-tweaks paketini kurar.
#----------------------------------------------------
if [[ $GUI == *"Kur: Elementary Tweaks"* ]]
then
	clear
	echo "Kuruluyor: Elementary Tweaks .."
	echo "-------------------"
	sudo add-apt-repository -y ppa:philip.scott/elementary-tweaks
	sudo apt-get -y update
	sudo apt-get -y install elementary-tweaks
fi





# multimedya kodeklerini kur
#--------------------------------------------------------------------
if [[ $GUI == *"Kur: Extra Multimedia Codecs"* ]]
then
	clear
	echo "Kuruluyor: Extra Multimedia Codecs .."
	echo "-------------------------------------"
	sudo apt-get -y install libavcodec-extra-53 ffmpeg flashplugin-installer gsfonts-x11 libxine1-ffmpeg gxine mencoder mpeg2dec vorbis-tools id3v2 mpg321 mpg123 libflac++6 ffmpeg totem-mozilla icedax tagtool easytag id3tool lame nautilus-script-audio-convert libmad0 libjpeg-progs flac faac faad sox ffmpeg2theora libmpeg2-4 uudeview flac libmpeg3-1 mpeg3-utils mpegdemux ttf-mscorefonts-installer 
fi






# arşiv formatlarını kur
#--------------------------------------------------------------------
if [[ $GUI == *"Kur: Arşiv Formatları İçin Destek"* ]]
then
	clear
	echo "Kuruluyor: Arşiv Formatları İçin Destek .."
	echo "-------------------------------------------"
	sudo apt-get -y install zip unzip rar unrar cabextract lzip lunzip arj unace p7zip-rar p7zip sharutils uudeview mpack lha arj cabextract file-roller
fi




# gdebi paketini kur
#--------------------------------------------------------------------
if [[ $GUI == *"Kur: GDebi"* ]]
then
	clear
	echo "Kuruluyor: GDebi .."
	echo "---------------------"
	sudo apt-get -y install gdebi
fi





# google-chrome-stable paketini kur
#--------------------------------------------

if [[ $GUI == *"Kur: Google Chrome"* ]]
then
	clear
	echo "Kuruluyor: Google Chrome .."
	echo "---------------------------"
	if [[ $(uname -m) == "i686" ]]
	then
		wget -O /tmp/google-chrome-stable_current_i386.deb https://dl.google.com/linux/direct/google-chrome-stable_current_i386.deb
		sudo dpkg -i /tmp/google-chrome-stable_current_i386.deb
	elif [[ $(uname -m) == "x86_64" ]]
	then
		wget -O /tmp/google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
		sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb
	fi
fi



# chromium-browser paketini kur
#------------------------------------------------
if [[ $GUI == *"Kur: Chromium"* ]]
then
	clear
	echo "Kuruluyor: Chromium .."
	echo "-----------------------"
	sudo apt-get -y install chromium-browser
fi




# firefox paketini kur
#-------------------------------------------------
if [[ $GUI == *"Kur: Firefox"* ]]
then
	clear
	echo "Kuruluyor: Firefox .."
	echo "-----------------------"
	sudo apt-get -y install firefox
fi






# vlc paketini kur
#---------------------------------------------------
if [[ $GUI == *"Kur: VLC"* ]]
then
	clear
	echo "Kuruluyor: VLC .."
	echo "------------------"
	sudo apt-get -y install vlc
fi





# transmission paketini kur
#---------------------------------------------------
if [[ $GUI == *"Kur: Transmission"* ]]
then
	clear
	echo "Kuruluyor: Transmission .."
	echo "---------------------------"
	sudo apt-get -y install transmission
fi



# atom editörünü kur
#----------------------------------------------------
if [[ $GUI == *"Kur: Atom"* ]]
then
	clear
	echo "Kuruluyor: Atom .."
	echo "-------------------"
	sudo add-apt-repository -y ppa:webupd8team/atom
	sudo apt-get -y update
	sudo apt-get -y install atom
fi



# VS code editörünü kur
#----------------------------------------------------
if [[ $GUI == *"Kur: VS Code"* ]]
then
	clear
	echo "Kuruluyor: VS Code .."
	echo "-------------------"
	curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
    sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
    sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
	sudo apt-get update
    sudo apt-get -y install code
fi





# libreoffice i kur
#----------------------------------------------------
if [[ $GUI == *"Kur: LibreOffice"* ]]
then
	clear
	echo "Kuruluyor: LibreOffice .."
	echo "---------------------------"
	sudo apt-get -y install libreoffice
fi



# git paketini kur
#----------------------------------------------------
if [[ $GUI == *"Kur: GIT"* ]]
then
	clear
	echo "Kuruluyor: GIT.."
	echo "---------------------------"
	sudo add-apt-repository ppa:git-core/ppa
    sudo apt-get update
    sudo apt-get -y install git
fi


# ruby'i kur
#----------------------------------------------------
if [[ $GUI == *"Kur: Ruby"* ]]
then
	clear
	echo "Kuruluyor: Ruby .."
	echo "---------------------------"
	sudo apt-get -y install ruby
fi




# Ubuntu kernel update utility araını kurar
#----------------------------------------------------
if [[ $GUI == *"Kur: UKUU"* ]]
then
    zenity --info --text "Şimdi UKUU aracı kurulacak, araç kurulduktan sonra onu kullanırken dikkatli olun.Çekirdek güncellemeleri her zaman iyi sonuçlar getirmeyebilir."
	clear
	echo "Kuruluyor: Ubuntu Kernel Update Utility .."
	echo "---------------------------"
	sudo add-apt-repository -y ppa:teejee2008/ppa
    sudo apt-get update
    sudo apt-get -y install ukuu
fi




# başlangıç uygulamalarını görünür yap
#----------------------------------------------------
if [[ $GUI == *"Başlangıç Uygulamalarını Göster"* ]]
then
	clear
	echo "Başlangıç Uygulamalarını Göster: Aktif .."
	echo "---------------------------"
	sudo sed -i 's/NoDisplay=true/NoDisplay=false/g' /etc/xdg/autostart/*.desktop
fi




# DVD desteğini etkinleştir.
#----------------------------------------------------
if [[ $GUI == *"DVD Film Desteğini Etkinleştir"* ]]
then
	clear
	echo "DVD Desteği Etkinleştiriliyor .."
	echo "--------------------------------"
	sudo apt-get -y install libdvdread4
    sudo /usr/share/doc/libdvdread4/install-css.sh
  
fi




# epiphany-browser paketini kaldırır.
#----------------------------------------------------
if [[ $GUI == *"Kaldır: Epiphany Browser"* ]]
then
	clear
	echo "Kuruluyor: LibreOffice .."
	echo "---------------------------"
	sudo apt-get -y install libreoffice
fi


# bozuk paketleri onar
if [[ $GUI == *"Bozulan Paketleri Onar"* ]]
then
	clear
	echo "Bozulmuş paketler onarılıyor .."
	echo "--------------------------------"
	sudo apt-get -y -f install
fi

# sistemi temizle
if [[ $GUI == *"Sistemi Temizle"* ]]
then
	clear
	echo "Temizleniyor .."
	echo "------------------------------"
	sudo apt-get -y autoremove
	sudo apt-get -y autoclean
fi

cevap=$(zenity --question --text "İşlemler tamamlandı.Bilgisayar yeniden başlatılsın mı?" ; echo $?)
if [[ $cevap == 0 ]]
then
    sudo reboot
fi
