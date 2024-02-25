import 'player.dart';

double computeDamage(double enemy_atk, double player_def) {
  double damage = enemy_atk * (1- (player_def / 100));
  return damage;
}

class Opponent {
  String? name;
  double hp = 10;
  double level = 1;
  double atk = 5;
  double def = 5;

  Opponent(String? this.name);

  void attack(Opponent enemy, Player player) {
    double damage = computeDamage(enemy.atk, player.def);
    player.hp = player.hp - damage;
  }

  bool isAlive() {
    if (hp > 0) {
      return true;
    } else {
      return false;
    }
  }
  
  
}

class NormalEnemy extends Opponent {
  NormalEnemy(String name) : super(name) {
    
  }
}