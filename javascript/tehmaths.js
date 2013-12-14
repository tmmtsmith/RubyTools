rate = function(n,o) {
    x = (((n-o)/o)*100);
    return x;
};

rate(34,31);



// Inverting functions

var isMultipleOfThree = function (x) {
  return x % 3 === 0;
};

// The ! inverts isMultipleOfThree
var isNotMultipleOfThree = function (x) {
  return !isMultipleOfThree(x);
};

// Also:

var isOdd = function(x) {
    return x % 2 !== 0;
}

var isEven = function(x) {
    return !isOdd(x);
}


// Switch statement
var op = "*";
var result;

switch (op) {
    
  case "*":
    result = (x * y);
  break;
  
  case "/":
      result = (x / y);
  break;
    
    
  default:
    result = "Multiply or divide operator only.";
  break;  
}
