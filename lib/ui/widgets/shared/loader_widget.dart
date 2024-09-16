import 'package:flutter/material.dart';

class LoaderWidget extends StatelessWidget {
  final dynamic object;
  final Function callback;

  const LoaderWidget({ super.key, required this.object, required this.callback });

   @override
   Widget build(BuildContext context) {
    if (object == null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    if (object.length == 0) {
      return const Center(
        child: Text("Nenhum item encontrado"),
      );
    }
       return callback();
  }
}