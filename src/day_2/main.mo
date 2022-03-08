import Nat8 "mo:base/Nat8";
import Text "mo:base/Text";
import Debug "mo:base/Debug";
actor {
// Challenge 1 - nat_to_nat8

  public func nat8_to_nat(n : Nat8) : async Nat {
    return(Nat8.toNat(n));
  };


// Challenge 2 - max_number_with_n_bits
  public func max_number_with_n_bits(n: Nat) : async Nat {
    return(n*n-1);
  };


// Challenge 3 - decimal_to_bits
  public func decimal_to_bits(n : Nat8) : async Text {
    let bits_rep : Text = "";
    //Assuming Nat8
    // Divide by ((8th power of 2) - 1) and distinguish the result and remainder
    // Subtract the remainder from the total
    // Divide by ((7th power of 2) - 1) and distinguish the result and remainder 
    for(i in Iter.range(8, 0)){
      return(i);
    };
    return();
  };


// Challenge 4 - capitalize_character
//  public func 


// Challenge 5 - capitalize_text
//  public func 


// Challenge 6 - is_inside
//  public func 



// Challenge 7 - trim_whitespace
//  public func 



// Challenge 8 - duplicated_character
//  public func 



// Challenge 9 - size_in_bytes
//  public func 



// Challenge 10 - bubble sort
//  public func 


};
