//
//  RequestError.swift
//  SwiftyForecast
//
//  Created by Pawel Milek on 01/12/2022.
//

import Foundation

enum RequestError: Error {
  case decode
  case invalidURL
  case noResponse
  case unauthorized
  case unexpectedStatusCode
  case unknown
  
  var customMessage: String {
    switch self {
    case .decode:
      return "Decode error"
      
    case .unauthorized:
      return "Session expired"
      
    default:
      return "Unknown error"
    }
  }
}
