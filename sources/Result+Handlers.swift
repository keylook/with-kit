import Foundation

extension Result {
  
  typealias FailureHandler = (Error) -> Void
  typealias SuccessHandler = (Success) -> Void
  
  @discardableResult
  func onSuccess(_ handler: SuccessHandler?) -> Self {
    switch self {
    case .success(let data):
      handler?(data)
    default:
      break
    }
    return self
  }
  
  @discardableResult
  func onMapSuccess(_ mapper: ((Result<Success, Error>) -> Void)?) -> Self {
    switch self {
    case .success(let data):
      mapper?(.success(data))
    default:
      break
    }
    return self
  }
  
  
  @discardableResult
  func onFailure(_ handler: FailureHandler?) -> Self {
    switch self {
    case .failure(let error):
      if allErrorLogging { NSLog("\(error)") }
      handler?(error)
    default:
      break
    }
    
    return self
  }
  
  @discardableResult
  func onMapFailure<Q>(_ mapper: ((Result<Q, Error>) -> Void)?) -> Self {
    switch self {
    case .failure(let error):
      if allErrorLogging { NSLog("\(error)") }
      mapper?(.failure(error))
    default: break
    }
    return self
  }
  
  
  var voided: Result<Void, Failure> {
    return map { _ in return empty }
  }
}
