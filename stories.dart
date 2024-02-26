import 'dart:io';
import 'player.dart';
import 'opponent.dart';
import 'fight.dart';

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

void Tutorial() {
  printTextOneCharAtATime("Fighting in this game takes turns... bla bla bla", 10);
  clearConsole();
}

void Prologue(Player player) {
  printTextOneCharAtATime("PROLOGUE", 10);
  sleep(Duration(seconds: 1));
  stdout.write("Welcome ");
  printTextOneCharAtATime("You have entered the world of ron!", 10);
  printTextOneCharAtATime("You are a guard currently in the middle of battle protecting the leader of your village!",10);
  clearConsole();
  print("You are a guard currently in the middle of battle protecting the leader of your village!");
  printTextOneCharAtATime("There are a bunch of enemies!", 20);
  sleep(Duration(seconds: 1));
  print("FIGHT THEM QUICKLY!");
  List prologueEnemies = [NormalEnemy("Knight"),NormalEnemy("Knight")];
  clearConsole();
  Tutorial();
  chooseEnemy(player, prologueEnemies);
  
  
}