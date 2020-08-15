import 'package:auto_route/auto_route_annotations.dart';
import 'package:udemy_explanation/presentation/first_page.dart';
import 'package:udemy_explanation/presentation/second_page.dart';
import 'package:udemy_explanation/presentation/third_page.dart';

@MaterialAutoRouter(routes: [
  MaterialRoute(page: FirstPage, initial: true),
  MaterialRoute(page: SecondPage),
  MaterialRoute(page: ThirdPage),
]) //CustomAutoRoute(..config)
class $Router {}
