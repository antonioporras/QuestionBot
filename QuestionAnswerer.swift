struct MyQuestionAnswerer {
    
    let visited: [String] = [
        "argentina",
        "brazil",
        "guatemala",
        "chile",
        "honduras",
        ];
    
    let wouldliketo: [String] = [
        "spain",
        "italy",
        "greece",
        "puerto rico",
        "colombia"
    ];
    
    
    let lived: [String] = [
        "mexico",
        "canada",
        "united states"
    ];
    
    
    func responseTo(question: String) -> String {
        let lowercaseQuestion: String =
            question.lowercased();
        
        
        for lived in lived {
            if lowercaseQuestion.range(of: lived)  !=
                nil {
                return "I lived in \(lived) before.  It was a great experience!"
            }
        }
        
        
        for visited in visited {
            if lowercaseQuestion.range(of: visited)  !=
                nil {
                return "I visited \(visited) a while ago. I would like to go back any time soon."
            }
        }
        
        
        for wouldliketo in wouldliketo {
            if lowercaseQuestion.range(of: wouldliketo)  != nil {
                return "I've never been to \(wouldliketo).  I am dying to go there."
            }
        }
        
        
        return "I may visit one day";
        
    }
    
    
}




