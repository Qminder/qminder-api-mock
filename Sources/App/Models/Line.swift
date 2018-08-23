import Foundation
import Vapor

/// Line Object
public struct Line: Content {
  
  var statusCode: Int?
  
  /// ID of a line
  public let id: Int
  
  /// Name of a line
  public let name: String
  
  /// ID of the location this line belongs to
  public let location: Int?
}

/// Lines object
struct Lines: Content {
  
  static var dataContainer = \Lines.data
  
  /// Status code from API
  internal let statusCode: Int?
  
  /// Lines array
  let data: [Line]
}
