import 'player.dart';
import 'dart:io';
import 'stories.dart';

void clearConsole() {
  for (int i = 0; i < 50; i++) {
    print('');
  }
}

void printTextOneCharAtATime(String? text, int delay) {
  if (text == null) {
    print("Text is null.");
    return;
  }
  
  for (int i = 0; i < text.length; i++) {
    sleep(Duration(milliseconds: delay));
    stdout.write(text[i]);
    
  }
  stdout.writeln(); // Move to the next line after printing the entire text
}

main() {
  clearConsole();
  printTextOneCharAtATime("████████████████████████████████████████████████████████████████████████████████████████████████████████", 10);
  clearConsole();
  print('''
   ▄████████  ▄██████▄  ███▄▄▄▄      ▄████████         ▄██████▄     ▄████████   ▄▄▄▄███▄▄▄▄      ▄████████ 
  ███    ███ ███    ███ ███▀▀▀██▄   ███    ███        ███    ███   ███    ███ ▄██▀▀▀███▀▀▀██▄   ███    ███ 
  ███    ███ ███    ███ ███   ███   ███    █▀         ███    █▀    ███    ███ ███   ███   ███   ███    █▀  
 ▄███▄▄▄▄██▀ ███    ███ ███   ███   ███              ▄███          ███    ███ ███   ███   ███  ▄███▄▄▄     
▀▀███▀▀▀▀▀   ███    ███ ███   ███ ▀███████████      ▀▀███ ████▄  ▀███████████ ███   ███   ███ ▀▀███▀▀▀     
▀███████████ ███    ███ ███   ███          ███        ███    ███   ███    ███ ███   ███   ███   ███    █▄  
  ███    ███ ███    ███ ███   ███    ▄█    ███        ███    ███   ███    ███ ███   ███   ███   ███    ███ 
  ███    ███  ▀██████▀   ▀█   █▀   ▄████████▀         ████████▀    ███    █▀   ▀█   ███   █▀    ██████████ 
  ███    ███                                                                                               
  ''');
  // stdout.write('Enter your name: ');
  // String? userInput = stdin.readLineSync();
  // Player player_character = Player(userInput);
  sleep(Duration(seconds: 1));
  clearConsole();
  Player player_character = Player("You");
  Prologue(player_character);
  
  
}