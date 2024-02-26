import 'opponent.dart';

double computeDamage(double player_atk, double enemy_def) {
  double damage = player_atk * (1- (enemy_def / 100));
  return damage;
}

class Player implements Attacker, Damageable{
  String? name;
  double hp = 10;
  double level = 1;
  double atk = 5;
  double def = 5;
  List inventory = [];
  List abilities = [];

  Player(String? this.name);

  void attack(Damageable target) {
    double damage = computeDamage(this.atk, target.def);
    target.takeDamage(damage);
    print("${this.name} attacked and inflicted $damage damage");
  }

  void takeDamage(double damage){
    this.hp = this.hp - damage;
  }

  bool isAlive() {
    if (hp > 0) {
      return true;
    } else {
      return false;
    }
  }

}

class Warrior extends Player {
  Warrior(Player player) : super(player.name) {
    hp = player.hp;
    level = player.level;
    atk = player.atk * 1.2;
    def = player.def * 1.4;
    abilities.add(this.furyAttack);
  }

  void furyAttack(Player player, Opponent enemy) {
    enemy.hp = enemy.hp - (computeDamage(player.atk, enemy.def) + 10);
  }
}

class Assassin extends Player {
  Assassin(Player player) : super (player.name) {
    hp = player.hp;
    level = player.level;
    atk = player.atk * 2;
    def = player.def * 0.6;
    abilities.add(this.quickSlash);
  }
  void quickSlash(Player player, Opponent enemy) {
    enemy.hp = enemy.hp - (computeDamage(player.atk, enemy.def * 0.6));
  }
}


abstract class Attacker{
  void attack(Damageable target);
}

abstract class Damageable{
  double def = 0;
  void takeDamage(double damage);
}


