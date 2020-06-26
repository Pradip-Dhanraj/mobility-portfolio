import 'package:flutter/material.dart';
import 'package:portfolio/viewmodels/contact-viewmodel.dart';
import 'package:provider/provider.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ContactViewModel(),
      child: Consumer<ContactViewModel>(
        builder: (context, model, child) => Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // bio Section
            //model.displaycontainer,
            Text(
              "Contact details are here",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
