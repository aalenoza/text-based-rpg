import 'dart:io';
import 'player.dart';
import 'opponent.dart';

void clearConsole() {
  for (int i = 0; i < 50; i++) {
    print('');
  }
}

void chooseEnemy(Player player,List enemyList) {
  print("There are currently ${enemyList.length} enemies!");
  print("Choose an enemy to battle!");
  for (int i = 0; i < enemyList.length; i++) {
    print("${i+1}. ${enemyList[i].name}");
  }
  String? choice = stdin.readLineSync();
  if (choice != null) {
    int n = int.parse(choice);
    if (fight(player, enemyList[n-1])) {
      enemyList.removeAt(n-1);
    }
  }


}

bool fight(Player player, Opponent enemy) {
  clearConsole();
  print("You have entered battle with ${enemy.name}");
  sleep(Duration(seconds: 1));

  bool isPlayerTurn = true;
  while (true) {

    if(isPlayerTurn){
      print("HP: ${player.hp}                    Enemy HP: ${enemy.hp}");
      print('''
      1. Attack
      2. Abilities''');
      String? choice = stdin.readLineSync();
      if (choice != null) {
        int n = int.parse(choice);
        if (n == 1) {
        player.attack(enemy);
        } else if (n == 2) {
          print("Abilities: ..");
        }
      }
    }
    else{
      print("HP: ${player.hp}                    Enemy HP: ${enemy.hp}");
      enemy.attack(player);
    }


    if(!player.isAlive()){
      print("You lose!");
      return false;
    }
    if(!enemy.isAlive()){
      print("You have beaten ${enemy.name}!");
      return true;
    }

    isPlayerTurn = !isPlayerTurn;
    sleep(Duration(milliseconds: 1000));
  }
  
}