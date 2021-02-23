//
//  Resource.swift
//  MyGoals
//
//  Created by Stewart Lynch on 2021-02-14.
//

import Foundation

public struct Resource: Codable, Comparable {
    public static func < (lhs: Resource, rhs: Resource) -> Bool {
        lhs.resource < rhs.resource
    }
    
    public enum ResourceType: String, Codable {
        case youTube, blog, print, webSite, podcast
    }
   public var id = UUID().uuidString
   public var resource: String
   public var link_author: String
   public var type: ResourceType

}

extension Resource: Mockable {
    public static var mockData: [Resource] {
        return [
            Resource.init(resource: "YouTube Channel", link_author: "https://youtube.com/StewartLynch", type: ResourceType.youTube),
            Resource.init(resource: "CreaTECH Website", link_author: "https://www.createchsol.com", type: .webSite),
            Resource.init(resource: "SwiftLee Weekly", link_author: "https://www.avanderlee.com", type: .blog),
            Resource.init(resource: "Swift By Sundell", link_author: "John Sundell", type: .podcast),
            Resource.init(resource: "SwiftUI Projects", link_author: "Craig Clayton", type: .print),
        ]
    }
}
