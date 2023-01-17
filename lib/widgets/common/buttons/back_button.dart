import 'package:flutter/material.dart';

class CmsBackButton extends StatelessWidget {
  const CmsBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back_ios_new_rounded, size: 20),
      ),
    );
  }
}
