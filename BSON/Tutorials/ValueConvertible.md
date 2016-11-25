## ValueConvertible

ValueConvertible is the big/important feature of this BSON library. BSONConvertible is a protocol that allows any existing type to represent itself as BSONPrimitive.

Document does not exclusively interact with BSONPrimitives but with ValueConvertibles instead.

Normally you can create a Document like this:

```swift
let document: Document = [
	"name": "henk",
	"age": 24,
	"awesome": true,
	"subdocument": [
		"creation": Date(),
		"modification": Date()
	] as Document
]
```

By conforming your type to ValueConvertible you can embed your custom types as BSON type.

```swift
struct MutationDate: ValueConvertible {
	var creation = Date()
	var modification = Date()
	
	func makeBSONPrimitive() -> BSONPrimitive {
		return [
			"creation": self.creation
			"moficiation": moficiation
		] as Document
	}
}
```

This doesn't sound like much of a gain. But this way you can create your BSON documents in a much more expressive manner.

```swift
let document: Document = [
	"name": "henk",
	"age": 24,
	"awesome": true,
	"subdocument": MutationDate()
]
```