import UIKit

/*
 In Swift, a function can be nested inside another function. This is called a nested function.
 */

//Here is example of a nested function in swift:

func outerFunc() {
    func innerFunc() {
        print("I am an inner function")
    }
    //Calling the inner function
    innerFunc()
}

//Calling the outer function
outerFunc()

/*
 In this example, the innerFunction is defined inside the outerFunction. The innerFunction is only available to be called from within the outerFunction. If you try to call the innerFunction from outside the outerFunction, you will get an error.
 */


//MARK: Nested function with paramter

func outerFunction(x: Int) {
    func innerFunction(y: Int) {
        print(x + y)
    }
    
    innerFunction(y: 5)
}

//Calling the outer function
outerFunction(x: 10)

/*
 in this example, the innerFunction takes an integer parameter y and the outerFunction takes an integer parameter x. The innerFunction is called inside the outerFunction and the value of x is passed to it. When the outerFunction is called, it will print the result of x + y, which is 15.
 */


//MARK: Pizza Builder Example

struct Pizza {
    let sauce: String
    let toppings: [String]
    let crust: String
}

class PizzaBuilder {
    
    func prepare() -> Pizza {
     
        func prepareSauce() -> String {
            return "Tomato Sauce"
        }
        
        func prepareCrust() -> String {
            return "Hand Tossed"
        }
        
        func prepareToppings() -> [String] {
            return ["Chicken", "Mushroom", "Onions"]
        }
        
        let crust = prepareCrust()
        let sauce = prepareSauce()
        let toppings = prepareToppings()
        
        return Pizza(sauce: sauce, toppings: toppings, crust: crust)
    }
}

//Create Class Object
let pizzaBuilder = PizzaBuilder()

let pizza = pizzaBuilder.prepare()
