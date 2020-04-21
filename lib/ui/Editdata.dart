import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ags_wis/in/input.dart';

class EditData extends StatefulWidget {

  final List list;
  final int index;
  
  EditData({this.list, this.index});
  @override
  _EditDataState createState() => _EditDataState();
}

class _EditDataState extends State<EditData> {

  
  TextEditingController controllerNama;
  TextEditingController controllerKeterangan;
  TextEditingController controllerHarga;
  TextEditingController controllerStok;

  void editData(){
    var url="http://192.168.43.6/apiflutter/penjualan/save_update";
    http.post(url,body: {
      "id": widget.list[widget.index]['id'],
      "nama": controllerNama.text,
      "keterangan": controllerKeterangan.text,
      "harga": controllerHarga.text,
      "stok": controllerStok.text
    });

  }


  @override
  initState() {
    controllerNama= new TextEditingController(text: widget.list[widget.index]['nama']);
    controllerKeterangan= new TextEditingController(text: widget.list[widget.index]['keterangan']);
    controllerHarga= new TextEditingController(text: widget.list[widget.index]['harga']);
    controllerStok= new TextEditingController(text: widget.list[widget.index]['stok']);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text("EDIT TEXT"),),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            new Column(
              children: <Widget>[
                new TextField(
                  controller: controllerNama,
                  decoration: new InputDecoration(
                      hintText: "Item Name", labelText: "Item Name"),
                ),
                new TextField(
                  controller: controllerKeterangan,
                  decoration: new InputDecoration(
                      hintText: "Keterangan", labelText: "Keterangan"),
                ),
                new TextField(
                  controller: controllerHarga,
                  decoration: new InputDecoration(
                      hintText: "Price", labelText: "Price"),
                ),
                new TextField(
                  controller: controllerStok,
                  decoration: new InputDecoration(
                      hintText: "Stock", labelText: "Stock"),
                ),
                new Padding(
                  padding: const EdgeInsets.all(10.0),
                ),
                new RaisedButton(
                  child: new Text("EDIT DATA"),
                  color: Colors.blueAccent,
                  onPressed: () {
                    editData();
                    Navigator.of(context).push(
                      new MaterialPageRoute(
                        builder: (BuildContext context)=>new Input()
                      )
                    );
                  },
                )
              ],
            ),
          ],
        ),
      ),
      
    );
  }
}