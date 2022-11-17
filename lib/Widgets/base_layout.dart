import 'package:flutter/material.dart';

class BaseLayout extends StatelessWidget {
  const BaseLayout({super.key, required this.widget});

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    final hight = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 0,
      ),
      body: Container(
        width: double.infinity,
        height: hight,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: SizedBox(
          width: width,
          height: hight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: hight * 0.26,
                width: width * 0.35,
                child: Image.asset(
                  'assets/images/etisalatlogo.png',
                ),
              ),
              Expanded(
                child: widget,
              ),
              SizedBox(
                //  width: width * 0.38,
                height: hight * 0.03,
                child: const Text(
                  'Cairo ICT 2021',
                  style: TextStyle(
                    color: Color.fromARGB(255, 212, 179, 78),
                    fontSize: 13,
                  ),
                  overflow: TextOverflow.visible,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
