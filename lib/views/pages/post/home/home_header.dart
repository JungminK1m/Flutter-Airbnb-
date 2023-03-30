
import 'package:airbnb_app/core/size.dart';
import 'package:airbnb_app/views/pages/post/home/home_header_appbar.dart';
import 'package:airbnb_app/views/pages/post/home/home_header_form.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: header_height,
      child: Container( //Column 에는 컬러를 줄 수 없어서 컨테이너로 감싸야 함
        height: 620,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("background.jpeg"),
            fit: BoxFit.cover
          ),
        ),
        child: Column(
          children: [
            HomeHeaderAppbar(),
            HomeHeaderForm(),
          ],
        ),
      ),
    );
  }
}
