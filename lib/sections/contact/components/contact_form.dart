import 'package:flutter/material.dart';
import 'package:programmer_wonjongseo/components/deault_button.dart';
import 'package:programmer_wonjongseo/constants.dart';
import 'package:url_launcher/url_launcher.dart';

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
