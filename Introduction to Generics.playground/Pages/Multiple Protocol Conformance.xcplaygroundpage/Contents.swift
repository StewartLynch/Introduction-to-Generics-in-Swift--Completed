/*:
 [< Previous](@previous)           [Home](Introduction)
 
 ## Multiple Protocol Conformance

 
 */
import Foundation

code(for: "Sorting Mock Data for Goal struct") {
    // Complete this function by sorting the Goal mockData by name.
    // Aund using the sorted array as the completion argument
    func sortedMockData(completion: @escaping ([Goal])-> Void) {
        let mockData = Goal.mockData.sorted(by: {$0.name < $1.name})
        completion(mockData)
    }
    
    sortedMockData { (goals) in
        for goal in goals {
            print(goal.name)
        }
    }
}

code(for: "Sorting Mock data for either type") {
    // Replicate the previous function to use a default sort for an class/Struct
    // that has mock data
    func sortedMockData<T: Mockable & Comparable>(completion: @escaping ([T])-> Void) {
        if let mockData = T.mockData as? [T] {
            completion(mockData.sorted())
        } else {
            completion([])
        }
    }
    sortedMockData { (resources: [Resource]) in
        for resource in resources {
            print(resource.resource, resource.link_author)
        }
    }
    print("------------")
    sortedMockData { (goals: [Goal]) in
        for goal in goals {
            print(goal.name)
        }
    }
}
/*:
 
 [< Previous](@previous)           [Home](Introduction)
 */
