import 'package:cli/cli.dart' as cli;

// add constant version
const version = '0.0.1';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Hello, Dart');
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  }
 // print('Hello world: ${cli.calculate()}!');
 //print('Bujisoft LLC!');
}


// note dart run returns Hello, Dart
// dart run bin.cli.dart version returns const version 