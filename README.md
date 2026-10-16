# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Group 9: Marina and Evan

## Summary
In this lab we implemented a half subtractor, summation with one's complement, and a converter for twos complement. We also were given a demonstration on how to implement a for loop in verilog.

## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
Functionally they are very similar except instead of assigning our carry to the result of `A & B` we are assigning our carry(borrow) as `(~A & B)` to denote that we are subtracting.

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
The end-carry is hard to implement because it’s the final carry-out of the whole addition, so it isn’t known until the carry has rippled through every full adder. Ones' complement then has to add that carry back into the LSB, which means a second addition on the result of the first. Connecting the carry-out directly to the first adder’s carry-in would create a combinational loop, because that carry-in would depend on its own input. So it takes two chains of full adders, which costs more hardware and a longer delay than two’s complement, where one adder chain with a +1 is enough.

### 3 - What is the edge case and problem with Two’s Complement number representation?
The edge case is negating the minimum number. For an 8-bit value trying to find the two's complement of -128 doesn't work. Flipping the bits gives `0111 1111` (+127) and adding 1 overflows into the sign bit. The result is `1000 0000` which is -128 again.

