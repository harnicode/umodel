import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:umodel/app/navigation.dart';
// import 'package:umodel/features/home/home_route.dart';
// import 'package:umodel/app/navigation.dart';
import 'package:umodel/features/users/bloc/users_bloc.dart';
// import 'package:umodel/features/users/user_detail/user_detail_page.dart';
import 'package:umodel/features/users/user_detail/user_detail_route.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:umodel/features/users/bloc/users_bloc.dart';
// import 'package:flutter/widgets.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(185, 195, 232, 1),
        ),
        child: Column(
          children: [
            const SizedBox(height: 150),
            BlocBuilder<UsersBloc, UsersState>(
              builder: (context, state) {
                debugPrint(state.users.length.toString());
                if (state.users.isEmpty) {
                  return const Center(
                    child: Text('Waiting for the first post'),
                  );
                }
                return SizedBox(
                  height: 690,
                  child: ListView.builder(
                      itemCount: state.users.length,
                      itemBuilder: (context, index) {
                        final user = state.users[index];
                        debugPrint(user.toString());
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: GestureDetector(
                            onTap: () {
                              context.navigate(UserDetailRoute(userId: user.id, user: user.toJson().toString()),);
                            },
                            child: Container(
                              width: screenWidth,
                              height: 180,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(244, 248, 255, 1),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 3,
                                    spreadRadius: 3,
                                  ),
                                ],
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/man_model_1.webp",
                                  ),
                                  const SizedBox(width: 30),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 30),
                                    child: Column(
                                      children: [
                                        Text(
                                          "${user.firstname} ${user.lastname}",
                                          style: const TextStyle(
                                              fontSize: 24,
                                              color: Color.fromRGBO(
                                                  67, 69, 101, 1),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "City: ${user.address.city} \n Street: ${user.address.street} \n Suite: ${user.address.suite}",
                                          style: const TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                        const SizedBox(height: 10),
                                        Text(user.email),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromRGBO(114, 105, 177, 1),
        unselectedLabelStyle: const TextStyle(color: Colors.white),
        selectedLabelStyle: const TextStyle(color: Colors.white),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.white, size: 40),
            label: "Models",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.heart_broken, color: Colors.white, size: 40),
            label: "Favorites",
          ),
        ],
      ),
    );
  }
}
