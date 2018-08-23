import Vapor

/// Ticket source
public enum Source: String, Content {
  
  /// Manual
  case manual = "MANUAL"
  
  /// Name
  case name = "NAME"
  
  /// Printer
  case printer = "PRINTER"
  
  /// Other (not specified)
  case other
  
  public init?(rawValue: String) {
    switch rawValue.lowercased() {
    case "manual":
      self = .manual
    case "name":
      self = .name
    case "printer":
      self = .printer
    default:
      self = .other
    }
  }
}
