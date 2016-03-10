//
//  AppDelegate.swift
//  ConditionalContainerViews
//
//  Created by Jeff Kereakoglow on 12/31/15.
//  Copyright © 2015 Jeff Kereakoglow. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder {
  var window: UIWindow?
}


extension AppDelegate: UIApplicationDelegate {
  func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject : AnyObject]?) -> Bool {

    guard let rootVC = self.window!.rootViewController as? ViewController else {
      assertionFailure("The initial view controller is not of type `ViewController`")
      return false
    }

    // see: http://stackoverflow.com/questions/32667201/accessing-the-host-app-code-from-the-xcode-7-ui-test-target#33466038
    var arguments = NSProcessInfo.processInfo().arguments
    arguments.removeFirst()

    print("App launching with the following arguments: \(arguments)")

    if arguments.contains("HasContent") {
      rootVC.hasContent = true
    }

    // The default value of `hasContent` is already false. However, we want to make it clear in the
    // UI tests that `hasContent` will be false.
    else if arguments.contains("NoContent") {
      rootVC.hasContent = false
    }

    return true
  }
}
