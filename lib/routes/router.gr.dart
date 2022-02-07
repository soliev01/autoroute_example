// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:autoroute_example/screens/add_post_page.dart' as _i4;
import 'package:autoroute_example/screens/category_page.dart' as _i3;
import 'package:autoroute_example/screens/dashboard.dart' as _i1;
import 'package:autoroute_example/screens/posts_page.dart' as _i2;
import 'package:autoroute_example/screens/services_page.dart' as _i5;
import 'package:autoroute_example/screens/setttings_page.dart' as _i6;
import 'package:flutter/material.dart' as _i8;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    DashboardRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.DashboardPage());
    },
    PostsRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.PostsPage());
    },
    CategoryRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.CategoryPage());
    },
    AddPost.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.AddPost());
    },
    ServicesRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.ServicesPage());
    },
    SettingsRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i6.SettingsPage());
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig('/#redirect',
            path: '/', redirectTo: '/dashboard', fullMatch: true),
        _i7.RouteConfig(DashboardRoute.name, path: '/dashboard', children: [
          _i7.RouteConfig(PostsRoute.name,
              path: 'posts', parent: DashboardRoute.name),
          _i7.RouteConfig(CategoryRoute.name,
              path: 'posts', parent: DashboardRoute.name),
          _i7.RouteConfig(AddPost.name,
              path: 'posts', parent: DashboardRoute.name),
          _i7.RouteConfig(ServicesRoute.name,
              path: 'posts', parent: DashboardRoute.name),
          _i7.RouteConfig(SettingsRoute.name,
              path: 'settings', parent: DashboardRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.DashboardPage]
class DashboardRoute extends _i7.PageRouteInfo<void> {
  const DashboardRoute({List<_i7.PageRouteInfo>? children})
      : super(DashboardRoute.name,
            path: '/dashboard', initialChildren: children);

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i2.PostsPage]
class PostsRoute extends _i7.PageRouteInfo<void> {
  const PostsRoute() : super(PostsRoute.name, path: 'posts');

  static const String name = 'PostsRoute';
}

/// generated route for
/// [_i3.CategoryPage]
class CategoryRoute extends _i7.PageRouteInfo<void> {
  const CategoryRoute() : super(CategoryRoute.name, path: 'posts');

  static const String name = 'CategoryRoute';
}

/// generated route for
/// [_i4.AddPost]
class AddPost extends _i7.PageRouteInfo<void> {
  const AddPost() : super(AddPost.name, path: 'posts');

  static const String name = 'AddPost';
}

/// generated route for
/// [_i5.ServicesPage]
class ServicesRoute extends _i7.PageRouteInfo<void> {
  const ServicesRoute() : super(ServicesRoute.name, path: 'posts');

  static const String name = 'ServicesRoute';
}

/// generated route for
/// [_i6.SettingsPage]
class SettingsRoute extends _i7.PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: 'settings');

  static const String name = 'SettingsRoute';
}
