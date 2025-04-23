import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        color: Color(0xff0F0F0F),
      ),
      child: Column(
        spacing: 40,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            spacing: 80,
            children: [
              IconButton(
                onPressed: () {
                  print("Do soemthing");
                },
                icon: Icon(Icons.menu, color: Colors.white, size: 32),
              ),
              Text(
                "Kravan",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: "Inter",
                  wordSpacing: 1.5,
                ),
              ),
              IconButton(
                onPressed: () {
                  print("do something");
                },
                icon: Icon(Icons.notifications, color: Colors.white, size: 32),
              ),
            ],
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Search for your favorite pair",
              prefixIcon: Icon(Icons.search, color: Colors.black, size: 24,),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide(color: Colors.black)
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide(color: Colors.black),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide(color: Colors.black)
              ),
              filled: true,
              fillColor: Colors.white,
            ),
            cursorColor: Colors.black,
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 134);
}
