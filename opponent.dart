import 'player.dart';

double computeDamage(double enemy_atk, double player_def) {
  double damage = enemy_atk * (1- (player_def / 100));
  return damage;
}

class Opponent implements Attacker, Damageable{
  String? name;
  double hp = 10;
  double level = 1;
  double atk = 5;
  double def = 5;

  Opponent(String? this.name);

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

class NormalEnemy extends Opponent {
  NormalEnemy(String name) : super(name) {
    
  }
}