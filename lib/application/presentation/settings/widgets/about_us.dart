import 'package:device_mart/domain/core/colors/colors.dart';
import 'package:device_mart/application/presentation/widgets/custom_appbar/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ScreenAbout extends StatelessWidget {
  const ScreenAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(56),
          child: CustomAppbar(
              leading: IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Iconsax.arrow_left,
                  color: kBlack,)),
              title: 'About Us')),
          body:const SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('About Us'
                              
                              'Welcome to Device Mart Admin, the powerful admin interface for the Device Mart laptop buying application. At Device Mart, we are dedicated to providing an efficient and seamless experience for managing your laptop inventory and sales.'
                              
                              'Our Mission'
                              
                              'Our mission is to empower businesses in the laptop retail industry by offering a comprehensive and user-friendly administrative tool. We aim to streamline inventory management, enhance user control, and facilitate smooth operations for laptop sellers.'
                              
                              'Key Features'
                              
                              '- **Inventory Management:** Effortlessly manage your laptop inventory with our intuitive interface. Update product details, track stock levels, and organize your products efficiently.'
                              
                              '- **Sales Analytics:** Gain valuable insights into your sales performance. Analyze trends, monitor top-selling products, and make informed business decisions.'
                              
                              '- **Order Management:** Keep track of customer orders, monitor order statuses, and streamline your order fulfillment process.'
                              
                              '- **User-Friendly Interface:** Enjoy a user-friendly interface designed to simplify complex administrative tasks. No technical expertise required!'
                              
                              '- **Security:** We prioritize the security of your data. Benefit from robust security measures to ensure the confidentiality and integrity of your information.'
                              
                              '- **Reliable Support:** Our dedicated support team is here to assist you. Reach out to us for any queries, technical assistance, or feedback.'
                              
                              'Contact Us'
                              
                              'We value your feedback and are committed to continuously improving the Device Mart Admin experience. If you have any questions, suggestions, or concerns, please dont hesitate to contact us at [Your Contact Email].'
                  ),
                )
              ],
            ),
          ),
    );
  }
}
