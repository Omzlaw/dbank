import Debug "mo:base/Debug";

actor DBank {
  var currentValue: Nat = 300;
  currentValue := 100;

  public func topUp(amount: Nat) {
    currentValue += amount;
    Debug.print(debug_show(currentValue));
  };

  public func withdraw(amount: Nat) {
    let tempValue: Int - currentValue - amount;
    if(tempValue >= 0) {
      currentValue -= amount;
      Debug.print(debug_show(currentValue));
    } else {
      Debug.print("Amount too large, current value will be less than zero");
    }
  }


}