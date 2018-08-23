import Vapor

/// Ticket status
public enum Status: String, Content {
  /// New
  case new = "NEW"
  
  /// Called
  case called = "CALLED"
  
  /// Cancelled by clerk
  case cancelledByClerk = "CANCELLED_BY_CLERK"
  
  /// No Show
  case noShow = "NOSHOW"
  
  /// Served
  case served = "SERVED"
}
