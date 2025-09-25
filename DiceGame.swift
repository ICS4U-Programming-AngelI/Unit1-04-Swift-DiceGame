import Foundation // Import Foundation  

// Constants for minimum and maximum dice values
let minNumber: Int = 1   // Minimum dice number
let maxNumber: Int = 6  // Maximum dice number

// Generate a random number between minNumber and maxNumber 
let correctNumber = Int.random(in: minNumber...maxNumber) // variable name for the true answer

// Print welcome messages to the user
print("Welcome to the Dice Game!")
print("I have rolled a number between \(minNumber) and \(maxNumber).")
print("Try to guess it!")

// Variables to track number of attempts
var attempts = 0   // Counts how many guesses the player has made
var isPlaying = true  //  true means game continues

// start the loop
while isPlaying {
    print("Enter your guess:")   // Ask the user to enter their guess

    if let input = readLine() {  // Read user input as a String
        if let guess = Int(input) {   // converting input to an integer
            // Check if the guess is within valid range
            if guess < minNumber || guess > maxNumber {
                print("Please enter a number between \(minNumber) and \(maxNumber).")
            } else {
                attempts = attempts + 1  // Increment attempt count by 1
                if guess < correctNumber {      
                    print("Too low! Try again.")  // Guess is too low
                } else if guess > correctNumber {
                    print("Too high! Try again.") // Guess is too high
                } else {
                    // Guess is correct!
                    // Prints this with the exact way for attempts
                    print("Correct! You guessed it in \(attempts) attempt\(attempts == 1 ? "" : "s").")
                    isPlaying = false  // End loop
                }
            }
        } else {
            // Incorrect input
            print("Invalid input. Please enter a whole number between 1 and 6.")
        }
    } else {
        // print this for error
        print("No input detected.")
    }
}
