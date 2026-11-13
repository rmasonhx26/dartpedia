import 'package:cli/cli.dart' as cli;

// add constant version
const version = '0.0.1';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    print('Hello, Dart');
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') { 
    // add new block
   // print('Search Command recognized');
   final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
   searchWikipedia(inputArgs);

  } else {
    printUsage();
  }
 // print('Hello world: ${cli.calculate()}!');
 //print('Bujisoft LLC!');
}

// search wikepedia
void searchWikipedia(List<String> ? arguments) {
  print('searchWikipedia received arguments: $arguments');
}


void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}


// note dart run returns Hello, Dart
// dart run bin.cli.dart version returns const version 