void main(List<String> args) {
  
  if (args.isEmpty) {
    print('Please provide a number as an argument');
  }
  
  int nb = int.parse(args[0]);

  // check if number is bigger or equal to 80
  // otherwise print error message to assertion fail
  assert(nb >= 80,
      'Uncaught Error: Assertion failed: "The score must be bigger or equal to 80');

  // if assertion pass, print "You passed the test with $number"
  print('You Passed');
}