import 'package:flutter/material.dart';

class CardBody extends StatelessWidget {
  const CardBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      margin: EdgeInsets.only(bottom: 15), 
      decoration: BoxDecoration(
        color: const Color(0xfff4B4B4B),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black),
      ),
      // create circle shape  
      child:  Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text("Tập thể dục buổi sáng", style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
            ),
            Icon(
              Icons.delete_outline,
              size: 30,
              color: Colors.white,)
          ],
        ),
      ),
      );
  }
}
