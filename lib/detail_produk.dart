import 'package:flutter/material.dart';

//class detail produk
class DetailProduk extends StatefulWidget{
  //untuk menumpung parameter detail produk yang dikirim dari list produk
  DetailProduk({Key key, this.name, this.description, this.price, this.image, this.star}) : super(key:key);
  //Variabel yang digunakan untuk menampung parameter tersebut
  final String name;
  final String description;
  final int price;
  final String image;
  final int star;
  @override

  //karena menggunakan StatefulWidget maka diperlukan state detail produk 
  _DetailProdukState createState() => _DetailProdukState();
}

//class state detail produk
class _DetailProdukState extends State<DetailProduk> {
  //inisiasi variable star
  final chidrenstar = <Widget>[];
  @override
  //membuat widget
  Widget build(BuildContext context){
    //membuat star secara dinamis sesuai jumlah star yang dikirim dari list produk
    for (var i = 0; i < widget.star; i++){
      //membuat star ke variabel childrenstar
      chidrenstar.add(new Icon(
        Icons.star,
        size: 15,
        color: Colors.yellow,
      ));
    }
  
  //widget Scaffold sebagai isi halaman
  return Scaffold(
    //app bar
    appBar: new AppBar(
      //title detail produk yang isi nama produk dalam widget text
      title: new Text("${widget.name}"),
    ),
    
    //body halaman dibungkus dengan widget container
    body: new Container(
      width: double.infinity,
      child: new ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              new Image.asset("assets/appimages/" + widget.image)
            ],
          ),
          
          Container(
            decoration: new BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [const Color(0xff3164bd), const Color(0xff295cb5)],
              ),
            ),

            padding: EdgeInsets.all(10),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: chidrenstar,
                ),
                new Container(
                  child: new Text(
                    this.widget.price.toString(),
                    //memberikan style pada text
                    style: new TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: "NeoSansBold"
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.lightBlue,
            //maxsimal width
            width: double.infinity,
            //maxsimal height
            height: double.maxFinite,
            child: new Text(widget.description),
          )
        ],
      ),
    ),
  );
 }
}

