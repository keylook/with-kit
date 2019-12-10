import UIKit

extension UIViewController {
  
  /// Function that abstracts the loading of data from remote resource, providing a loading state interace as long as error handling
  /// - Parameter block: the block that will be exectued and decorated with loading state at the begining and the end
  /// - Parameter completion: the block that will be extecuted in case of successful execution
  
  func load<S>(
    _ request: ((((Result<S, Error>) -> Void)?) -> Void)?,
    sucessHandler: ((S) -> Void)?
  ) {
    showLoadingState(true)
    request? { [weak self] result in
      self?.showLoadingState(false)
      result
        .onFailure(self?.showError)
        .onSuccess(sucessHandler)
    }
  }
  
  func load<S>(
    _ request: ((((Result<S, Error>) -> Void)?) -> Void)?,
    sucessHandler: ((S) -> Void)?,
    failureHandler: ((Error) -> Void)? = nil
  ) {
    showLoadingState(true)
    request? { [weak self] result in
      self?.showLoadingState(false)
      result
        .onFailure(self?.showError)
        .onFailure(failureHandler)
        .onSuccess(sucessHandler)
    }
  }
  
  func load<S, Argument>(
    _ request: ((_ arg1: Argument, ((Result<S, Error>) -> Void)?) -> Void)?,
    with argument: Argument,
    successHandler: ((S) -> Void)?,
    failureHandler: ((Error) -> Void)? = nil
  ) {
    showLoadingState(true)
    request?(argument) { [weak self] result in
      self?.showLoadingState(false)
      result
        .onFailure(self?.showError)
        .onFailure(failureHandler)
        .onSuccess(successHandler)
    }
  }
  
  func load<S, Argument1, Argument2>(
    _ request: ((_ arg1: Argument1, _ arg2: Argument2, ((Result<S, Error>) -> Void)?) -> Void)?,
    arg1: Argument1,
    arg2: Argument2,
    successHandler: ((S) -> Void)?,
    failureHandler: ((Error) -> Void)? = nil
  ) {
    showLoadingState(true)
    request?(arg1, arg2) { [weak self] result in
      self?.showLoadingState(false)
      result
        .onFailure(self?.showError)
        .onFailure(failureHandler)
        .onSuccess(successHandler)
    }
  }
  
}

