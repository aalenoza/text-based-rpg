import 'opponent.dart';

double computeDamage(double player_atk, double enemy_def) {
  double damage = player_atk * (1- (enemy_def / 100));
  return damage;
}

class Player {
  String? name;
  double hp = 10;
  double level = 1;
  double atk = 5;
  double def = 5;
  List inventory = [];

  Player(String this.name);

  void attack(Player player, Opponent enemy) {
    enemy.hp = enemy.hp - computeDamage(player.atk, enemy.atk);
  }

}


