import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:workshop/viewmodel/bottomnavbar_cubit/buttom_nav_bar_cubit.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ButtomNavBarCubit(),
      child: BlocConsumer<ButtomNavBarCubit, ButtomNavBarState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          ButtomNavBarCubit buttomNavBarCubit=ButtomNavBarCubit.get(context);
          return Scaffold(
            body: ButtomNavBarCubit.NavBar[buttomNavBarCubit.SelectedIndex],
            bottomNavigationBar: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    color: Colors.black.withOpacity(.1),
                  )
                ],
              ),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 8),
                  child: GNav(
                    onTabChange: (index) {
                      buttomNavBarCubit.change(index:index);
                    },
                    selectedIndex: buttomNavBarCubit.SelectedIndex,
                    haptic: true,
                    rippleColor: Colors.grey[300]!,
                    hoverColor: Colors.grey[100]!,
                    gap: 8,
                    activeColor: Colors.black,
                    iconSize: 24,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    duration: Duration(milliseconds: 400),
                    tabBackgroundColor: Colors.grey[100]!,
                    color: Colors.black,
                    tabs: [
                      GButton(
                        icon: Icons.home,
                        text: 'Home',
                      ),
                      GButton(
                        icon: Icons.newspaper,
                        text: 'News',
                      ),
                      GButton(
                        icon: Icons.settings,
                        text: 'Settings',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
