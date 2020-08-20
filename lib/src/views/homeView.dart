import "package:flutter/material.dart";
import "package:stacked/stacked.dart";
import '../viewModels/home_view_model.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      //onModelReady: (model) => model.handleStartUpLogic(),
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => model.logoutUser(),
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(model.title),
              SizedBox(
                width: 300,
                height: 100,
                //child: Image.asset('assets/images/icon_large.png'),
              ),
            ],
          ),
        ),
      ),
    );

      throw UnimplementedError();
  }
}
