import Nat8 "mo:base/Nat8";
import Nat32 "mo:base/Nat32";
import Nat "mo:base/Nat";
import Text "mo:base/Text";
import Debug "mo:base/Debug";
import Char "mo:base/Char";

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
  public func decimal_to_bits(n : Nat) : async Text {
    var bits_rep : Text = "";
    var rem: Nat = n; 
    // Repeatedly divide by 2 
    while(rem > 0){
      bits_rep := Nat.toText(rem % 2) # bits_rep;
      rem := rem / 2;
    };
    return(bits_rep);
  };

// Challenge 4 - capitalize_character
  private func char_to_decimal(c: Char) : Nat32{
    return(Char.toNat32(c));
  };
  
  private func unicode_to_character(n: Nat32) : Text{
    let char : Char = Char.fromNat32(n); 
    return(Char.toText(char));
  };
  
  public func capitalize_character(c : Char) : async Text{
    var unicode_32 : Nat32 = char_to_decimal(c + 31);
    return(Nat32.toText(unicode_32));
  };


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
