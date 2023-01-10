import UIKit

//Simple Closure
let hello = {
    print("Hello!")
}

hello()


//we can also pass parameter

let helloWithName: (String) -> () = { name in
    print("Hello \(name)")
}

helloWithName("Rahul")


//if we don't want to associate anything available with closure, what you can do simply

let helloWithName1: (String) -> () = {
    print("Hello \($0)")
}
helloWithName1("Rahul Kumar")


//MARK: - Closure with return a value

/*
 A closure in swift can a return a value, just like a function. to specify that a closure returns a value, you need to include the "->" followed by the return type after thre closure parameter list.
 */

//e.g 1
let pow: (Int, Int) -> Int = { number, times in
    number * times
}

let result = pow(10, 4)
print(result)

/*
 In Swift, '$0', '$1', '$2', and so on are shorthand names for the closure's arguments.
 */

//e.g 2
let pow2: (Int, Int) -> Int = {
    $0 * $1
}
let result1 = pow2(10, 6)
print(result1)

//MARK: Pass closures in functions

func getPosts(completion: @escaping ([String]) -> ()) {
    var posts: [String] = []
    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
        posts = ["Hello World", "Introduction to closures"]
        completion(posts)
    }
}

getPosts { posts in
    print(posts)
}
