//
//  Device.swift
//  Pods
//
//  Created by Kristaps Grinbergs on 27/02/2017.
//
//

import Foundation
import Vapor

/// User object
public struct TVDevice: Content {
  
  /// Status code from API
  internal let statusCode: Int?

  /// Device ID
  public let id: Int
  
  /// Device name
  public let name: String
  
  /// Name of TV theme
  public let theme: String
  
  /// Name of TV layout
  public let layout: String
  
  /// Settings of the TV, only included when applicable
  public let settings: Settings?
}

/// Created data object
public struct Settings: Content {

  /// Selected line ID
  public let selectedLine: Int?
  
  /// Selected lines ID array
  public let lines: Set<Int>?
  
  /// Clear tickets
  public let clearTickets: ClearTickets?
}
