/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)

 ## The Basics
What are generics and how can I use them?

*/
import Foundation
code(for: "Add Example 1") {
    // create a function that will add two Int's and print the result
    func add(_ num1: Int, _ num2: Int) {
        print(num1 + num2)
    }
    
    add(15, 17)
//    add(12.4, 15.2)
}

code(for: "Add Example 2 - Generics") {
    // Convert the code to add two numbers of ANY Type
    func add<T: Numeric>(_ num1: T, _ num2: T) {
        print(num1 + num2)
    }
    add(15, 17)
    add(12.4, 15.2)
//    add("Stewart", "Lynch")
}

code(for: "Add Example 3 - Stings and Arrays") {
    // Create a function that will accept two strings, or two arrays of primitive types and join them together
    func add<T: RangeReplaceableCollection>(_ arg1: T, _ arg2: T) {
        print(arg1 + arg2)
    }
    add("Stewart", "Lynch")
    add([1,2,3], [4,5,6])
}

code(for: "Add Example 4 - Variatic parameters") {
    // Create a function that will accept any number of numeric values and print the sum
    func add<T: Numeric>( _ numbers: T...) {
        print(numbers.reduce(0, +))
    }
    add(1, 2, 3, 4, 5, 6)
}

code(for: "Add Example 4 - All together Now") {
    // Can you have two functions with the same name in the same scope?
    func add<T: Numeric>(_ num1: T, _ num2: T) {
        print(num1 + num2)
    }
    
    func add<T: Numeric>( _ numbers: T...) {
        print(numbers.reduce(0, +))
    }
    

}
/*:

 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 */
