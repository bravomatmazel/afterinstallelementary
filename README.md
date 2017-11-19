# AIE

![ss](https://raw.githubusercontent.com/bravomatmazel/afterinstallelementary/master/ss.png)

Elementary OS kurulumundan sonra yapılması gerekenler konusunda yardımcı olan küçük bir script.
Script çalıştırıldığında bir arayüz açılır, bu arayüz üzerinde çeşitli kurulum eylemlerini içeren işaretleme kutuları bulunur.
İstenilen eylem yada eylemler seçilerek betik yürütülür.Seçilen işlem yada işlemler bittiğinde bilgisayarı yeniden başlatmak isteyip istemediğininizi sorar.Eğer hiçbir işlem yapmadıysanız yada sadece uygulama kurulumları gerçekleştirdiyseniz yeniden başlatmanıza gerek yoktur.

# Script Nasıl Çalıştırılır?

1) Yukarıda yer alan "Clone or Download" butonuna tıklayıp "Download ZIP" seçeneğine tıklayın.
2) ZIP dosyası bilgisayarınıza indikten sonra dosyaları istediğiniz yere çıkarın.
3) Dosyaların çıkarılmış halini barındıran dosyanın içinde bir terminal açın.
4) Şu komutu çalıştırın:
```bash
chmod +x aie.sh
```

5) Sonrasında şu komutu çalıştırarak gerekli işlemleri yapın:
```bash
./aie.sh
```

# Tek bir komutla scripti çalıştırma:

Bir terminal açın ve aşağıdaki kodu çalıştırın:
```bash
wget -O /tmp/aie.sh --no-check-certificate https://raw.githubusercontent.com/bravomatmazel/afterinstallelementary/master/aie.sh && chmod +x /tmp/aie.sh && /tmp/aie.sh
```
