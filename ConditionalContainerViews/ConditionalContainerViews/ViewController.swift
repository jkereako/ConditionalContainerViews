//
//  ViewController.swift
//  ConditionalContainerViews
//
//  Created by Jeff Kereakoglow on 12/31/15.
//  Copyright © 2015 Jeff Kereakoglow. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    guard let destination = segue.destinationViewController as? ContainerViewController else {
      assertionFailure("Execpted ContainerViewController")

      return
    }

    // Change this value to load either view
    destination.hasContent = true
  }
}

// MARK: - Actions
extension ViewController {
  @IBAction func toggleAction(_: UIButton) {

  }
}

