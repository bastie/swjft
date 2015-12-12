# Swjft 

Test to port mature mostly object orientend API to Swift. Take a look to [JavApi Project](http://javapi.codeplex.com "Java API porting to .net").



## HowTo

### How to porting package structure

0. create struct with package called `NiceClass`
0. create classes in struct extension for `NiceClass`
0. create protocols outside struct extension called `swjftBadProtocol`
0. create typealias called `BadProtocol` in struct extension for `swjftBadProtocol`

```
struct lang {}
extension lang {
  class String : CharSequence {}
}
protocol swjftCharSequence {}
extendsion lang {
  typealias CharSequence = swjftCharSequence
}
```

