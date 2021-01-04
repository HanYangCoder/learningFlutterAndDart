import 'dart:io';

void main(){

  stdout.writeln('Type something!');
  String input = stdin.readLineSync();
  stdout.writeln('$input');
}