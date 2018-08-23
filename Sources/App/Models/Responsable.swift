import Vapor

/// Protocl for API Response
protocol Responsable: Content {
  
  /// Status code
  var statusCode: Int? { get }
}

/// Protocol to describe API response
protocol ResponsableWithData: Responsable {
  
  /// Data with API request
  associatedtype Data
  
  /// Data container key path
  static var dataContainer: KeyPath<Self, Data> { get }
  
  /// Data object
  var dataObject: Data { get }
}

extension ResponsableWithData {
  
  /// Data object
  var dataObject: Data {
    return self[keyPath: Self.dataContainer]
  }
}
