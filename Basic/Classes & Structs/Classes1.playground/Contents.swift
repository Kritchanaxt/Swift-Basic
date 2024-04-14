import UIKit

var Classes1 = "Hello, Classes1"
print(Classes1)

class Book {
    var title = ""
    var body = ""
    var author = ""
    var numberOfComments = 0
    
    func addComment(){
        numberOfComments += 1
        //numberOfComments = numberOfComments + 1
    }
}

let myBook = Book()
myBook.title = "The Basic"
myBook.body = "Constants and Variable"
myBook.author = "Maroon 5"
myBook.addComment()
print(myBook.numberOfComments)

let mySecondBook = Book()
mySecondBook.title = "Basics Operation"
mySecondBook.body = "Operators and unary, binary of ternary"
mySecondBook.author = "Peter Hudson"
print(mySecondBook.numberOfComments)

print(myBook.author)
print(mySecondBook.author)


