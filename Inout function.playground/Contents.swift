import UIKit

struct User {
    var userId: Int?
    var name : String
}

//MARK: Inout Function

/*
 an inout functin is a function that allows us to modify variables that are passed as arguments to the function, and the changes made to those variables persist after the function call has completed
 */

//MARK: Example 1
func saveUser(_ user: inout User) {
    user.userId = 100
}

var user = User(name: "Rahul Kumar")
saveUser(&user)

print(user) // Output: User(userId: Optional(100), name: "Rahul Kumar")

//MARK: Example 2

func increment(_ value: inout Int) {
    value += 1
}

var x = 10
increment(&x)
print(x) // prints "11"


/*
 the & symbol is used to pass the value of x as an "in-out" parameter to the increment function.
 */
