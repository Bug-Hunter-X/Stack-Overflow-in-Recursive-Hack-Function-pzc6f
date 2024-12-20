function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
}

This code will cause a stack overflow error if a large value is passed in as argument because of the recursive call without a base case that is never reached.  While this is a common error, the specific issue of the lack of a properly handled base case in a recursive function can lead to problems that are difficult to diagnose.