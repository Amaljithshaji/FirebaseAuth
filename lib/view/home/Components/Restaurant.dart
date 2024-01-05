import 'package:flutter/material.dart';
import 'package:base/database/imagedata.dart';
class Restaurant extends StatelessWidget {
  const Restaurant({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: imagedata.images1.length,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.05,
            vertical: MediaQuery.of(context).size.height * 0.01),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.2,
          
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                   
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          imagedata.images1[index],
                        ))),
                child: Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 30,
                    )),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.more_vert,
                            color: Color(0xff666464),
                          )
                        ],
                      ),
                      Text("Domino’s Pizza",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          )),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 5,
                                ),
                                Text("4.2",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    )),
                                Image.asset(
                                    'assets/img/Frame (3).png'),
                                Text("(10k+)",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    )),
                                SizedBox(
                                  width: 5,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(" 25 mins",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ))
                        ],
                      ),
                      Container(
                        child: Text(
                            "Pizzas, Italian, Pastas Pimple Saudagar",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            )),
                      ),
                      Text(
                "FREE DELIVERY",
                style: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: Color(0xff11CF24)
                )
            )
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
}
