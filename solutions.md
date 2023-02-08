# Solutions

## rps.rb

```ruby
player_move = gets.chomp

p "You played #{player_move}!"

comp_move = "scissors"

p "The computer played #{comp_move}!"

if player_move == "rock"
  p "You won!"
elsif player_move == "paper"
  p "You lost!"
else
  p "You tied!"
end
```

## palindrome.rb

```ruby
word = gets.chomp.downcase
p word == word.reverse
```
