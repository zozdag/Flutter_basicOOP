import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  static int ids;
  static String isim="alper";
 
  
  Calisan calisan2 = new Calisan(ids, isim);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Yeni Deneme'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
             new RaisedButton(
          onPressed: calisan2.getir,
          child: const Text('Tıkkla'),
          ),
          new TextField(
            decoration: InputDecoration(
              hintText: 'id',  
            
            ),
             onChanged: (String str){
               setState(() {
                ids = int.parse(str); 
               });
             },
          )
          ],
        ),
       
        
        
      ),
      bottomNavigationBar: new BottomAppBar(
        child: new Container(
          height: 50.0,
          color: Colors.indigoAccent,
          child: Text(
            'Reklam Panosu',
            textDirection: TextDirection.rtl,
            style: TextStyle(color: Colors.tealAccent),
          ),
        ),
      ),
    );
  }
}

class Calisan {
  int id;
  String name;
  Calisan(int id, String name) {
    this.id = id;
    this.name = name;
    print('Çalışan id :' + id.toString() + ' Çalışan İsmi' + name);
  }

  void getir(){
    print('id : '+id.toString()+' name : '+name);
  }
}

class Patron extends Calisan {
  String yetki;
  Patron(int id, String name,String yetki):
    super(id,name){
        this.yetki = yetki;
        print('Çalışan idsi :' + id.toString() + 'Çalışan İsmi' + name+"Patronun yetkisi"+yetki);
    }
  

}
