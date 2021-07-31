import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return "It works!"
    }
    
    app.get("hello", ":name") { req -> String in
        let name = req.parameters.get("name")!
        return "Hello, I'm \(name)!"
    }

    app.get("hello") { req -> String in
        return "Hello, world!"
    }
}
