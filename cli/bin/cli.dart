import 'package:cli/cli.dart' as cli;
import 'dart:io'; //addthis line

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
void searchWikipedia(List<String>? arguments) {
  final String articleTitle;

  // if user does not pass in arguments -- request title
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    //await input and provide default empty string if input is null
    articleTitle = stdin.readLineSync() ?? '';
    
    //print('searchWikipedia received arguments: $arguments');
} else {
  //otherwise,  join the arguments into a single string.
  articleTitle = arguments.join(' ');
}

print('Looking up articles about "$articleTitle". Please wait');
print('Here ya go!');
print('(Pretend this is an article about "$articleTitle")');

}
void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}


// note dart run returns Hello, Dart
// dart run bin.cli.dart version returns const version 
/* 
ybuji_ai@Mac-Studio cli % 
mybuji_ai@Mac-Studio cli % dart bin/cli.dart search

Please provide an article title.
Django Ninja
Looking up articles about "Django Ninja". Please wait
Here ya go!
(Pretend this is an article about "Django Ninja")
mybuji_ai@Mac-Studio cli %  */