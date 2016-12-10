# VaporExample

This example demonstrates a very basic API using MongoKitten and Vapor.

It allows you to visit [http://localhost:8080]([http://localhost:8080]) to connect to Vapor.

If you visit [http://localhost:8080/register/message](http://localhost:8080/register/message) the API will register the message "message" and the server will respond with an identifier.

If you go to [http://localhost:8080/read/<identifier>](http://localhost:8080/read/) the server will read the message at that identifier. If you use the identifier received above, the server will respond with "message".

If you go to [http://localhost:8080/remove/<identifier>](http://localhost:8080/remove/) the server will remove the message from the database.

If you go to [http://localhost:8080/update/<identifier>/otherMessage](http://localhost:8080/update/) the server will update the message with the given identifier to the new message, in this case "otherMessage".

## MongoDB

This example requires you to have MongoDB running unauthenticated on the same host as Vapor at port 27017 unless you edit the connection URL.