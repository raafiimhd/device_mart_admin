import 'package:device_mart/domain/core/colors/colors.dart';
import 'package:device_mart/application/presentation/widgets/custom_appbar/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class PrivacyAndPolicy extends StatelessWidget {
  const PrivacyAndPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(56),
            child: CustomAppbar(
              title: 'Privacy And Policy',
              leading: IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(
                    Iconsax.arrow_left,
                    color: kBlack,
                  )),
            )),
            body:const SingleChildScrollView(
              child:  Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Thank you for choosing to use the Device Mart Admin application . We are committed to protecting your privacy and ensuring the security of your personal information. This Privacy Policy explains how we collect, use, and safeguard your information when you use our App. By accessing and using the App, you agree to the terms of this Privacy Policy'
                                  
                                  '\nInformation We Collect'
                                  
                                  '\nWe may collect certain personal information from you when you use the App. This information may include your name, email address, username, and profile picture. Additionally, if you choose to connect your social media accounts, we may collect additional information from those accounts, such as your social media profile information and friend list '
                                  
                                  '\nWe also collect information about how you use the App. This includes data regarding your interactions within the App, your preferences, and your usage patterns. Furthermore, we automatically collect certain information about your device, such as device type, operating system, unique device identifiers, and network information. With your consent, we may collect and process information about your precise or approximate location when you use the App for location-based features.'
                                  
                                  '\nHow We Use Your Information'
                                  
                                  '\nWe use the information we collect for various purposes, including:'
                                  
                                  'Providing and personalizing the App: We utilize your personal information to offer you a seamless and personalized user experience within the App. This involves enhancing the functionality of the admin interface and tailoring features based on your usage patterns.'
                                  
                                  'Communication: We may use your contact information to send you important updates, notifications, and messages related to the Apps administration. You have the option to opt-out of non-essential communications by adjusting your preferences in the App settings.'
                                  
                                  'Aggregated Data: We may aggregate and anonymize data for analytical and statistical purposes to improve the Apps functionality, develop new features, and gain insights into user trends and preferences. Please note that aggregated data does not personally identify you.'
                                  
                                  'Legal Compliance and Protection: We may use your information to comply with applicable laws, regulations, legal processes, and enforce our rights. Additionally, we may utilize your data to protect the safety and security of our users.'
                                  
                                  "Changes to Privacy Policy"
                                  
                                  "We reserve the right to update or modify this Privacy Policy at any time. Any changes will be effective immediately upon posting the revised policy on the App. We encourage you to review this Privacy Policy periodically for updates."
                                  
                                  "Contact Information"
                                  
                                  "For questions or concerns regarding this Privacy Policy, contact us at [Your Contact Email]."
                                  
                                  'Thank you for your trust in using the Device Mart Admin App'),
                  )
                ],
              ),
            ),
            );
  }
}
