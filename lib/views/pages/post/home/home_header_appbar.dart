import 'package:airbnb_app/core/constants.dart';
import 'package:airbnb_app/core/size.dart';
import 'package:airbnb_app/core/styles.dart';
import 'package:flutter/material.dart';

class HomeHeaderAppbar extends StatelessWidget {
  const HomeHeaderAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(gap_m),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _logo(),
          _menu(),
        ],
      ),
    );
  }

  Widget _menu() {
    return Row(children: [
        InkWell(
          onTap: (){},
          child: Text("로그인", style: subtitle1(mColor: Colors.white)), // InkWell : 모든 위젯을 버튼화
        ),
        SizedBox(width: gap_m),
        InkWell(
          onTap: (){},
          child: Text("회원가입", style: subtitle1(mColor: Colors.white)), // InkWell : 모든 위젯을 버튼화
        ),
      ]);
  }

  Widget _logo() {
    return Row(
        children: [
          Image.asset("logo.png", width: 30, height: 30, color: kAccentColor),
          SizedBox(width: gap_s),
          Text("Airbnb", style: h5(mColor: Colors.white)),
          ]);
  }


}
