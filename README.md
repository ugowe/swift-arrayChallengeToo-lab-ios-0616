# Array Challenge Deuce

![HAL](images/HAL9000.png)

> I'm sorry, Dave. I'm afraid I can't do that. ~[HAL 9000](https://en.wikipedia.org/wiki/HAL_9000)

## Learning Objectives - The student should be able to..

- Complete this lab which challenges them on what they have learned about arrays up to this point.
- This should actually reflect what it is we're looking to cover here (similar to the outlines provided in the labs I mentioned in the outline below).

## What the student can do at this point

- Create variables and constants
- Is familiar with type annotations, type inference and string interpolation.
- Can create functions with return types.
- Is familiar with the String, Int, Double, and Bool type.
- Can perform arithmetic operations on Int and Double.
- Understands if and else clause statements.
- Can create and use Arrays.
- Can iterate over an Array using a for-in loop.
- Can iterate over an Array calling enumerate().
- Work with the following methods on arrays:

  - `append()`
  - `insert(_:atIndex:)`
  - `removeAtIndex()`
  - _subscript syntax_ with arrays
  - `count`
  - `isEmpty`

## Outline / Notes

- **Feel free** to design to design the lab and have it include UI Stuff similar to the following Labs:

  - [Lab using Storyboard](https://github.com/learn-co-curriculum/swift-viewLifeCycle-lab)
  - [Dictionary Lab Outline](https://github.com/learn-co-curriculum/swift-dictionaryBillOrSteve-lab)

- I'm including labs written for the iOS immersive course here that you can reference (or flat our steal) They were written in Objective-C which this course is not! They are labs that students seemed to like in the immersive program. They also serve as a good reference for what a **lab** actually should look like. You can see how we structure the lab with regards to the instructions as well as how the tests are written.

- [WWDC Badges With Methods - OBJ-C](https://learn.co/tracks/ios-new/objective-c-basics/basic-structures/wwdc-badges-with-methods)

- [Deli Counter Lab - OBJ-C](https://learn.co/tracks/ios-new/objective-c-basics/basic-structures/deli-counter)
- [Array Practice - OBJ-C](https://github.com/learn-co-curriculum/objc-array-practice)
- [Boat - SWIFT](https://github.com/learn-co-curriculum/swift-boat) <-- This is not a lab about arrays, but it is a lab written in Swift where you can reference how the the tests were written using Quick & Nimble.

- I've included the Xcode project which includes the Quick & Nimble frameworks installed using CocoaPods. You should work within the .xcworkspace file, NOT the project file.

--------------------------------------------------------------------------------

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
