# Hack Recursion Bug
This repository demonstrates a common error in Hack programming: stack overflow errors caused by recursive functions lacking a proper base case.  The `bug.hack` file contains the erroneous code. The `bugSolution.hack` file provides a corrected version.

## How to reproduce:
1. Clone the repository.
2. Compile and run `bug.hack` with a large input (e.g., `hhc bug.hack` and then run the compiled file).  You'll observe a stack overflow error.
3. Compile and run `bugSolution.hack`. It will calculate the factorial correctly.

## Description of the Error:
The original factorial function uses recursion but doesn't properly stop the recursion for large numbers, leading to exceeding the call stack's capacity. This results in a stack overflow error.  The correct solution involves ensuring that the recursive calls eventually reach a base case that terminates the recursion.