/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 
 ## Decoding with Generics
 Reduce code by using generics in your functions
 
 */
import Foundation

code(for: "Sample Decoding") {
    // consider this function to decode JSON from a file in your app's bundle
    func fetchGoals(completion: @escaping ([Goal]) -> Void) {
        guard let goalsURL = Bundle.main.url(forResource: "Goals", withExtension: "json") else {
            fatalError("Could not find json file")
        }
        guard let goalsData = try? Data(contentsOf: goalsURL) else {
            fatalError("Could not convert data")
        }
        let decoder = JSONDecoder()
        guard let goals = try? decoder.decode([Goal].self, from: goalsData) else {
            fatalError("There must be a problem decoding....")
        }
        completion(goals)
    }
    
    fetchGoals { (goals) in
        for goal in goals {
            print(goal.name)
        }
    }
}

code(for: "Generic Conversion") {
    // Replicate the function in the previous example to use a generic type
    func fetchData<T: Decodable>(fileName: String, completion: @escaping (T) -> Void) {
        guard let jsonURL = Bundle.main.url(forResource: fileName, withExtension: "json") else {
            fatalError("Could not find json file")
        }
        guard let jsonData = try? Data(contentsOf: jsonURL) else {
            fatalError("Could not convert data")
        }
        let decoder = JSONDecoder()
        guard let results = try? decoder.decode(T.self, from: jsonData) else {
            fatalError("There must be a problem decoding....")
        }
        completion(results)
    }
    
    fetchData(fileName: "Resources") { (resources:[Resource]) in
        for resource in resources {
            print(resource.resource)
        }
    }
    print("-------------------")
    fetchData(fileName: "Goals") { (goals:[Goal]) in
        for goal in goals {
            print(goal.name)
        }
    }
}

/*:
 
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 */
