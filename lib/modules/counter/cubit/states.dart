abstract class Counterstates {}

class Counterintialstate extends Counterstates {}

class Counterminusstate extends Counterstates {
  final int counter;

  Counterminusstate(this.counter);
}

class Counterplusstate extends Counterstates {
    final int counter;

  Counterplusstate(this.counter);
}
