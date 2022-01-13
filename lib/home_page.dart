import 'package:flutter/material.dart';
import 'package:trasry_wallet_app/balance_widget.dart';
import 'package:trasry_wallet_app/constants.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currTab = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration:const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/bg.png")
            )
        ),
        child: SafeArea(
          child: Stack(
            children: [
              currTab == 0 ? Padding(
                padding: const EdgeInsets.all(15.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            BalanceWidget()
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const[
                          Icon(Icons.arrow_drop_down_outlined,size: 70,color: kThemeColor,),
                          Text("PORTFOLIO VALUE",style: TextStyle(color: Colors.white,fontSize: 20),)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/logo.png",height: 50,width: 50,),
                          const SizedBox(width: 10,),
                          const Text("TRSRY",style: TextStyle(color: Colors.white,fontSize: 30),)
                        ],
                      ),
                      const SizedBox(height: 10,),
                      currCard("assets/trsry.png", "Wallet", "TRSRY", "\$00.000", "-0.00%"),
                      const SizedBox(height: 10,),
                      currCard("assets/btc.png", "Bitcoin", "BTC", "\$47,105.55", "-0.53%"),
                      const SizedBox(height: 10,),
                      currCard("assets/eth.png", "Ethereum", "ETH", "\$3,814.14", "+1.73%"),
                      const SizedBox(height: 10,),
                      currCard("assets/usdt.png", "Tether USD", "USDT", "\$1.00", "+0.04%"),
                      const SizedBox(height: 10,),
                      Container(
                        height: 120,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: kThemeColor)
                        ),
                        child: Center(child: Text("Add More",style: TextStyle(color: kThemeColor,fontSize: 20),)),
                      ),
                      SizedBox(height: 200,)
                    ],
                  ),
                ),
              ) : Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text("DashBoard",style: TextStyle(color: Colors.white,fontSize: 20),),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: kThemeColor,
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: Image.asset("assets/share.png",height: 32,),
                            ),
                            SizedBox(height: 5,),
                            Text("Shares",style: TextStyle(color: Colors.white),)
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  color: kThemeColor,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Image.asset("assets/ftx.png"),
                            ),
                            SizedBox(height: 5,),
                            Text("FTX",style: TextStyle(color: Colors.white),)
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  color: kThemeColor,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Image.asset("assets/nft.png"),
                            ),
                            SizedBox(height: 5,),
                            Text("NFT's",style: TextStyle(color: Colors.white),)
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        SizedBox(width: 55,),
                        Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  color: kThemeColor,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left:4.0,right: 4.0),
                                child: Image.asset("assets/light.png"),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text("Lightning",style: TextStyle(color: Colors.white),)
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    const Text("Profile",style: TextStyle(color: Colors.white,fontSize: 20),),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  color: kThemeColor,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Image.asset("assets/assets.png",height: 32,),
                            ),
                            SizedBox(height: 5,),
                            Text("Assets",style: TextStyle(color: Colors.white),)
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  color: kThemeColor,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left:3.0,right: 3.0),
                                child: Image.asset("assets/security.png",width: 25,fit: BoxFit.fill,),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text("Security",style: TextStyle(color: Colors.white),)
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  color: kThemeColor,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Image.asset("assets/settings.png",height: 30,),
                            ),
                            SizedBox(height: 5,),
                            Text("Settings",style: TextStyle(color: Colors.white),)
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        SizedBox(width: 55,),
                        Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  color: kThemeColor,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left:4.0,right: 4.0),
                                child: Image.asset("assets/support.png",height: 30,),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text("Support",style: TextStyle(color: Colors.white),)
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 80,
                        width: MediaQuery.of(context).size.width / 1.5,
                        decoration: BoxDecoration(
                          color: kThemeColor,
                          borderRadius: BorderRadius.circular(100)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap:(){
                                setState(() {
                                       currTab = 0;
                                });
                              },
                              child: Image.asset(currTab == 0 ? "assets/home_btn.png" : "assets/home_btn_off.png",height: 30,width: 30,fit: BoxFit.fill,)),
                            InkWell(
                                onTap:(){
                                  setState(() {
                                    currTab = 1;
                                  });
                                },
                                child: Image.asset("assets/home_btn2.png",height: 30,width: 30,fit: BoxFit.fill,)),
                            InkWell(
                                onTap:(){
                                  setState(() {
                                    currTab = 2;
                                  });
                                },
                              child: Image.asset(currTab == 2 ?"assets/dash_btn.png":"assets/dash_btn_off.png",height: 30,width: 30,fit: BoxFit.fill,)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget currCard(String currImg,String currName,String currCode,String currBal,String minBal){
    return Container(
      height: 120,
      decoration:const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/curr_card.png")
          )
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(currImg,height: 40,width: 40,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(currCode,style: TextStyle(color: Colors.white,fontSize: 18),),
                        Text(currName,style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ],
                ),
                const Text("0",style: TextStyle(color: Colors.white),)
              ],
            ),
            const Divider(
              color: Colors.white,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:37.0),
                  child: Text(currBal,style: const TextStyle(color: Colors.white,fontSize: 18),),
                ),
                Text(minBal,style: TextStyle(color: minBal.startsWith("+") ? Colors.green :Colors.red,fontSize: 18),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
