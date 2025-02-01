# Ada Integer Overflow Bug

This repository demonstrates a common error in Ada programming: integer overflow in arithmetic operations.

The `bug.ada` file contains a function `Multiply` that multiplies two integers.  However, it lacks proper error handling for potential integer overflow.  If the result of the multiplication exceeds the maximum value representable by the `Integer` type, an overflow occurs, leading to incorrect results or program crashes.

The `bugSolution.ada` file provides a corrected version of the `Multiply` function that addresses the integer overflow issue.