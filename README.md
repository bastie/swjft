# Swjft 

Test to port mature mostly object orientend API to Swift. Take a look to [JavApi project](http://javapi.codeplex.com "Java API porting to .net").



## HowTo

### How to porting package structure

0. create struct with package called `NiceClass`
0. create classes in struct extension for `NiceClass`
0. create protocols outside struct extension called `swjftBadProtocol`
0. create typealias called `BadProtocol` in struct extension for `swjftBadProtocol`

``
struct lang {}
extension lang {
  class String : CharSequence {}
}
protocol swjftCharSequence {}
extension lang {
  typealias CharSequence = swjftCharSequence
}
``

### Hot to create abstract classes

0. create protocol (see How to porting package structure)
0. use extensions for implements like Java default methods for protocol

``
struct nio {}
protocol swjftCharBuffer {}
extension nio {
  typealias CharBuffer = swjftCharBuffer
}
extension swjftCharBuffer {
  func toString () -> Swift.String {
     return "Like default methods, I am the CharBuffer implementation."
  }
}