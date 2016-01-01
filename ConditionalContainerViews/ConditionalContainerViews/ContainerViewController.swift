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

    // Conditionally load the view controllers
    if hasContent {
      performSegueWithIdentifier(contentSegueIdentifier, sender: self)
    }
    else {
      performSegueWithIdentifier(blankStateSegueIdentifier, sender: self)
    }
  }

  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

    if childViewControllers.count > 0 {
      //code
      assertionFailure("Should not have gotten here")
      return
    }

    addChildViewController(segue.destinationViewController)
    let destinationView = segue.destinationViewController.view
    destinationView.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
    destinationView.frame = CGRectMake(0, 0, view.frame.size.width, view.frame.size.height)

    view.addSubview(destinationView)

    segue.destinationViewController.didMoveToParentViewController(self)
  }
}

//extension ContainerViewController {
//
//}
