class ConversiValue {
  String result = '0';
  double valueTemp = 0;
  void conversi(String value, String to, String from) {
    switch (from) {
      case 'Celsius':
        _celsius(value, to);
        break;
      case 'Fahrenheit':
        _fahrenheit(value, to);
        break;
      case 'Reamur':
        _reamur(value, to);
        break;
      default:
        _kelvin(value, to);
        break;
    }
  }

  _celsius(String value, String to) {
    switch (to) {
      case 'Fahrenheit':
        valueTemp = (double.parse(value) * 9 / 5) + 32;
        result = valueTemp.toStringAsFixed(2);
        break;
      case 'Reamur':
        valueTemp = (double.parse(value) * 4 / 5);
        result = valueTemp.toStringAsFixed(2);
        break;
      case 'Kelvin':
        valueTemp = (double.parse(value) + 273.15);
        result = valueTemp.toStringAsFixed(2);
        break;
      default:
        valueTemp = double.parse(value);
        result = valueTemp.toStringAsFixed(2);
        break;
    }
  }

  _kelvin(String value, String to) {
    switch (to) {
      case 'Fahrenheit':
        valueTemp = ((double.parse(value) - 273.15) * 9 / 5) + 32;
        result = valueTemp.toStringAsFixed(2);
        break;
      case 'Reamur':
        valueTemp = (double.parse(value) - 273.15) * 4 / 5;
        result = valueTemp.toStringAsFixed(2);
        break;
      case 'Celsius':
        valueTemp = (double.parse(value) - 273.15);
        result = valueTemp.toStringAsFixed(2);
        break;
      default:
        valueTemp = double.parse(value);
        result = valueTemp.toStringAsFixed(2);
        break;
    }
  }

  _fahrenheit(String value, String to) {
    switch (to) {
      case 'Kelvin':
        valueTemp = ((double.parse(value) - 32) * 5 / 9) + 273.15;
        result = valueTemp.toStringAsFixed(2);
        break;
      case 'Reamur':
        valueTemp = (double.parse(value) - 32) * 4 / 9;
        result = valueTemp.toStringAsFixed(2);
        break;
      case 'Celsius':
        valueTemp = (double.parse(value) - 32) * 5 / 9;
        result = valueTemp.toStringAsFixed(2);
        break;
      default:
        valueTemp = double.parse(value);
        result = valueTemp.toStringAsFixed(2);
        break;
    }
  }

  _reamur(String value, String to) {
    switch (to) {
      case 'Kelvin':
        valueTemp = (double.parse(value) * 5 / 4) + 273.15;
        result = valueTemp.toStringAsFixed(2);
        break;
      case 'Celsius':
        valueTemp = double.parse(value) * 5 / 4;
        result = valueTemp.toStringAsFixed(2);
        break;
      case 'Fahrenheit':
        valueTemp = (double.parse(value) * 9 / 4) + 32;
        result = valueTemp.toStringAsFixed(2);
        break;
      default:
        valueTemp = double.parse(value);
        result = valueTemp.toStringAsFixed(2);
        break;
    }
  }
}
