class Detail {
  final String image;
  final String name;
  final String category;
  final int price;
  final int star;
  final String description;

  Detail({
    this.image,
    this.name,
    this.category,
    this.price,
    this.star,
    this.description,
  });

  String get size => null;
}

final List<Detail> details = [
  Detail(
    image: 'assets/appimages/pic0.png',
    name: 'One Piece',
    category: 'Figure',
    price: 1250000,
    star: 3,
    description:
        'One Piece adalah sebuah seri manga Jepang yang ditulis dan diilustrasikan oleh Eiichiro Oda. Manga ini telah dimuat di majalah Weekly Shōnen Jump milik Shueisha sejak tanggal 22 Juli 1997, dan telah dibundel menjadi 91 volume tankōbon. Ceritanya mengisahkan petualangan Monkey D',
  ),
  Detail(
    image: 'assets/appimages/pic1.png',
    name: 'Naruto Shippuden ',
    category: 'Figure',
    price: 539930,
    star: 5,
    description:
        'Naruto adalah sebuah serial manga karya Masashi Kishimoto yang diadaptasi menjadi serial anime. Manga Naruto bercerita seputar kehidupan tokoh utamanya, Naruto Uzumaki, seorang ninja yang hiperaktif',
  ),
  Detail(
    image: 'assets/appimages/pic2.png',
    name: 'Sword Art Online',
    category: 'Figure',
    price: 420000,
    star: 5,
    description:
        'Pada tahun 2022, permainan Virtual Reality Massively Multiplayer Role-Playing online (VRMMORPG), Sword Art Online (SAO), diluncurkan. Dengan Nerve Gear, helm virtual reality yang merangsang panca indera pengguna melalui otak mereka, pemain dapat merasakan dan mengontrol karakter dalam game mereka dengan pikiran mereka.',
  ),

  Detail(
    image: 'assets/appimages/pic3.png',
    name: 'Kimi No Nawa',
    category: 'Figure Cuple Edidition',
    price: 1100000,
    star: 5,
    description:
        'Mitsuha Miyamizu, seorang siswi sekolah menengah atas yang tinggal di desa fiktif bernama Itomori di daerah pegunungan Hida Prefektur Gifu, mulai bosan dengan kehidupannya di pedesaan tempat dia lahir dan berharap dapat terlahir menjadi pemuda tampan yang hidup di Tokyo pada kehidupan selanjutnya. Kemudian, Taki Tachibana, seorang siswa sekolah menengah atas yang tinggal di Tokyo, terbangun dari tidurnya dan menyadari bahwa dirinya adalah Mitsuha, yang entah bagaimana bisa masuk ke dalam tubuh Taki.',
  ),
  
  Detail(
    image: 'assets/appimages/pic4.png',
    name: 'Tokyo Ghoul',
    category: 'Figure',
    price: 780000,
    star: 5,
    description:
        'Ghoul adalah nama dari makhluk gaib dalam mitologi Arab yang digambarkan hidup dari memakan daging manusia. Sebagai akibat dari karakteristik ghoul yang terkesan mengerikan tersebut, ghoul pun menjadi salah satu sumber inspirasi dalam banyak karya fiksi, utamanya karya fiksi yang bergenre horror & supranatural.',
  ),
];
