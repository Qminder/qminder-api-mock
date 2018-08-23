import Vapor

/// Tickets object
struct Tickets: ResponsableWithData {
  static var dataContainer = \Tickets.data
  
  internal let statusCode: Int?
  
  let data: [Ticket]
}
