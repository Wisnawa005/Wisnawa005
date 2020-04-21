import 'package:flutter/material.dart';
import './profile.dart';
import './input.dart';

class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     //update AppBar
        appBar: new AppBar(
          title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Beranda'),
              ]),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('Click search');
              },
            ),
            IconButton(
              icon: Icon(Icons.notifications_active),
              onPressed: () {
                print('Click start');
              },
            ),
          ],
        ), 
        //widget Drawer
        drawer: new Drawer(
          //menggunakan listView agar drawer dapat melebihi width devices
          child: new ListView(
            children: <Widget>[
              //Drawer Header diisi dengan informasi akun
              new UserAccountsDrawerHeader(
                accountName: new Text("Wisnawa"),
                accountEmail: new Text("agus.wisnawa@undiksha.ac.id"),
                currentAccountPicture: new GestureDetector(
                  onTap: () {},
                  child: new CircleAvatar(
                    backgroundImage: AssetImage('assets/appimages/foto.jpg')
                  ),
                ), //memberi background pada Drawer Header
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/appimages/bg.jpg'),
                      fit: BoxFit.cover),
                ),
              ), 
              //Menu Drawer
              new ListTile(
                title: new Text('Notifications'),
                trailing: new Icon(Icons.notifications_none),
              ),
              new ListTile(
                title: new Text('Wishlist'),
                trailing: new Icon(Icons.bookmark_border),
              ),

              //profile
              new GestureDetector(
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => MyProfile(
                    )
                    ));
                },
                child: new ListTile(
                title: new Text('Account'),
                trailing: new Icon(Icons.verified_user),
              ), 
              ),
              
              //Divider Menu
              Divider(
                height: 2,
              ),

              //Input Data
              new GestureDetector(
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => Input(
                    )
                    ));
                },
                child: new ListTile(
                title: new Text('Input Data'),
                trailing: new Icon(Icons.card_giftcard),
              ), 
              ),

              new ListTile(
                title: new Text('Settings'),
                trailing: new Icon(Icons.settings),
              ),

            ],
          ),
        ), 
        //seluruh body dibungkus column 
        //Tidak terdapat perubahan pada body beranda.dart latihan 4 /tugas 4 sebelumnya
        
        body: new Column(
        children: <Widget>[
          Image.asset("assets/appimages/gambar2.jpg"), 
          //setiap bagian pada body dipisahkan container
          Container(
            color: Colors.blueAccent[100],
            padding: const EdgeInsets.all(
                10), //untuk membuat tampilan secara horisontal maka digunakan row
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sakurasou no Pet na Kanojo',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        'Hot Anime',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow[1],
                ),
                Text('5'),
              ],
            ),
          ), //setiap bagian pada body dipisahkan container
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Theme.of(context).dividerColor)),
            ), //untuk membuat tampilan secara horisontal maka digunakan row
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //untuk membuat tampilan secara vertikal maka digunakan column
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.category, color: Colors.blue),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        "All Category",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.video_label, color: Colors.blue),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        "Waching Video",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.near_me, color: Colors.blue),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        "Go to App Store",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.share, color: Colors.blue),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        "Share",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              'Sakurasou no Pet na Kanojo adalah anime komedi romantis yang bercerita mengenai para penghuni asrama Sakurasou. Cerita akan berfokus pada Sorata Kanda, seorang siswa biasa yang memiliki kebiasaan memungut kucing liar, padahal asrama tempatnya tinggal melarang penghuninya membawa masuk binatang.',
              softWrap: true,
            ),
          )
        ],
      ),
    );
  }
}