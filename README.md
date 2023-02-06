# Ruby Practice

 1. Open a file (e.g. `conditionals_rps.rb`) in the editor window.
 1. Modify the file per the instructions on top.
 1. Run your Ruby file by typing `ruby ` and then the name of the file you want to run in the terminal. If we want to run `conditionals_rps.rb`, we can write the command:

      ```bash
      ruby conditionals_rps.rb
      ```
   
      Remember, if there are multiple files with similar names, start typing the name and then just press <kbd>Tab</kbd> on your keyboard to let the terminal complete the name. You rarely need to type full filenames out — use **tab completion**!

1. To re-run this command, you can use the <kbd>Up ↑</kbd> and <kbd>Down ↓</kbd> arrow keys to look at the history of commands you've run in a terminal.
1. When you think you have the required output, run `rails grade` and proceed when the test passes without errors.

If you are struggling, **try to experiment directly in the IRB environment** by typing `irb` into the terminal and pressing enter. This will start an interactive Ruby terminal, where you can enter individual lines of Ruby to see their output. If you start `irb` then the terminal will no longer be in the `bash` environment so things like `rails grade` won't work. You will need to open a second terminal with the plus (+) icon and switch between the `irb` and `bash` terminals as needed. Alternatively type `exit` at the IRB terminal prompt to return to the `bash` environment.

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
