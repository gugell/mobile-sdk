import UIKit
import MatrixSDKInternal

/**
 * Stable UIKit factory for external iOS hosts.
 *
 * MatrixSDK owns the public entrypoint while the actual brownfield controller
 * stays compiled into the underlying generated runtime framework.
 */
public enum MatrixNativeViewControllerFactory {
  public static func make(hostLaunchArgsJson: String?) -> UIViewController {
      MatrixSDKInternalViewControllerFactory.makeWithHostLaunchArgsJson(hostLaunchArgsJson)
  }
}
