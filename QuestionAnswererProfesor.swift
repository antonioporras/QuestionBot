struct MyQuestionAnswererProfesor {
    
    /*
    func responseTo(question: String) -> String {
        // TODO: Write a response 
        return "Hola"
    }
    */
    
    let dislikes: [String] = [
        "cats",
        "coconut",
        "shrimp",
        "lobster",
        "shellfish",
        
        ];
    
    let likes: [String] = [
        "chinese food",
        "bicycle",
        "stanley kubrick",
        "astronomy",
        "cartography"
    ];
    
    func responseTo(question: String) -> String {
        let lowercaseQuestion: String =
            question.lowercased();
        for dislike in dislikes {
            if lowercaseQuestion.range(of: dislike)  !=
                nil {
                return "I detest \(dislike). You've touched a raw nerve there."
            }
        }
        
        for like in likes {
            if lowercaseQuestion.range(of: like)  != nil {
                return "I like \(like)."
            }
        }
        return "I have no string opinion.";
        
    }
    
    
    
}
