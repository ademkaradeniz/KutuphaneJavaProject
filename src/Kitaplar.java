public class Kitaplar extends BaseKitaplar {

    private String BarkodNo;
    private String KitapAdi;
    private String Yazar;
    private String Yayinevi;
    private String Tur;
    private String Sayfa;

    public Kitaplar(String barkodNo, String kitapAdi, String yazar, String yayinevi,
            String tur, String sayfa) {
        this.BarkodNo = barkodNo;
        this.KitapAdi = kitapAdi;
        this.Yazar = yazar;
        this.Yayinevi = yayinevi;
        this.Tur = tur;
        this.Sayfa = sayfa;
    }

    @Override
    public String getKitapAdi() {return KitapAdi;}
    public void setKitapAdi(String kitapAdi) {this.KitapAdi = kitapAdi;}

    @Override
    public String getBarkodNo() {return BarkodNo;}
    public void setBarkodNo(String barkodNo) {this.BarkodNo = barkodNo;}

    @Override
    public String getYazar() {return Yazar;}
    public void setYazar(String yazar) {this.Yazar = yazar;}

    @Override
    public String getYayinevi() {return Yayinevi;}
    public void setYayinevi(String yayinevi) {this.Yayinevi = yayinevi;}

    @Override
    public String getTur() {return Yayinevi;}
    public void setTur(String tur) {this.Tur = tur;}

    @Override
    public String getSayfa() {return Sayfa;}
    public void setSayfa(String sayfa) {this.Sayfa = sayfa;}

}




