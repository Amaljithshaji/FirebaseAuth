import 'package:flutter/material.dart';

class OderNow extends StatelessWidget {
  const OderNow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(0xff111e24)),
      child: Row(
        children: [
          Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           
            children: [
              Padding(
                padding:  EdgeInsets.only(top:MediaQuery.of(context).size.height*0.04 ,
                  left: MediaQuery.of(context).size.width*0.05),
                child: Container(
                  width: MediaQuery.of(context).size.width*0.5,
                  child: Text("Get 50% off on your  first order. ",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white)),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top:MediaQuery.of(context).size.height*0.01,
                  left: MediaQuery.of(context).size.width*0.05),
                child: Container(
                  width: MediaQuery.of(context).size.width*0.3,
                  height: MediaQuery.of(context).size.height*0.05,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  color:Color(0xffFA6A02) ),
                  child: Center(
                    child: Text(
                                "Order Now",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white
                                )
                            ),
                  ),
                ),
              )
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.3,
            height: MediaQuery.of(context).size.height*0.2,
        
            child: Image.asset('assets/img/burger.png',fit: BoxFit.cover,)
          )
        ],
      ),
    );
  }
}
