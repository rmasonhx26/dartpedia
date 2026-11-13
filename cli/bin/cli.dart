import 'package:cli/cli.dart' as cli;

// add constant version
const version = '0.0.1';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Hello, Dart');
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else {
    printUsage();
  }
 // print('Hello world: ${cli.calculate()}!');
 //print('Bujisoft LLC!');
}


void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}


// note dart run returns Hello, Dart
// dart run bin.cli.dart version returns const version 