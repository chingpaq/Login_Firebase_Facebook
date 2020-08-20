import "package:flutter/material.dart";
import "package:stacked/stacked.dart";
import '../viewModels/startup_view_model.dart';

class StartUpView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartUpViewModel>.reactive(
      onModelReady: (model) => model.handleStartUpLogic(),
      viewModelBuilder: () => StartUpViewModel(context: context),
      builder: (context, model, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => model.updateCounter(),
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
              CircularProgressIndicator(
                strokeWidth: 3,
                valueColor: AlwaysStoppedAnimation(Color(0xff19c7c1)),
              ),
            ],
          ),
        ),
      ),
    );

    throw UnimplementedError();
  }
}
