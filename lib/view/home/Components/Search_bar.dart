import 'package:flutter/material.dart';

class Search_bar extends StatelessWidget {
  const Search_bar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.07,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 222, 219, 219),
              offset: const Offset(
                0.0,
                0.0,
              ),
              blurRadius: 10.0,
              spreadRadius: 1.0,
            ), //BoxShadow
            BoxShadow(
              color: Color.fromARGB(255, 205, 205, 205),
              offset: const Offset(0.0, 0.0),
              blurRadius: 10.0,
              spreadRadius: 1.0,
            ), //BoxShadow
          ],
        ),
        child: Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.search,
                size: 30,
                color: Color(0xffFA6A02),
              ),
           suffixIcon: Image.asset('assets/img/Frame (1).png',width: 50,height: 50,)
            ),
          ),
        ));
  }
}
