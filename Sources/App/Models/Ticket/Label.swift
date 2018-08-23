import Vapor

/// Label object
public struct Label: Content {
  
  /// Label hex color code
  public let color: String
  
  /// Value
  public let value: String
}
