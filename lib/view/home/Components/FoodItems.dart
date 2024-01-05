import 'package:flutter/material.dart';
import 'package:base/database/imagedata.dart';
class Food extends StatelessWidget {
  const Food({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: imagedata.images.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Padding(
        padding:
            const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0x14000000)),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Container(
                    child: Image.asset(
                  imagedata.images[index],
                  
                )),
              ),
            ),
            Text(
    imagedata.names[index],
    style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
    )
            )
          ],
        ),
      ),
    );
  }
}
