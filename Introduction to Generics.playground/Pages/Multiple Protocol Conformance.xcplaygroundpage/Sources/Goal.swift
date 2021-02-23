//
//  Goal.swift
//  MyGoals
//
//  Created by Stewart Lynch on 2021-02-14.
//
import Foundation

public struct Goal: Codable, Comparable {
    public static func < (lhs: Goal, rhs: Goal) -> Bool {
        lhs.name < rhs.name
    }
    
   public var id = UUID().uuidString
   public var name: String
   public var date: Date
   public var completed: Bool = false

}


extension Goal: Mockable {
    public static var mockData: [Goal] {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        return [
            Goal.init(name: "Be more active on Twitter", date: dateFormatter.date(from: "01/01/2021")!, completed: true),
            Goal.init(name: "Reach 100 Videos on YouTube",date: dateFormatter.date(from: "01/03/2021")!, completed: true),
            Goal.init(name: "Create a new Widget App",date: dateFormatter.date(from: "01/06/2021")!, completed: false),
            Goal.init(name: "Update Website", date: dateFormatter.date(from: "01/09/2021")!, completed: true)
        ]
    }
}

