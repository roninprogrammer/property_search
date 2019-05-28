import 'package:flutter/material.dart';
import 'package:propertyfinder/api/properties_scoped_model.dart';
import 'package:propertyfinder/screens/screen_search.dart';
import 'package:scoped_model/scoped_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final PropertyScopedModel propertyScopedModel = PropertyScopedModel();

  @override
  Widget build(BuildContext context) {
    propertyScopedModel.initializeValues();

    return ScopedModel<PropertyScopedModel>(
      model: propertyScopedModel,
      child: MaterialApp(
        title: 'UEMProperty',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          accentColor: Colors.deepOrange,
        ),
        home: SearchScreen(),
      ),
    );
  }
}