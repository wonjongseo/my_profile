import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:programmer_wonjongseo/components/deault_button.dart';
import 'package:programmer_wonjongseo/constants.dart';
import 'package:programmer_wonjongseo/sections/contact/components/socal_card.dart';
import 'package:url_launcher/url_launcher.dart';

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
                  iconSrc: 'assets/images/icons/icons8-instagram.svg',
                  name: 'Instargram',
                  color: Colors.pinkAccent,
                  press: () {
                    launchUrl(
                      Uri.parse('https://www.instagram.com/w_jong_s/'),
                    );
                  },
                ),
                SocalCard(
                  iconSrc: 'assets/images/icons/icons8-facebook.svg',
                  name: 'Facebook',
                  color: const Color(0xFFD9FFFC),
                  press: () {
                    launchUrl(
                      Uri.parse('https://www.facebook.com/visionwill'),
                    );
                  },
                ),
                SocalCard(
                  iconSrc: 'assets/images/icons/icons8-notion.svg',
                  name: 'Notion',
                  color: const Color(0xFFE4FFC7),
                  press: () {
                    launchUrl(
                      Uri.parse(
                          'https://woolly-clownfish-678.notion.site/Web-Developer-431e3c2297054ffda0f704f3fee5b8c9'),
                    );
                  },
                ),
                SocalCard(
                  iconSrc: 'assets/images/icons/icons8-github.svg',
                  color: const Color(0xFFEBF0F9),
                  name: 'Github',
                  press: () {
                    launchUrl(
                      Uri.parse('https://github.com/wonjongseo'),
                    );
                  },
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

class ContactForm extends StatefulWidget {
  const ContactForm({
    super.key,
  });

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  late TextEditingController yournameController;
  late TextEditingController yourAdressController;
  late TextEditingController yourProjectTypeController;
  late TextEditingController yourBudgetController;
  late TextEditingController yourDescritionController;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    yournameController = TextEditingController();
    yourAdressController = TextEditingController();
    yourProjectTypeController = TextEditingController();
    yourBudgetController = TextEditingController();
    yourDescritionController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Wrap(
        spacing: kDefaultPadding * 2.5,
        runSpacing: kDefaultPadding * 1.5,
        children: [
          SizedBox(
            width: 470,
            child: TextFormField(
              enabled: false,
              controller: yournameController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Your Name';
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: 'Your Name',
                hintText: 'Enter Your Name',
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              enabled: false,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Your Email Address';
                }
                return null;
              },
              controller: yourAdressController,
              decoration: const InputDecoration(
                labelText: 'Your Email Address',
                hintText: 'Enter Yourt Email Address',
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              enabled: false,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Project Type';
                }
                return null;
              },
              controller: yourProjectTypeController,
              decoration: const InputDecoration(
                labelText: 'Project Type',
                hintText: 'Select Project Type',
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              enabled: false,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Project Budget';
                }
                return null;
              },
              controller: yourBudgetController,
              decoration: InputDecoration(
                labelText: 'Project Budget',
                hintText: 'Select Project Budget',
              ),
            ),
          ),
          SizedBox(
            child: TextFormField(
              enabled: false,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some Description';
                }
                return null;
              },
              controller: yourDescritionController,
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
                  press: () {
                    launchUrl(
                      Uri.parse('mailto:visionwill3322@gmail.com'),
                    );
                    // if (_formKey.currentState!.validate()) {
                    //   ScaffoldMessenger.of(context).showSnackBar(
                    //     const SnackBar(content: Text('Processing Data')),
                    //   );
                    // }
                  }),
            ),
          )
        ],
      ),
    );
  }
}
