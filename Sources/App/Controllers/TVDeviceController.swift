import Vapor

final class TVDeviceController {
  func details(_ req: Request) throws -> TVDevice {
    
    let tvId = try req.parameters.next(Int.self)
    let settings = Settings(selectedLine: nil, lines: nil,
                            clearTickets: ClearTickets.afterServing)
    let device = TVDevice(statusCode: 200,
                          id: tvId,
                          name: "Name",
                          theme: "standard",
                          layout: "standard",
                          settings: settings)
    
    print("TV details", tvId, device)
    
    return device
  }
}
