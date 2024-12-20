function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else if (x < 0) {
    return 0; // Handle negative inputs
  } else if (x > 12) { // Add a check to avoid stack overflow for large inputs
    return 0; // Or handle it appropriately, e.g., using an iterative approach
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
}

This improved version adds a check for negative values and large inputs to prevent a stack overflow.  For very large inputs, an iterative approach would be more efficient than recursion.