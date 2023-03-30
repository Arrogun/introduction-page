import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  final String _title = 'Exciting rewards for you';
  final String _image = 'assets/image0.png';
  final String _bottomTitle =
      'Explore over 30+ apps and get rewards by donwloading using and raiting';
  final String _buttonTitle = 'Get started';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff9f9f9),
      appBar: AppBar(),
      body: Padding(
        padding: PagePadding.paddingHorizontal,
        child: Column(
          children: [
            SizedBox(
              height: PageSizedBox().heightsizedbox1,
            ),
            _TitleText(title: _title),
            SizedBox(
              height: PageSizedBox().heightsizedbox2,
            ),
            _BottomText(bottomTitle: _bottomTitle),
            SizedBox(
              height: PageSizedBox().heightsizedbox1,
            ),
            _Button(buttonTitle: _buttonTitle),
            SizedBox(
              height: PageSizedBox().heightsizedbox1,
            ),
            SizedBox(height: 310, width: 310, child: Image.asset(_image)),
          ],
        ),
      ),
    );
  }
}

class _Button extends StatelessWidget {
  const _Button({
    super.key,
    required String buttonTitle,
  }) : _buttonTitle = buttonTitle;

  final String _buttonTitle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: Padding(
          padding:
              const EdgeInsets.only(right: 50, left: 50, top: 20, bottom: 20),
          child: Text(
            _buttonTitle,
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: const Color(0xff4a5458)),
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff97e5e8),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        ));
  }
}

class _BottomText extends StatelessWidget {
  const _BottomText({
    super.key,
    required String bottomTitle,
    this.textAlign = TextAlign.center,
  }) : _bottomTitle = bottomTitle;

  final String _bottomTitle;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      _bottomTitle,
      textAlign: textAlign,
      style: Theme.of(context)
          .textTheme
          .titleLarge
          ?.copyWith(color: const Color(0xff7b8185)),
    );
  }
}

class _TitleText extends StatelessWidget {
  const _TitleText({
    super.key,
    required String title,
    this.textAlign = TextAlign.center,
  }) : _title = title;

  final String _title;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      _title,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.headlineLarge?.copyWith(
          color: const Color(0xff37444a), fontWeight: FontWeight.w700),
    );
  }
}

class PagePadding {
  static const paddingHorizontal = EdgeInsets.symmetric(horizontal: 20);
  static const paddingVertical = EdgeInsets.symmetric(vertical: 20);
}

class PageSizedBox {
  final double heightsizedbox1 = 50;
  final double heightsizedbox2 = 25;
}
