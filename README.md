# Array Challenge Deuce

![HAL](http://i.imgur.com/48iTo2B.png?1)

> I'm sorry, Dave. I'm afraid I can't do that. ~[HAL 9000](https://en.wikipedia.org/wiki/HAL_9000)

## Learning Objectives

- Write a method that takes in an array, performs some checks and returns a new array.
- Call on created method in viewDidLoad().
- Read and run unit tests to check your work.

## Instructions

You have a friend who is really bad at maths, but knew you were a great programmer, so asked if you could help them with a problem they need an answer to.

Their teacher gave them a list of numbers:

- 23
- 36
- 84
- 123
- 7834
- 12
- 5
- 9
- 92
- 274

Their task, and now your task, is to make a new list of the numbers in this list that are odd numbers, and remove the even ones. When you have the final list, remove any numbers above 50 from it and print the values and size of the list before and after doing this.

1. You should add your code into the `viewDidLoad()` method in the _ViewController.swift_ file.
2. Create a function which will take in one argument of type [`Int`] and which returns one array of type [`Int`]. This array will represent your completed list of numbers shown above. For the tests to work, your methods signature should be this: `generateNumbers(_:numberList:)`.
3. Call this function in `viewDidLoad()` and assign the return value of it to the `oddNumbers` variable which has already been created for you (above the `viewDidLoad()` method.

**Quick Note**. How do you read that method signature included in instruction #2? The name of this function should be `generateNumbers`, that underscore `_` means that the first argument to this function will have **NO** external name when it's called, which happens by default. The second argument to this function will have an external name of `numberList` when it's called.

Here's an example.

```swift
func printFavoriteNames(names: [String], colors: [String], numbers: [Int]) {
    // printing all my favorite names, colors and numbers
}
```

We call on this function like so:

```swift
let names = ["Jim", "Bran", "Sansa"]
let colors = ["Red", "Blue", "Green"]
let numbers = [7, 742, 5]

printFavoriteNames(names, colors: colors, numbers: numbers)
```

Notice how when calling the function, the first argument's external name is not there but colors: and numbers: is. So if we were to type out this method signature to someone, we would do so like this:

`printFavoriteNames(_:colors:numbers:)`

[View this lesson on Learn.co](https://learn.co/lessons/ArrayChallengeTwo)
