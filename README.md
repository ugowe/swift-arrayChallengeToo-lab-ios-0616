# Array Challenge Deuce

![haveWhatSheshaving](http://i.imgur.com/anXw03E.png?1)

> [to waiter] I'll have what she's having. ~[Estelle Reiner](https://en.wikipedia.org/wiki/Estelle_Reiner)

## Learning Objectives

- Write a method that takes in an array, performs some checks and returns a new array.
- Call on created method in viewDidLoad().
- Read and run unit tests to check your work.

## Instructions

Lets pretend for this lab that we own a deli.

![deli](http://i.imgur.com/4CElvfV.png?1)

Our deli is one of the busiest delis in New York City (therefore one of the busiest on Earth). Our job is to create a system that represents a line. Someone enters the store, they enter our line. Our server then needs to able to state "Now serving x!" x being the individuals name. There's one catch! If our customer is either Meg Ryan or Billy Crystal, they will jump to the front of the line.

![harrySally](http://i.imgur.com/prEsj71.jpg?1)  

- (**1**) `addName(_:toDeliLine:)` should take in two arguments, one of type `String`, the other being of type [`String`]. This function should return back an array of type [`String`].
- (**2**) `deliLineDescription(_:)` should take in an array of type [`String`] as an argument and return a `String`.
- (**3**) `servingNextCustomerInLine(_:)` takes in one argument of type [`String`], and returns a `String`.



These three functions should be defined in the `ViewController.swift` file.  

(**1**) - This method should first create a new Deli Line which is equal to the Deli Line that is passed in as an argument to this method. Should this new array of type [`String`] be created with the `let` or `var` keyword? Add the name given to us as an argument to this method which is of type `String` to this newly made array. Return this array (which now includes the name) back to the caller of the method. ONE CAVEAT! If the name passed in is "Meg Ryan" or "Billy Crystal" they are immediately brought to the front of the line and not added to the end of the line. Make sure you account for that otherwise we will get very bad press (also.. your tests won't pass).  

(**2**) - This method will take in an array in as an argument of type [`String`]. This represents a deli line. We need to return back to the caller of this method a `String`.  
* If there are no customers in this line, return the string "The line is currently empty."
* Otherwise, return a formatted string beginning with the "The line is:", and appending every customer in the line on a new line `\n` beginning with their number in the line. For example

"The line is:  
1. Albert Einstein  
2. Cher  
3. Neil deGrasse Tyson  
4. Yoshi"
 

(**3**) - This method takes one argument of type [`String`] and returns a `String`. The `[String`] array given to us an argument to this method is our del line. But what should our `String` look like that we're required to return? If we have a line as follows
```swift
let line = ["Bob", "Barry", "Becca"]
```
The `String` to be returned back to the caller should be as follows:  
"Now serving Bob!"  

If the line is empty, it should produce the following `String` and return it back to the caller:
  
"There is no-one to be served!"  

This method should also do one more thing. If the line wasn't empty and it's able to serve someone, it should remove that person from the front of the line as well. Continuing with this example, the line should then wind up looking like this:

```swift
["Barry", "Becca"]
```


[View this lesson on Learn.co](https://learn.co/lessons/ArrayChallengeTwo)
