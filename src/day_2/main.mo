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
   
  private func unicode_to_character(n: Nat32) : Text {
    let char : Char = Char.fromNat32(n); 
    return(Char.toText(char));
  };
  
  private func character_to_unicode(c : Char) : Nat32 {
    let unicode : Nat32 = Char.toNat32(c); 
    return(unicode);
  };

  public func capitalize_character(c : Char) : async Nat32{
    if(Char.isAlphabetic(c)){
      let unicode : Nat32 = character_to_unicode(c);
      return(unicode - 32);
    } else {
      return (0);
    };
    
  };


// Challenge 5 - capitalize_text
  public func capitalize_text(t : Text) : async Text {
    var cap_text : Text = "";
    for(char in t.chars()){
      var nat32_char = Char.toNat32(char);
      nat32_char :=  nat32_char - 32;
      let cap_char : Char = Char.fromNat32(nat32_char);
      cap_text := cap_text # Char.toText(cap_char);
    };
    return cap_text;
  };


// Challenge 6 - is_inside
  public func is_inside(t : Text, c : Char) : async Bool {
    for(char in t.chars()){
      if(Char.toNat32(char) == Char.toNat32(c)){
        return true;
      };
    };
    return false;
  };



// Challenge 7 - trim_whitespace
//  public func 



// Challenge 8 - duplicated_character
//  public func 



// Challenge 9 - size_in_bytes
//  public func 



// Challenge 10 - bubble sort
//  public func 


};
