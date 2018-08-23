import Vapor

final class TicketController {
  func search(_ req: Request) -> Tickets {
    
    struct URLParameters: Decodable {
      var order: String
    }
    
    struct Name {
      var firstName: String
      var lastName: String?
    }
    
    let urlParameters = try! req.query.decode(URLParameters.self)
    
    let tickets = urlParameters.order.components(separatedBy: ",").enumerated().compactMap { index, name -> Ticket in
      let nameParts = name.components(separatedBy: " ")
      
      let interactions = [
        Interaction(start: Date.distantPast, end: nil, line: 1, desk: 1, user: 1)
      ]
      return Ticket(statusCode: 200,
                          id: String(index),
                          number: nil,
                          line: 1,
                          source: .manual,
                          status: index == 0 ? .called : .new,
                          firstName: nameParts.first,
                          lastName: nameParts.last,
                          phoneNumber: nil,
                          created: Created(date: Date.distantFuture),
                          served: nil,
                          labels: nil,
                          extra: nil,
                          orderAfter: nil,
                          interactions: index == 0 ? interactions : nil)
    }

    let ticketsResponse = Tickets(statusCode: 200, data: tickets)
    
    print("Tickets search", ticketsResponse)
    
    return ticketsResponse
  }
}
