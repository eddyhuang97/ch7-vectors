# Exercise 3: Vector and function practice

# Create a vector `marbles` with 6 different colors in it (representing marbles)
marbles <- c("orange", "yellow", "red", "purple", "gold", "black")

# Use the `sample` function to select a single random marble
# You may have to read documentation for 'sample'
sample(marbles, 1)

# Write a function MarbleGame that does the following:
# - Takes in a `guess` of a marble color
# - Randomly samples a marble
# - Returns whether or not the person guessed accurately (preferrably a full phrase)
MarbleGame <- function(guess) {
  if (sample(marbles, 1) == guess) {
    return("You got it right!")
  } else {
    return("Nope")
  }
}
MarbleGame("orange")

# Play the marble game!


# Bonus: Play the marble game until you win, keeping track of how many tries you take


## Double bonus(answer not provided): play the game 1000X (until you win) and track the average number of
## tries

MarbleGameHelper <- function(guess) {
  return(sample(marbles, 1) == guess)
}
## Is it what you expected based on the probability?

Try <- function(tries, guess) {
  initial <- 0
  for(i in 1:tries) {
    if (MarbleGameHelper(guess)) {
      initial <- initial + 1
    }
  }
  return (initial / guess)
}

cat(Try(1000, "orange"))
 