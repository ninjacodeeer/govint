import 'package:flutter/material.dart';
import 'package:govint/app/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  const app = GovintApp();
  runApp(app);
}
