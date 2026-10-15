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
In this lab we implemented a half subtractor, a full subtractor using one's complement, and finally a twos complement subtractor. 

## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
Functionally they are very similar except instead of assigning our carry to the result of `A & B` we are assigning our carry(borrow) as `(~A & B)` to denote that we are subtracting.

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
The wrap around behavior of ones complement is difficult to implement because if we don't account for it will overwrite the sign bit and circle around into the other half of our bits

### 3 - What is the edge case and problem with Two’s Complement number representation?


