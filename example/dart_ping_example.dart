import 'package:dart_ping/dart_ping.dart';

void main() async {
  // Create ping object with desired args
  final ping = Ping('google.com', count: 5);

  // Preview command that will be run (helpful for debugging)
  print('Running command: ${ping.command}');

  // Begin ping process and listen for output
  ping.stream.listen((event) {
    print(event);
  });

  // Waiting for ping to output first two results
  // Not needed in actual use. For example only
  await Future.delayed(Duration(seconds: 2));

  // Stop the ping prematurely and output a summary
  // Make sure you do not call this before listening to the stream!
  await ping.stop();
}
