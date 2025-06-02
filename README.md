# ServerFinder

Debian tabanlı sistemlerde çalışan Spigot ve Paper sunucularınızı hızlıca başlatmanızı, yönetmenizi ve ölçeklendirmenizi sağlayan güçlü bir komut satırı aracıdır.

En güncel Paper veya Spigot sürümlerini otomatik olarak indirip kurabilir, başlatma parametrelerini ayarlayabilir, yaygın performans iyileştirmelerini uygulayabilir ve çoklu sunucular arasında kolayca geçiş yapabilirsiniz.

Küçük oyuncu topluluklarından büyük test ortamlarına kadar farklı kullanım senaryolarında hızlı ve zahmetsiz bir kurulum süreci sağlar. Linux üzerinde Minecraft sunucularını scriptlerle veya sistemli bir şekilde yönetmek isteyenler için idealdir.
## Installation

Bu CLI aracını Debian tabanlı sisteminize yüklemek için aşağıdakileri çalıştırın:


```bash
git clone https://github.com/bdrtr/ServerFinder.git
cd ServerFinder
sudo ./install.sh
```
install dosyası, gerekli bağımlılıkları yükler ve komut satırı aracını sistem yoluna kopyalayarak çalıştırılabilir hale getirir.

('.sh' dosyalarını sistem kabuğu gerektirdiği ve izin verdiği şekilde yükleyin.)

```bash
allay
```
Takma ismi sistem yoluna eklenmiştir, heryerden çağrılabilir.

bu program gum araç takımına ihtiyaç duyar kurulum `install.sh` içerisinde mevcuttur ancak hata anında manuel kurulum gerekebilir.

[gum github sayfası](https://github.com/charmbracelet/gum) ziyaret edebilirsiniz.

tüm dosyalar `/usr/local/bin/ServerFinder/` altına kurulacaktır ve `allay` takma adı bu dosyaların içindeki `main.sh` dosyasına bir sembolik bağlantı bırakacaktır.


![Logo](https://private-user-images.githubusercontent.com/69633060/449961737-1e87854a-7954-4614-8dd2-bee35b1a0a89.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NDg4Mzk3NjcsIm5iZiI6MTc0ODgzOTQ2NywicGF0aCI6Ii82OTYzMzA2MC80NDk5NjE3MzctMWU4Nzg1NGEtNzk1NC00NjE0LThkZDItYmVlMzViMWEwYTg5LnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNTA2MDIlMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjUwNjAyVDA0NDQyN1omWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTgwNjg0NjA1YzNhMGE1ZjllNjJiNmUwYmIyNDM1ZWM5MzRjOTEzY2FlY2VkZjljOWYzN2E2OWY1NDQ0ZDQ5N2ImWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0In0._jAtcTED9KMKjQvzgVj6q-wnY9DdM8oeWVyQJg1Wfv0)


## Usage/Examples
`allay` komutunu çalıştırın sistemdeki çalışan jar dosyaları listelencektir isterseniz elle de ekleme yapabilirsiniz. Server ayarlarını yaptıktan ve eula'yı imzaladıktan sonra sunucuyu default ayarlarda başlatabilirsiniz bunun için `quick-start`'ı takip edin.
## Authors

- [@bdrtr](https://www.github.com/bdrtr)

