# CustomValueConvertible

Please see [ValueConvertible](ValueConvertible.md) before reading this.

CustomValueConvertible is a protocol to empower ValueConvertible structs/classes to allow a two-way conversion.

Take the underlying example:

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

This struct allows itself to be embedded inside a Document's dictionary/array literal as well as other functions, subscripts, getters and setters.

This is because it's able to be converted to a BSON Primitive type. So BSON can convert this type to a primitive before inserting that primitive into the Document.

The problem, however, is re-accessing this struct natively when it's already in a Document. For that we have CustomValueConvertible.

CustomValueConvertible is a protocol that requires you to add an initializer.

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
	
	init?(_ value: BSONPrimitive) {
		guard let document = value as? Document else {
			return nil
		}
		
		guard let creation = document["creation"] as? Date, let modification = document["modification"] as? Date else {
			return nil
		}
		
		self.creation = creation
		self.modification = modification
	}
}
```

This allows us to convert this primitive back to this type.

```swift
let document: Document = [
	"mutationdate": MutationDate(),
	"other": true,
	"abc": 123
]

if let value = document["mutationdate"], let mutationDate = MutationDate(value) {
	print(mutationDate.creation)
	print(mutationDate.modification)
}
```

And now it can also be extracted from a Document with even less effort:

```swift
if let mutationDate = document.extract("mutationdate") as MutationDate? {
	print(mutationDate.creation)
	print(mutationDate.modification)
}
```