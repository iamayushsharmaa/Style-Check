import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stylecheck/home.dart';
import 'package:stylecheck/presentation/screens/addinvoice/add_invoice.dart';
import 'package:stylecheck/presentation/screens/additem/add_items.dart';

GoRouter createRouter() {
  final initialLocation = '/addinvoice';

  return GoRouter(
    debugLogDiagnostics: true,
    initialLocation: initialLocation,
    routes: [
      GoRoute(
        path: '/home',
        name: 'home',
        builder: (context, state) => const Home(),
      ),
      GoRoute(
        path: '/addinvoice',
        name: 'addInvoice',
        builder: (context, state) => const AddInvoice(),
      ),
      GoRoute(
        path: '/additem',
        name: 'addItem',
        builder: (context, state) => const AddItems(),
      ),
    ],
    errorBuilder: (context, state) =>
        Scaffold(body: Center(child: Text('Page not found: ${state.uri}'))),
  );
}
