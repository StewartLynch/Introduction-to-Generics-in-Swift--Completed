//
//  Resource.swift
//  MyGoals
//
//  Created by Stewart Lynch on 2021-02-14.
//

import Foundation

public struct Resource: Codable {
    public enum ResourceType: String, Codable {
        case youTube, blog, print, webSite, podcast
    }
   public var id = UUID().uuidString
   public var resource: String
   public var link_author: String
   public var type: ResourceType
}
