//
//  ViewController.swift
//  ConditionalContainerViews
//
//  Created by Jeff Kereakoglow on 12/31/15.
//  Copyright © 2015 Jeff Kereakoglow. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  // For test purposes
  var hasContent = false

  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    guard let destination = segue.destinationViewController as? ContainerViewController else {
      assertionFailure("Execpted ContainerViewController")

      return
    }

    // This method, `prepareForSegue:sender:` is invoked before `viewDidLoad` of the desination
    // view controller. So, by changing the value of `hasContent` here, we can control which view to
    // load, either the blank state view or the content view.
    destination.hasContent = hasContent
  }
}
