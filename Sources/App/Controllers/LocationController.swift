import Vapor

final class LocationController {
  func desks(_ req: Request) throws -> Desks {
    let locationId = try req.parameters.next(Int.self)
    
    let desks: [Desk] = {
      if locationId == 1 {
        return [
          Desk(id: 1, name: "First"),
          Desk(id: 2, name: "Second")
        ]
      } else {
        return [
          Desk(id: 1, name: "1"),
          Desk(id: 2, name: "2")
        ]
      }
    }()
    
    let desksResponse = Desks(statusCode: 200,
                              desks: desks)
    
    print("Location desks", locationId, desksResponse)
    
    return desksResponse
  }
}
