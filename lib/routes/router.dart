import 'package:auto_route/auto_route.dart';
import 'package:autoroute_example/screens/add_post_page.dart';
import 'package:autoroute_example/screens/category_page.dart';
import 'package:autoroute_example/screens/dashboard.dart';
import 'package:autoroute_example/screens/posts_page.dart';
import 'package:autoroute_example/screens/services_page.dart';
import 'package:autoroute_example/screens/setttings_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/dashboard',
      page: DashboardPage,
      initial: true,
      children: [
        AutoRoute(path: 'posts', page: PostsPage),
        AutoRoute(path: 'posts', page: CategoryPage),
        AutoRoute(path: 'posts', page: AddPost),
        AutoRoute(path: 'posts', page: ServicesPage),
        AutoRoute(path: 'settings', page: SettingsPage),
      ],
    ),
  ],
)
class $AppRouter {}
