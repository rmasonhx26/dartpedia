
/* import 'dart:io'; //addthis line
import 'package:http/http.dart' as http; // add http to project
import 'package:command_runner/command_runner.dart'; // make command_runner available to use

void main(List<String> arguments) async { // main is now async and awaits the runner
var runner = CommandRunner(); // Create an instance of your new CommandRunner
await runner.run(arguments); // Call its run method, awaiting its Future<void>
}


// stopped at Organize Code ---  */

// replace contents
import 'package:command_runner/command_runner.dart';

void main() {
  final verboseOption = Option(
    'verbose',
    type: OptionType.flag,
    abbr: 'v',
    help: 'Display extra logging information.',
  );

  print('Defined option: ${verboseOption.name}');
  print('Usage: ${verboseOption.usage}');
}

// dart run bin/cli.dart
/* 

What you accomplished
A summary of the concepts and code introduced in this lesson.
Created the Option and ArgResults classes to structure command-line arguments and parsed output.

Used this.fieldName syntax for automatic field initialization and defined optional and required named parameters with {} and required.

Implemented the usage getter to format option help text on demand without storing duplicate string state.

Defined the OptionType enum to represent valid option types (flag and option), ensuring compile-time safety.
 */

