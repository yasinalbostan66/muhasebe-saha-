#!/bin/bash
# Bulunduğu klasöre geçiş yap
cd "$(dirname "$0")"

# Ekranı temizle ve başlık yazdır
clear
echo -e "\033[1;34m=====================================================\033[0m"
echo -e "\033[1;36m       MUHASEBE SAHA - GITHUB GÜNCELLEME MOTORU      \033[0m"
echo -e "\033[1;34m=====================================================\033[0m"
echo ""

# 1. Aşama: Git Kontrolü
echo -e "\033[1;33m[1/3] Değişiklikler kontrol ediliyor...\033[0m"
git status -s
echo ""

# 2. Aşama: Commit Ekleme
echo -e "\033[1;33m[2/3] Dosyalar paketleniyor ve kaydediliyor...\033[0m"
git add .
git commit -m "otomatik guncelleme: $(date '+%d.%m.%Y %H:%M:%S')"
echo ""

# 3. Aşama: GitHub'a Gönderme
echo -e "\033[1;33m[3/3] Kodlar GitHub'a yükleniyor (Push)...\033[0m"
echo -e "\033[0;36mEğer şifre/kullanıcı adı istenirse bilgilerinizi giriniz.\033[0m"
echo ""
git push origin main

# Tamamlanma Durumu
if [ $? -eq 0 ]; then
    echo ""
    echo -e "\033[1;32m=====================================================\033[0m"
    echo -e "\033[1;32m   BAŞARILI! Kodlarınız GitHub'a Gönderildi!        \033[0m"
    echo -e "\033[1;32m   Telefonunuzdaki sayfayı yenileyip görebilirsiniz. \033[0m"
    echo -e "\033[1;32m=====================================================\033[0m"
else
    echo ""
    echo -e "\033[1;31m=====================================================\033[0m"
    echo -e "\033[1;31m   HATA! Yükleme sırasında bir sorun oluştu.        \033[0m"
    echo -e "\033[1;31m   Lütfen GitHub kullanıcı adı/erişim anahtarınızı   \033[0m"
    echo -e "\033[1;31m   veya internet bağlantınızı kontrol ediniz.        \033[0m"
    echo -e "\033[1;31m=====================================================\033[0m"
fi

echo ""
read -p "Kapatmak için ENTER tuşuna basın..."
