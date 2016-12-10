import Vapor
import MongoKitten

do {
    let db = try Database(mongoURL: "mongodb://localhost")
    let drop = Droplet()
    
    drop.get("register", String.self) { _, message in
        return try db["messages"].insert([
                "_id": ObjectId(),
                "message": message
            ]).string!
    }
    
    // Returns the stored message, returns "-" if no message is found
    drop.get("read", String.self) { _, id in
        // Take the identifier, try to convert it to an ObjectId
        let id = try ObjectId(id)
        
        // Try to find a Document matching the identifier
        guard let document = try db["messages"].findOne(matching: "_id" == id) else {
            return "-"
        }
        
        // Extract the message from the document
        return document["message"] as String? ?? "-"
    }
    
    drop.get("remove", String.self) { _, id in
        let id = try ObjectId(id)
        
        try db["messages"].remove(matching: "_id" == id)
        
        return "Successfully removed \(id.hexString)"
    }
    
    drop.get("update", String.self, String.self) { _, id, message in
        let id = try ObjectId(id)
        
        try db["messages"].update(matching: "_id" == id, to: [
            "$set": [
                "message": message
            ] as Document
        ])
        
        return "Successfully updated \(id.hexString)"
    }
    
    drop.run()
    
} catch {
    print(error)
}
