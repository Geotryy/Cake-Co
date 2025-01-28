import 'package:cardapio_app/src/pages/base/base_screen.dart';
import 'package:cardapio_app/src/utils/colors.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        width: MediaQuery.of(context).size.width,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: size.height * 0.04,),
                Text(
                  "Cake & Co.",
                  style: TextStyle(
                      fontSize: 40,
                      color: AppColors.fuchsia,
                      fontFamily: 'Cocogoose'),
                ),
                Center(child: Text('Doces Delícias', style: TextStyle(color: AppColors.black, fontSize: 25, fontWeight: FontWeight.w600),)),
                SizedBox(height: size.height * 0.09,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(200),bottomRight: Radius.circular(200), topLeft: Radius.circular(200), ),
                    color: AppColors.roseLight
                  ),
                  padding: EdgeInsets.all(15),
                  child: Image.asset(
                    "assets/images/logo.png",
                    width: size.width * 0.75,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.09,
                ),
                Container(
                  decoration: BoxDecoration(),
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: ElevatedButton(onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BaseScreen(),),);}, style: ElevatedButton.styleFrom(backgroundColor: AppColors.rose), child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
                    child: Text("Iniciar", style: TextStyle(fontSize: 20, color: AppColors.snow),),
                  ), ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
