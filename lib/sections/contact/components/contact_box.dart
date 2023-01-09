import 'package:flutter/material.dart';
import 'package:programmer_wonjongseo/components/deault_button.dart';
import 'package:programmer_wonjongseo/constants.dart';
import 'package:programmer_wonjongseo/sections/contact/components/socal_card.dart';

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
      child: Column(
        children: [
          // Row(
          SizedBox(
            width: 1110,
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: [
                SocalCard(
                  iconSrc: 'assets/images/skype.png',
                  name: 'TheFlutterWay',
                  color: const Color(0xFFD9FFFC),
                  press: () {},
                ),
                SocalCard(
                  iconSrc: 'assets/images/whatsapp.png',
                  name: 'TheFlutterWay',
                  color: const Color(0xFFE4FFC7),
                  press: () {},
                ),
                SocalCard(
                  iconSrc: 'assets/images/messanger.png',
                  name: 'TheFlutterWay',
                  color: const Color(0xFFEBF0F9),
                  press: () {},
                )
              ],
            ),
          ),
          const SizedBox(height: kDefaultPadding * 2),
          ContactForm()
        ],
      ),
    );
  }
}

class ContactForm extends StatelessWidget {
  const ContactForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Wrap(
        spacing: kDefaultPadding * 2.5,
        runSpacing: kDefaultPadding * 1.5,
        children: [
          SizedBox(
            width: 470,
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: 'Your Name',
                hintText: 'Enter Your Name',
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: 'Your Email Address',
                hintText: 'Enter Yourt Email Address',
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: 'Project Type',
                hintText: 'Select Project Type',
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Project Budget',
                hintText: 'Select Project Budget',
              ),
            ),
          ),
          SizedBox(
            // height: 300,

            child: TextFormField(
              keyboardType: TextInputType.multiline,
              decoration: const InputDecoration(
                labelText: 'Description',
                hintText: 'Write some description',
              ),
              maxLines: 4,
              minLines: 3,
            ),
          ),
          const SizedBox(height: kDefaultPadding * 2),
          Center(
            child: FittedBox(
              child: DefaultButton(
                  imageSrc: 'assets/images/contact_icon.png',
                  text: 'Contact Me!',
                  press: () {}),
            ),
          )
        ],
      ),
    );
  }
}
