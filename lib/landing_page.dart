import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class LandingPage extends StatelessWidget {
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  _launchEmail(String toMailId, String subject, String body) async{
    var url = 'mailto:$toMailId?subject=$subject&body=$body';
    if(await canLaunch(url)){
      await launch(url);
    }
    else{
      throw 'Could not launch $url';
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [const Color(0xff213A50), const Color(0xff071930),const Color(0xff071940)]
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(radius: 80,backgroundImage: AssetImage("assets/profile_pic.jpeg"),),
            SizedBox(height: 12,),
            Text("Kamalakar Mucharla",
              style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 8,),
            Text("An Android developer with decent programming skills seeking opportunities to work in a challenging environment and utilize my skills in achieving organizational goals.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,fontStyle: FontStyle.italic,fontSize: 18,fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height: 12,),
            Text("Connect with me",
              style: TextStyle(fontSize: 20,color: Colors.grey,fontWeight: FontWeight.w200),
            ),
            SizedBox(height: 12,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
//                GestureDetector(
//                    onTap: (){
//                      _launchEmail("mucharlakamalakar@gmail.com","Through Portfolio","Hey!! Want to connect with you!");
//                    },
//                    child: Image.asset("assets/gmail.png",height: 30,width: 30,)),
              //https://www.facebook.com/kamalakar.mucharla
//                SizedBox(width: 12,),
                GestureDetector(
                    onTap: (){
                      _launchURL("https://github.com/KaMaLaKaR174");
                    },

                    child: Image.asset("assets/github.png",height: 22,width: 22,)),
                SizedBox(width: 12,),
                GestureDetector(
                    onTap: (){
                      _launchURL("https://www.linkedin.com/in/kamalakar-mucharla/");
                    },
                    child: Image.asset("assets/linkedin.jpg",height: 24,width: 24,)),
                SizedBox(width: 12,),
                GestureDetector(
                  onTap: (){
                    _launchURL("https://twitter.com/Kamalak19364854?s=08");
                  },
                    child: Image.asset("assets/twitter.png",height: 22,width: 22,)),
                SizedBox(width: 12,),
                GestureDetector(
                    onTap: (){
                      _launchURL("https://join.skype.com/invite/WCxQY4DZvCid");
                    },
                    child: Image.asset("assets/skype.png",height: 24,width: 24,)),
                SizedBox(width: 12,),
                GestureDetector(
                  onTap: (){
                    _launchURL("https://www.instagram.com/kamalakar_mucharla_/?hl=en");
                  },
                  child: Image.asset("assets/instagram.png",height: 22,width: 22,
                  ),
                ),
                SizedBox(width: 12,),
              ],
            ),
            SizedBox(height: 15,),
            RaisedButton(onPressed:(){
              _launchURL("https://drive.google.com/file/d/1YSa23y9UO6CCe_zDuHFjdU0RnG7EG2aL/view?usp=sharing");
            } ,

              padding: EdgeInsets.all(0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),

              ),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    gradient: LinearGradient(
                        colors: [const Color(0xff9FA4C4),
                        const Color(0xffB3CDD1)]
                    )
                ),
                child: Text("Download My Resume",
                  style: TextStyle(
                    color: Colors.black,
                  ),),
              ),

              ),



          ],
        ),
      ),
    );
  }


}

    