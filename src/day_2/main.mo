import Nat8 "mo:base/Nat8";
actor {

public func nat8_to_nat(n : Nat8) : async Nat {
  return(Nat8.toNat(n));
};

};
