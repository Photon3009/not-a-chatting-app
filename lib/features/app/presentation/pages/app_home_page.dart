import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:its_urgent/configurations/theme/size_constants.dart';
import 'package:its_urgent/features/authentication/data/blocs/auth_cubit.dart';
import 'package:its_urgent/its_urgent_icons.dart';

@RoutePage()
class AppHomePage extends StatefulWidget {
  const AppHomePage({super.key});

  @override
  State<AppHomePage> createState() => AppHomePageState();
}

class AppHomePageState extends State<AppHomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(kPadding * 2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                AuthCubit.instance.state.user!.name,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          leadingWidth: kPadding * 6,
          leading: const Icon(ItsUrgentIcons.frame),
          centerTitle: true,
          title: Text(
            'It\'s Urgent',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          actions: <Widget>[
            // Icons on the right
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                // Handle search action
              },
            ),
          ],
        ),
      );
}
