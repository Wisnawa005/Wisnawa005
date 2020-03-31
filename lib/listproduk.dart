import 'package:flutter/material.dart';
import './detail_produk.dart';

class Listproduk extends StatefulWidget {
  @override
  _ListprodukState createState() => _ListprodukState();
}

class _ListprodukState extends State<Listproduk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Produk "),
      ),
      body:
      ListView(
        shrinkWrap: true,
        //pading
        padding: const EdgeInsets.fromLTRB(2.0, 10, 0, 10.0),
        //anggota dari list berupa widget children
        children: <Widget>[
          //GestureDetector untuk menangani gesture pengguna
          new GestureDetector(
            //listener berupa klik 1x
            onTap: (){
              //navigator.push  untuk berpindah halaman
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  name: "Love Live School Idol Project",
                  description: "Anime ini bercerita tentang Honoka Kousaka, seorang siswi yang sangat mencintai sekolahnya, SMA Otonokizaka. Ketika sekolahnya direncanakan akan ditutup dikarenakan jumlah pendaftarnya yang sedikit, ia menjadi terdorong untuk menyelamatkannya.Melihat bahwa grup idola sedang populer, Ia dan teman-temannya memulai grup idola sekolah bernama µ’s (baca : muse) dengan harapan agar dapat menarik pendaftar baru di sekolahnya.Mereka berusaha membuat grup idolanya menjadi lebih populer dengan berpartisipasi pada ‘Love Live’, sebuah ajang kompetisi untuk mencari grup idola terbaik.",
                  price: 1000,
                  image: "gambar3.jpg",
                  star: 3,
                ),
                ));
            },
            child: ProductBox(
              name: "Love Live School Idol Project",
              description: "Anime ini bercerita tentang Honoka Kousaka, seorang siswi yang sangat mencintai sekolahnya, SMA Otonokizaka. Ketika sekolahnya direncanakan akan ditutup dikarenakan jumlah pendaftarnya yang sedikit, ia menjadi terdorong untuk menyelamatkannya.",
              price: 1000,
              image: "pic1.png",
              star: 3
            ),
          ),

          new GestureDetector(
            onTap: (){
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                    name: "Sakurasou no Pet na Kanojo",
                    description: "Sakurasou no Pet na Kanojo adalah anime komedi romantis yang bercerita mengenai para penghuni asrama Sakurasou. Cerita akan berfokus pada Sorata Kanda, seorang siswa biasa yang memiliki kebiasaan memungut kucing liar, padahal asrama tempatnya tinggal melarang penghuninya membawa masuk binatang.",
                    price: 1000,
                    image: "gambar2.jpg",
                    star: 3
                ),
              ));
            },
            child: ProductBox(
              name: "Sakurasou no Pet na Kanojo",
              description: "Sakurasou no Pet na Kanojo adalah anime komedi romantis yang bercerita mengenai para penghuni asrama Sakurasou. Cerita akan berfokus pada Sorata Kanda, seorang siswa biasa yang memiliki kebiasaan memungut kucing liar, padahal asrama tempatnya tinggal melarang penghuninya membawa masuk binatang.",
              price: 1000,
              image: "pic2.png",
              star: 3
           ),
          ),
          
          new GestureDetector(
            onTap: (){
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                    name: "Sword Art Online",
                    description: "Pada tahun 2022, permainan Virtual Reality Massively Multiplayer Role-Playing online (VRMMORPG), Sword Art Online (SAO), diluncurkan. Dengan Nerve Gear, helm virtual reality yang merangsang panca indera pengguna melalui otak mereka, pemain dapat merasakan dan mengontrol karakter dalam game mereka dengan pikiran mereka. ",
                    price: 1000,
                    image: "gambar4.jpg",
                    star: 3
                ),
              ));
            },
            child: ProductBox(
              name: "Sword Art Online",
              description: "Pada tahun 2022, permainan Virtual Reality Massively Multiplayer Role-Playing online (VRMMORPG), Sword Art Online (SAO), diluncurkan. Dengan Nerve Gear, helm virtual reality yang merangsang panca indera pengguna melalui otak mereka, pemain dapat merasakan dan mengontrol karakter dalam game mereka dengan pikiran mereka. ",
              price: 1000,
              image: "pic3.png",
              star: 3
            ),
          ),
          
          new GestureDetector(
            onTap: (){
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                    name: "Chuunibyou demo Koi ga Shitai!",
                    description: "Rikka menjadi lebih melekat pada Yūta. Meskipun Yūta menganggap delusinya mengganggu dan memalukan, ia tetap menerima Rikka. Dia membantu Rikka dalam sejumlah hal, termasuk mendirikan dan mempertahankan klub dan memberikan bimbingan belajar.",
                    price: 1000,
                    image: "gambar5.jpg",
                    star: 3
                ),
              ));
            },
            child: ProductBox(
              name: "Chuunibyou demo Koi ga Shitai!",
              description: "Rikka menjadi lebih melekat pada Yūta. Meskipun Yūta menganggap delusinya mengganggu dan memalukan, ia tetap menerima Rikka. Dia membantu Rikka dalam sejumlah hal, termasuk mendirikan dan mempertahankan klub dan memberikan bimbingan belajar.",
              price: 1000,
              image: "pic4.png",
              star: 3,
            ),
          ),
          
          new GestureDetector(
            onTap: (){
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                    name: "Tokyo Ghoul",
                    description: "Kaneki yang menjadi setengah manusia dan setengah Ghoul, monster pemak daging manusia untuk hidup tinggal di rumah kopi yang disebut Anteiku dengan sesama Ghoul seperti Touka (Maika YAMAMOTO) menyembunyikan identitas mereka dari unit polisi CCG (Commission of Counter Ghoul).",
                    price: 1000,
                    image: "gambar1.jpg",
                    star: 3
                ),
              ));
            },
            child: ProductBox(
              name: "Tokyo Ghoul",
              description: "Kaneki yang menjadi setengah manusia dan setengah Ghoul, monster pemak daging manusia untuk hidup tinggal di rumah kopi yang disebut Anteiku dengan sesama Ghoul seperti Touka (Maika YAMAMOTO) menyembunyikan identitas mereka dari unit polisi CCG (Commission of Counter Ghoul).",
              price: 1000,
              image: "pic5.png",
              star: 3
            ),
          ),
        ],
      ),
    );
  }
}

// menggunakan widgett StatelessWidget
class ProductBox extends StatelessWidget{
  
   //deklaararsi variabel yang diterima dari MyHomePage
  ProductBox({Key key, this.name, this.description, this.image, this.price, this.star}): super(key:key);

  //menampung variabel yang diterima untuk digunakan pada class ini
  final String name;
  final String description;
  final int price;
  final String image;
  final int star;

  Widget build(BuildContext context) {
    //menggunakan Wiidget container
    return Container(
      //padding
      padding: EdgeInsets.all(2),

      //menggunakan widget card
      child: Card(
        //membuat tampilan horizontal antaar image dan deskripsi
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //children digunakan untuk menampung banyak widget
          children: <Widget>[
            Image.asset("assets/appimages/" + image, width: 150,),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                //membuat tampilan secara vertiikal
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  //ini isi tatmpilan vertikal tersebut
                  children: <Widget>[
                    //menampilakan variabel menggunakan widget text
                    Text(this.name, style: TextStyle(fontWeight: FontWeight.bold,)),
                    Text(this.description),
                    Text(
                      "Price: " + this.price.toString(),
                      style: TextStyle(color: Colors.red),
                    ),
                    //menampilkan widget icon dibungkus dengan row
                    Row(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(Icons.star, size: 10, color: Colors.deepOrange,),
                            Icon(Icons.star, size: 10, color: Colors.deepOrange,),
                            Icon(Icons.star, size: 10, color: Colors.deepOrange,),
                            Icon(Icons.star, size: 10, color: Colors.orange),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ))
          ],
        ),
      ),
    );
  }

}
