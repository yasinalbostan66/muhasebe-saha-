#!/bin/bash
# Bulunduğu klasöre geçiş yap
cd "$(dirname "$0")"

clear
echo -e "\033[1;34m===================================================\033[0m"
echo -e "\033[1;36m         MUHASEBE SAHA - UYGULAMA BAŞLATICI        \033[0m"
echo -e "\033[1;34m===================================================\033[0m"
echo ""

# Port seç
PORT=8787

# Mevcut bir sunucu varsa kapat
lsof -ti:$PORT | xargs kill -9 2>/dev/null

echo -e "\033[1;33m⚙  Yerel sunucu başlatılıyor (port $PORT)...\033[0m"

# Python 3 kontrolü
if command -v python3 &>/dev/null; then
    python3 -m http.server $PORT --bind 127.0.0.1 &>/dev/null &
    SERVER_PID=$!
else
    echo -e "\033[1;31m HATA: Python 3 bulunamadı!\033[0m"
    read -p "Kapatmak için ENTER tuşuna basın..."
    exit 1
fi

sleep 1

# Tarayıcıda aç
URL="http://127.0.0.1:$PORT/index.html"
echo -e "\033[1;32m✓  Sunucu başlatıldı: $URL\033[0m"
echo ""
echo -e "\033[1;36m🌐  Tarayıcı açılıyor...\033[0m"
open "$URL"

echo ""
echo -e "\033[1;34m===================================================\033[0m"
echo -e "\033[0;37m  Uygulamayı kullandıktan sonra bu pencereyi      \033[0m"
echo -e "\033[0;37m  kapatabilirsiniz. Sunucu otomatik kapanacaktır. \033[0m"
echo -e "\033[1;34m===================================================\033[0m"
echo ""
echo -e "\033[1;33mKapatmak için ENTER'a basın...\033[0m"
read

# Sunucuyu kapat
kill $SERVER_PID 2>/dev/null
echo -e "\033[1;32m✓  Sunucu kapatıldı.\033[0m"
