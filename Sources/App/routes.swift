import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
  
  let tvDeviceController = TVDeviceController()
  router.get("/v1/tv", Int.parameter, use: tvDeviceController.details)
  
  let locationController = LocationController()
  router.get("/v1/locations/", Int.parameter, "/desks", use: locationController.desks)
  
  let ticketController = TicketController()
  router.get("/v1/tickets/search", use: ticketController.search)
  
  let lineController = LineController()
  router.get("/v1/locations/", Int.parameter, "/lines", use: lineController.lines)
}
