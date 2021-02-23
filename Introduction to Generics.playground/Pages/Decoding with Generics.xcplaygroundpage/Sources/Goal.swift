//
//  Goal.swift
//  MyGoals
//
//  Created by Stewart Lynch on 2021-02-14.
//
import Foundation

public struct Goal: Codable {
   public var id = UUID().uuidString
   public var name: String
   public var date: Date
   public var completed: Bool = false
}




