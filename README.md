# 📱 Muhasebe Saha - Fiş Tarama & Analiz Sistemi

Saha çalışanlarının fiş ve faturalarını akıllı telefon kameraları veya görsel yükleme aracılığıyla fotoğraflayarak anında dijitalleştirmesini, yapay zeka (OCR) ile çözümlemesini ve muhasebe sistemlerine aktarmasını sağlayan **premium, etkileşimli ve mobil öncelikli bir web uygulamasıdır.**

Bu proje, Flutter prototip kodunun modern web standartlarına (HTML5, Vanilla CSS3, ES6+ JavaScript) dönüştürülmesiyle oluşturulmuştur.

---

## ✨ Öne Çıkan Özellikler

*   **🌗 Açık / Koyu Tema Desteği:** Sağ üst köşedeki buton yardımıyla pürüzsüz geçiş. Tercihiniz otomatik olarak tarayıcı hafızasında saklanır.
*   **📊 Harcama Analiz Grafiği:** Fiş verilerinize göre gerçek zamanlı güncellenen ve harcama kategorilerini (Akaryakıt, Gıda, Kafe, Diğer) yüzdesel gösteren dinamik SVG Donut Grafiği.
*   **📄 Detaylı Fiş Çekmecesi:** Fiş kayıtlarına tıklandığında açılan, matrah ve KDV hesaplamaları sunan, tırtıklı kağıt faturası simülasyonlu pürüzsüz alt çekmece (Bottom Sheet) ve kayıt silme desteği.
*   **💾 Kalıcı Depolama (LocalStorage):** Sayfayı kapatsanız veya yenileseniz bile eklediğiniz tüm fiş kayıtlarının tarayıcı hafızasında güvenle saklanması.
*   **📷 Akıllı Kamera & Vizör:** Cihaz kamerasını (WebRTC) kullanarak vizör kılavuz çizgileri ve yeşil belge sınırı algılama animasyonu eşliğinde çekim.
*   **💡 Gelişmiş Kamera Simülatörü:** Masaüstünde veya kamerası kapalı cihazlarda sürükle-bırak görsel yükleme ve otomatik **yapay zeka fişi çizim motoru** desteği.
*   **🎵 Ses Efektleri:** Web Audio API (AudioContext) ile sentezlenmiş deklanşör ses efekti.

---

## 🚀 Telefon Uygulaması Olarak Nasıl Açılır? (GitHub Pages)

Bu projeyi telefonunuzda gerçek bir uygulama gibi açıp kullanmak için ücretsiz **GitHub Pages** altyapısını kullanabilirsiniz:

### 1. Adım: GitHub Deposu (Repository) Oluşturun
1. [GitHub](https://github.com/) hesabınıza giriş yapın.
2. Sağ üstten **New** (Yeni) butonuna basarak yeni bir depo oluşturun.
3. Depo adını girin (Örn: `muhasebe-saha`) ve depoyu **Public** (Açık) olarak ayarlayın.
4. **Create repository** butonuna basın.

### 2. Adım: Kodları GitHub'a Yükleyin
Klasörünüzde git komutları hazır durumdadır. Terminalinizden aşağıdaki komutları sırasıyla çalıştırarak kodlarınızı deponuza gönderin:
```bash
git remote add origin https://github.com/<kullanici-adiniz>/<depo-adiniz>.git
git branch -M main
git push -u origin main
```

### 3. Adım: GitHub Pages'i Aktifleştirin
1. GitHub'da oluşturduğunuz deponun **Settings** (Ayarlar) sekmesine gidin.
2. Sol menüden **Pages** (Sayfalar) bölümüne tıklayın.
3. **Build and deployment** altında yer alan **Branch** seçeneğini `main` (veya `master`) ve klasörü `/ (root)` olarak ayarlayıp **Save** (Kaydet) butonuna basın.
4. Yaklaşık 1 dakika içerisinde ekranın üst kısmında web sitenizin adresi belirecektir:
   `https://<kullanici-adiniz>.github.io/<depo-adiniz>/`

### 4. Adım: Telefona "Uygulama" Olarak Ekleme
1. Telefonunuzun tarayıcısından (iOS için **Safari**, Android için **Chrome**) yukarıdaki GitHub Pages adresinizi açın.
2. Tarayıcının paylaş/seçenekler menüsünden **"Ana Ekrana Ekle"** (Add to Home Screen) butonuna basın.
3. Artık ana ekranınızda bir uygulama ikonu belirecek ve tıkladığınızda tam ekran olarak **bir mobil uygulama deneyimiyle** çalışacaktır!
