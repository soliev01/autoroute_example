import 'package:auto_route/auto_route.dart';
import 'package:autoroute_example/routes/router.gr.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return AutoTabsScaffold(
    //     routes: const [
    //       PostsRoute(),
    //       SettingsRoute(),
    //     ],
    //     bottomNavigationBuilder: (_, tabsRouter) {
    //       return BottomNavigationBar(
    //         currentIndex: tabsRouter.activeIndex,
    //         onTap: tabsRouter.setActiveIndex,
    //         items: const [
    //           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
    //           BottomNavigationBarItem(
    //               icon: Icon(Icons.settings), label: 'Settings'),
    //         ],
    //       );
    //     });

    return AutoTabsRouter(
      // list of your tab routes
      // routes used here must be declaraed as children
      // routes of /dashboard
      routes: const [
        PostsRoute(),
        CategoryRoute(),
        AddPost(),
        ServicesRoute(),
        SettingsRoute(),
      ],
      builder: (context, child, animation) {
        // obtain the scoped TabsRouter controller using context
        final tabsRouter = AutoTabsRouter.of(context);
        // Here we're building our Scaffold inside of AutoTabsRouter
        // to access the tabsRouter controller provided in this context
        //
        //alterntivly you could use a global key
        return Scaffold(
            body: FadeTransition(
              opacity: animation,
              // the passed child is techinaclly our animated selected-tab page
              child: child,
            ),
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.blue,
              currentIndex: tabsRouter.activeIndex,
              selectedItemColor: Colors.lime,
              unselectedItemColor: Colors.blueGrey,
              onTap: (index) {
                // here we switch between tabs
                tabsRouter.setActiveIndex(index);
              },
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.category), label: 'Cate'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.add), label: 'Add Post'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.contact_support), label: 'Services'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: 'Settings'),
              ],
            ));
      },
    );
  }
}
