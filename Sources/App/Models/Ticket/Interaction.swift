import Vapor

/// Ticket interaction
public struct Interaction: Content {
  
  /// Interaction start
  public let start: Date
  
  /// Interaction end
  public let end: Date?
  
  /// Line ID
  public let line: Int
  
  /// Desk ID
  public let desk: Int?
  
  /// User ID
  public let user: Int?
  
}
