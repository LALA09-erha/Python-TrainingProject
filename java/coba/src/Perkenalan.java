
public class Perkenalan {
    String nama;
    int umur;
    String hobi;
    String alamat;
    String warna_favorit;


    void setNama(String nama_orang){
        this.nama = nama_orang;
        System.out.println("Nama saya adalah " + nama);
    }

    void setUmur(int umur_orang){
        this.umur = umur_orang;
        System.out.println("Umur "+nama+" adalah " +umur);
    }

    void setHobi(String hobi_orang){
        this.hobi = hobi_orang;
        System.out.println("Hobi "+nama+" adalah "+hobi);
    }
    void setAlamat(String alamat_orang){
        this.alamat = alamat_orang;
        System.out.println("Alamat "+nama+" adalah "+alamat);
    }
    void warna_favorite(String warna_favorite){
        this.warna_favorit = warna_favorite;
        System.out.println("Warna favorit "+nama+" adalah "+warna_favorit);
    }
}