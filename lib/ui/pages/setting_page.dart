import 'package:apotek_app/cubit/auth_cubit.dart';
import 'package:apotek_app/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/more_action_user_profile.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget profile() {
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(23),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    backgroundColor: kBlueColor,
                    foregroundColor: kWhiteColor,
                    radius: 50,
                    child: Icon(
                      Icons.person_add_alt_rounded,
                      size: 30,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    state.user.name,
                    style: blackStyle.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    state.user.email,
                    style: blackStyle.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            );
          } else {
            return const SizedBox();
          }
        },
      );
    }

    Widget content() {
      return Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        padding: const EdgeInsets.all(28),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
            MoreActionUserProfile(
              text: 'Edit Profile',
              iconUrl: 'assets/edit_profile.png',
              onPrassed: () {},
            ),
            const SizedBox(
              height: 25,
            ),
            MoreActionUserProfile(
              text: 'Settings',
              iconUrl: 'assets/settings_solid.png',
              onPrassed: () {},
            ),
            const SizedBox(
              height: 25,
            ),
            MoreActionUserProfile(
              text: 'Payment',
              iconUrl: 'assets/icon_payment.png',
              onPrassed: () {},
            ),
            const SizedBox(
              height: 25,
            ),
            MoreActionUserProfile(
              text: 'Security',
              iconUrl: 'assets/icon_security.png',
              onPrassed: () {},
            ),
            const SizedBox(
              height: 25,
            ),
            MoreActionUserProfile(
              text: 'Notification',
              iconUrl: 'assets/notification_solid.png',
              onPrassed: () {},
            ),
          ],
        ),
      );
    }

    Widget logout() {
      return BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is AuthFailed) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.red,
                content: Text(state.error),
              ),
            );
          } else if (state is AuthInitial) {
            Navigator.pushNamedAndRemoveUntil(
                context, '/sign-up', (route) => false);
          }
        },
        builder: (context, state) {
          if (state is AuthLoading) {
            return const Center(
              child: CircularProgressIndicator(
                color: kWhiteColor,
              ),
            );
          }
          return GestureDetector(
            onTap: () {
              context.read<AuthCubit>().signOut();
            },
            child: Container(
              margin: const EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 30),
              height: 53,
              decoration: BoxDecoration(
                color: kBlueColor,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/exit.png',
                    width: 25,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Logout',
                    style: whiteStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: kPrimeColor,
      body: SafeArea(
        child: Column(
          children: [
            profile(),
            content(),
            logout(),
          ],
        ),
      ),
    );
  }
}
