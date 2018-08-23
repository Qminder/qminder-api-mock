import Vapor

/// Desk object
public struct Desk: Content {
  
  /// Desk ID
  public let id: Int
  
  /// Desk name
  public let name: String
}

protocol DesksResponsable: Content {
  /// Data with API request
  associatedtype Data
  
  /// Desks from API
  var desks: [Data] { get }
}

/// Desks object
struct Desks: Content {
  
  static var dataContainer = \Desks.desks
  
  internal let statusCode: Int?
  let desks: [Desk]
}
