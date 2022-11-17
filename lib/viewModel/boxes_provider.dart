// ignore_for_file: file_names

import 'package:flutter/material.dart';

class BoxesProvider extends ChangeNotifier {
/////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////SmartCities Data////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////
  int _smartCitiesIndex = 0;
  double _smartCitiesTop = 0.007;
  double _smartCitiesLeft = 0.1;
  bool _smartVisible = true;

  int get getSmartCitiesIndex => _smartCitiesIndex;
  double get getSmartCitiesTop => _smartCitiesTop;
  double get getSmartCitiesLeft => _smartCitiesLeft;
  bool get getSmartVisible => _smartVisible;

  void smartcities() {
    _smartVisible = !_smartVisible;
    if (_smartCitiesIndex == 0) {
      _smartCitiesIndex = 1;
      _smartCitiesTop = 0.005;
      _smartCitiesLeft = 0.15;
      ////////////////////////////
      _digitalTransIndex = 2;
      _digitalTransTop = 0.37;
      _digitalTransLeft = 0.01;
      ///////////////////////////
      _securityIndex = 2;
      _securityTop = 0.37;
      _securityLeft = 0.33;
      //////////////////////////
      _healthIndex = 2;
      _healthTop = 0.37;
      _healthLeft = 0.65;
    } else if (_smartCitiesIndex == 1) {
      _smartCitiesIndex = 0;
      _smartCitiesTop = 0.01;
      _smartCitiesLeft = 0.1;
      ////////////////////////////
      _digitalTransIndex = 0;
      _digitalTransTop = 0.01;
      _digitalTransLeft = 0.53;
      ///////////////////////////
      _securityIndex = 0;
      _securityTop = 0.3;
      _securityLeft = 0.1;
      //////////////////////////
      _healthIndex = 0;
      _healthTop = 0.3;
      _healthLeft = 0.53;
    } else if (_smartCitiesIndex == 2) {
      if (_digitalTransIndex == 2 && _securityIndex == 2) {
        _healthIndex = 2;
        _healthTop = _smartCitiesTop;
        _healthLeft = _smartCitiesLeft;
        _healthVisible = !_healthVisible;
      } else if (_digitalTransIndex == 2 && _healthIndex == 2) {
        _securityIndex = 2;
        _securityTop = _smartCitiesTop;
        _securityLeft = _smartCitiesLeft;
        _securityVisible = !_securityVisible;
      } else if (_securityIndex == 2 && _healthIndex == 2) {
        _digitalTransIndex = 2;
        _digitalTransTop = _smartCitiesTop;
        _digitalTransLeft = _smartCitiesLeft;
        _digitalVisible = !_digitalVisible;
      }

      _smartCitiesIndex = 1;
      _smartCitiesTop = 0.005;
      _smartCitiesLeft = 0.15;
    }

    notifyListeners();
  }

/////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////DigitalTrans Data///////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////
  int _digitalTransIndex = 0;
  double _digitalTransTop = 0.007;
  double _digitalTransLeft = 0.53;
  bool _digitalVisible = true;

  int get getDigitalTransIndex => _digitalTransIndex;
  double get getDigitalTransTop => _digitalTransTop;
  double get getDigitalTransLeft => _digitalTransLeft;
  bool get getDigitalVisible => _digitalVisible;

  void digitaltrans() {
    _digitalVisible = !_digitalVisible;
    if (_digitalTransIndex == 0) {
      _digitalTransIndex = 1;
      _digitalTransTop = 0.005;
      _digitalTransLeft = 0.15;

      ////////////////////////////
      _smartCitiesIndex = 2;
      _smartCitiesTop = 0.37;
      _smartCitiesLeft = 0.01;

      ///////////////////////////
      _securityIndex = 2;
      _securityTop = 0.37;
      _securityLeft = 0.33;

      //////////////////////////
      _healthIndex = 2;
      _healthTop = 0.37;
      _healthLeft = 0.65;
    } else if (_digitalTransIndex == 1) {
      _digitalTransIndex = 0;
      _digitalTransTop = 0.01;
      _digitalTransLeft = 0.53;

      ////////////////////////////
      _smartCitiesIndex = 0;
      _smartCitiesTop = 0.01;
      _smartCitiesLeft = 0.1;

      ///////////////////////////
      _securityIndex = 0;
      _securityTop = 0.3;
      _securityLeft = 0.1;

      //////////////////////////
      _healthIndex = 0;
      _healthTop = 0.3;
      _healthLeft = 0.53;
    } else if (_digitalTransIndex == 2) {
      if (_smartCitiesIndex == 2 && _securityIndex == 2) {
        _healthIndex = 2;
        _healthTop = _digitalTransTop;
        _healthLeft = _digitalTransLeft;
        _healthVisible = !_healthVisible;
      } else if (_smartCitiesIndex == 2 && _healthIndex == 2) {
        _securityIndex = 2;
        _securityTop = _digitalTransTop;
        _securityLeft = _digitalTransLeft;
        _securityVisible = !_securityVisible;
      } else if (_securityIndex == 2 && _healthIndex == 2) {
        _smartCitiesIndex = 2;
        _smartCitiesTop = _digitalTransTop;
        _smartCitiesLeft = _digitalTransLeft;
        _smartVisible = !_smartVisible;
      }

      _digitalTransIndex = 1;
      _digitalTransTop = 0.005;
      _digitalTransLeft = 0.15;
    }
    notifyListeners();
  }

/////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////Security Data///////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////
  int _securityIndex = 0;
  double _securityTop = 0.3;
  double _securityLeft = 0.1;
  bool _securityVisible = true;

  int get getSecurityIndex => _securityIndex;
  double get getSecurityTop => _securityTop;
  double get getSecurityLeft => _securityLeft;
  bool get getSecurityVisible => _securityVisible;

  void security() {
    _securityVisible = !_securityVisible;
    if (_securityIndex == 0) {
      _securityIndex = 1;
      _securityTop = 0.005;
      _securityLeft = 0.15;

      ////////////////////////////
      _smartCitiesIndex = 2;
      _smartCitiesTop = 0.37;
      _smartCitiesLeft = 0.01;

      ///////////////////////////
      _digitalTransIndex = 2;
      _digitalTransTop = 0.37;
      _digitalTransLeft = 0.33;

      //////////////////////////
      _healthIndex = 2;
      _healthTop = 0.37;
      _healthLeft = 0.65;
    } else if (_securityIndex == 1) {
      _smartCitiesIndex = 0;
      _smartCitiesTop = 0.01;
      _smartCitiesLeft = 0.1;

      ////////////////////////////
      _digitalTransIndex = 0;
      _digitalTransTop = 0.01;
      _digitalTransLeft = 0.53;

      ///////////////////////////
      _securityIndex = 0;
      _securityTop = 0.3;
      _securityLeft = 0.1;

      //////////////////////////
      _healthIndex = 0;
      _healthTop = 0.3;
      _healthLeft = 0.53;
    } else if (_securityIndex == 2) {
      if (_digitalTransIndex == 2 && _smartCitiesIndex == 2) {
        _healthIndex = 2;
        _healthTop = _securityTop;
        _healthLeft = _securityLeft;
        _healthVisible = !_healthVisible;
      } else if (_digitalTransIndex == 2 && _healthIndex == 2) {
        _smartCitiesIndex = 2;
        _smartCitiesTop = _securityTop;
        _smartCitiesLeft = _securityLeft;
        _smartVisible = !_smartVisible;
      } else if (_smartCitiesIndex == 2 && _healthIndex == 2) {
        _digitalTransIndex = 2;
        _digitalTransTop = _securityTop;
        _digitalTransLeft = _securityLeft;
        _digitalVisible = !_digitalVisible;
      }

      _securityIndex = 1;
      _securityTop = 0.005;
      _securityLeft = 0.15;
    }
    notifyListeners();
  }

/////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////Health Data/////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////
  int _healthIndex = 0;
  double _healthTop = 0.3;
  double _healthLeft = 0.53;
  bool _healthVisible = true;

  int get getHealthIndex => _healthIndex;
  double get getHealthTop => _healthTop;
  double get getHealthLeft => _healthLeft;
  bool get getHealthVisible => _healthVisible;

  void health() {
    _healthVisible = !_healthVisible;
    if (_healthIndex == 0) {
      _healthIndex = 1;
      _healthTop = 0.005;
      _healthLeft = 0.15;

      ////////////////////////////
      _smartCitiesIndex = 2;
      _smartCitiesTop = 0.37;
      _smartCitiesLeft = 0.01;

      ///////////////////////////
      _digitalTransIndex = 2;
      _digitalTransTop = 0.37;
      _digitalTransLeft = 0.33;

      //////////////////////////
      _securityIndex = 2;
      _securityTop = 0.37;
      _securityLeft = 0.65;
    } else if (_healthIndex == 1) {
      _smartCitiesIndex = 0;
      _smartCitiesTop = 0.01;
      _smartCitiesLeft = 0.1;

      ////////////////////////////
      _digitalTransIndex = 0;
      _digitalTransTop = 0.01;
      _digitalTransLeft = 0.53;

      ///////////////////////////
      _securityIndex = 0;
      _securityTop = 0.3;
      _securityLeft = 0.1;

      //////////////////////////
      _healthIndex = 0;
      _healthTop = 0.3;
      _healthLeft = 0.53;
    } else if (_healthIndex == 2) {
      if (_digitalTransIndex == 2 && _securityIndex == 2) {
        _smartCitiesIndex = 2;
        _smartCitiesTop = _healthTop;
        _smartCitiesLeft = _healthLeft;
        _smartVisible = !_smartVisible;
      } else if (_digitalTransIndex == 2 && _smartCitiesIndex == 2) {
        _securityIndex = 2;
        _securityTop = _healthTop;
        _securityLeft = _healthLeft;
        _securityVisible = !_securityVisible;
      } else if (_securityIndex == 2 && _smartCitiesIndex == 2) {
        _digitalTransIndex = 2;
        _digitalTransTop = _healthTop;
        _digitalTransLeft = _healthLeft;
        _digitalVisible = !_digitalVisible;
      }

      _healthIndex = 1;
      _healthTop = 0.005;
      _healthLeft = 0.15;
    }
    notifyListeners();
  }
}
