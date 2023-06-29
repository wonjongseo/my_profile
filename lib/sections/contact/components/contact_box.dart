import 'package:flutter/material.dart';
import 'package:programmer_wonjongseo/constants.dart';
import 'package:programmer_wonjongseo/sections/contact/components/contact_form.dart';

class ContactBox extends StatelessWidget {
  const ContactBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1110),
      padding: const EdgeInsets.all(kDefaultPadding * 3),
      margin: const EdgeInsets.only(top: kDefaultPadding * 2),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )),
      child: const Column(
        children: [
          SizedBox(height: kDefaultPadding * 2),
          ContactForm(),
        ],
      ),
    );
  }
}
