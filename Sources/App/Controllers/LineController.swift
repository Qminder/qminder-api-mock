import Vapor

final class LineController {
  func lines(_ req: Request) throws -> Lines {
    
    let locationId  = try req.parameters.next(Int.self)
    
    let line = Line(statusCode: 200,
                    id: 1,
                    name: "Line",
                    location: locationId)
    let lines = Lines(statusCode: 200, data: [line])
    
    return lines
  }
}
