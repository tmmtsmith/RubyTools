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
