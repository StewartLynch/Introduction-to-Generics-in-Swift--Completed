import Foundation

public protocol Mockable {
    associatedtype Element
    static var mockData: [Element] { get }
}
