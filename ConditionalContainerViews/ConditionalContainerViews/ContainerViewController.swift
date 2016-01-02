//
//  ContainerViewController.swift
//  ConditionalContainerViews
//
//  Created by Jeff Kereakoglow on 12/31/15.
//  Copyright © 2015 Jeff Kereakoglow. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController {
  var hasContent = false

  private let blankStateSegueIdentifier = "showBlankState"
  private let contentSegueIdentifier = "showContent"

  override func viewDidLoad() {
    super.viewDidLoad()

    // Either the blank state view or the content view is loaded depending on the value of
    // `hasContent`.
    if hasContent {
      performSegueWithIdentifier(contentSegueIdentifier, sender: self)
    }
    else {
      performSegueWithIdentifier(blankStateSegueIdentifier, sender: self)
    }
  }

  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    segue.destinationViewController.willMoveToParentViewController(self)

    addChildViewController(segue.destinationViewController)

    view.addSubview(segue.destinationViewController.view)

    segue.destinationViewController.didMoveToParentViewController(self)
  }
}
