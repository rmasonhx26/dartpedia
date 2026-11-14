
import 'dart:io'; //addthis line
import 'package:http/http.dart' as http; // add http to project
import 'package:command_runner/command_runner.dart'; // make command_runner available to use

void main(List<String> arguments) async { // main is now async and awaits the runner
var runner = CommandRunner(); // Create an instance of your new CommandRunner
await runner.run(arguments); // Call its run method, awaiting its Future<void>
}


// stopped at Organize Code --- 