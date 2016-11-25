# Documentation
In this repository resides all information about OpenKitten.

### Folder structure

In the root folder of this project besides this README file there reside the project directories. Each documented project has it's own direcotry named after the github project.

Inside each project directory is a README.md file for general information and as an index.

Next to the project's README reside three other directories:

- Tutorials
- Examples
- Documentation

## BSON

BSON is the underlying data format for MongoDB. This library is a high performance native Swift parser/serializer that interacts with native Swift objects whilst providing a useful and recognizable high level API.

- [BSON Index](BSON/README.md)
- [BSON Tutorials](BSON/Tutorials/README.md)
- [BSON Examples](BSON/Examples/README.md)
- [BSON Documentation](BSON/Documentation/README.md)

## MongoKitten

MongoKitten is a MongoDB connector/driver written in pure Swift. MongoKitten is reliant on BSON and CryptoKitten for it's data format and encryption for authentication.

MongoKitten aims to empower Swift developers to experience both MongoDB and Swift in the fullest of their qualities without sacrificing features.

- [MongoKitten Index](MongoKitten/README.md)
- [MongoKitten Tutorials](MongoKitten/Tutorials/README.md)
- [MongoKitten Examples](MongoKitten/Examples/README.md)
- [MongoKitten Documentation](MongoKitten/Documentation/README.md)

## Mainecoon

Mainecoon is a MongoKitten/MongoDB based ORM and therefore is made for both type safety as well as flexibility. Mainecoon makes use of BSON through MongoKitten.

- [Mainecoon Index](Mainecoon/README.md)
- [Mainecoon Tutorials](Mainecoon/Tutorials/README.md)
- [Mainecoon Examples](Mainecoon/Examples/README.md)
- [Mainecoon Documentation](Mainecoon/Documentation/README.md)

## MainecoonVapor

MainecoonVapor is a helper library providing bindings from Mainecoon/MongoKitten to Vapor. MainecoonVapor works to integrate both workflows into one a workflow that combines the two seamlessly.

- [MainecoonVapor Index](MainecoonVapor/README.md)
- [MainecoonVapor Tutorials](MainecoonVapor/Tutorials/README.md)
- [MainecoonVapor Examples](MainecoonVapor/Examples/README.md)
- [MainecoonVapor Documentation](MainecoonVapor/Documentation/README.md)