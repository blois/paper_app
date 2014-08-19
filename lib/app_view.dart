import 'dart:html';

import 'package:polymer/polymer.dart';
import 'package:web_components/polyfill.dart' as web_components;

@CustomTag('app-view')
class AppView extends PolymerElement {

  AppView.created() : super.created() {
    web_components.customElementsReady.then((_) {
      print('Startup time: ${window.performance.now()}');
    });
  }

  void reload() {
    window.location.reload();
  }
}

