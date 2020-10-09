# Ruby Practice

Run your Ruby file by typing `ruby ` and then the name of the file you want to run in the Terminal.

If we want to run `conditionals_rps.rb`, we can write the command:

```bash
ruby conditionals_rps.rb
```

To re-run this command, you can use the UP and DOWN arrow keys to look at the history of commands you've run in a Terminal.

## Conditionals

### conditionals_rps.rb

Write a program that:

Asks the player to input rock, paper, or scissors.
Based on what the player chose, prints "You played rock!" or "You played paper!" or "You played scissors!"
The computer is pretty dumb in this version of our game; it always plays scissors. Print "The computer played scissors!"
Based on what the player chose, prints "You won!" or "You lost!" or "You tied!"
If you need a refresher on the rules of Rock, Paper, Scissors: https://en.wikipedia.org/wiki/Rock%E2%80%93paper%E2%80%93scissors


### conditionals_palindrome.rb

Ask for a word, check if it is a palindrome, and display true if it is one and false if it isn't.

A word is a palindrome if it reads the same backwards as forwards, e.g. "madam".

Remember to display the actual value true or false, not the strings containing the letters "true" or "false".

Input:
`hannah`

Key output:
`true`

Complete input and output example:
```bash
"Enter one word"
hannah
true
```

## Specs
<details>
  <summary>Click here to see names of each test</summary>

conditionals_rps.rb should output 'You lost!' given the input 'paper' 

conditionals_palindrome.rb should output 'true' given the input 'HanNah' 

conditionals_palindrome.rb should output 'false' given the input 'candy' 

conditionals_palindrome.rb should output 'false' given the input 'racecars' 

conditionals_palindrome.rb should output 'true' given the input 'racecar' 

conditionals_rps.rb should output 'You won!' given the input 'rock' 

conditionals_rps.rb should output 'You tied!' given the input 'scissors' 

</details>
