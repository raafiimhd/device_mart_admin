import 'package:device_mart/application/bussines_logic/bloc/user/user_bloc.dart';
import 'package:device_mart/domain/core/colors/colors.dart';
import 'package:device_mart/domain/core/constants/const.dart';
import 'package:device_mart/domain/models/user/block_and_unblock_user_qurrey_model/block_and_unblock_user_qurrey.dart';
import 'package:device_mart/domain/models/user/user_model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

class UserListView extends StatelessWidget {
  const UserListView({super.key, required this.user});
  final UserModel user;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sWidth,
      height: sWidth * 0.40,
      child: Card(
        color: kWhite,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  kHeightTen,
                  const CircleAvatar(
                    backgroundColor: kWhite,
                    radius: 30,
                    child: Icon(Iconsax.personalcard),
                  ),
                  kwidth30,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(user.email),
                      Text(user.userName),
                      Text(user.phone.toString()),
                    ],
                  )
                ],
              ),
              const Divider(),
           Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (!user.isBlocked) {
                        context.read<UserBloc>().add(UserEvent.blockUser(
                            blockAndUnblockUserQurreyModel:
                                BlockAndUnblockUserQurreyModel(id: user.userId)));
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            user.isBlocked ? kRed.withOpacity(0.5) : kRed,
                        foregroundColor: kWhite),
                    child: const Text('Block'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (user.isBlocked) {
                        context.read<UserBloc>().add(UserEvent.unBlockUser(
                            blockAndUnblockUserQurreyModel:
                                BlockAndUnblockUserQurreyModel(id: user.userId)));
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: !user.isBlocked
                            ? kGreen.withOpacity(0.5)
                            : kGreen,
                        foregroundColor: kWhite),
                    child: const Text('UnBlock'),
                  ),
                ],
              )
        ],
      ),
        )
      )
    );
  }
}
