import 'package:flutter/material.dart';
class BalanceWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,width: 150,
      padding: const EdgeInsets.all(8),
      decoration:const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/bal_border.png")
          )
      ),
      child: Stack(
        children: [
          Align(
              alignment: Alignment.center,
            child: Image.asset("assets/bal_widget.png",height: 150,width: 150,fit: BoxFit.fill,)),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("\$",style: TextStyle(color: Colors.white),),
                Text("0",style: TextStyle(color: Colors.white,fontSize: 25),),
                Text(".00",style: TextStyle(color: Colors.white),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
