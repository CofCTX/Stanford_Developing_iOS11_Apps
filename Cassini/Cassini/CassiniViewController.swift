//
//  CassiniViewController.swift
//  Cassini
//
//  Created by Rahimi, Meena Nichole (Student) on 5/29/19.
//  Copyright © 2019 Rahimi, Meena Nichole (Student). All rights reserved.
//

import UIKit

class CassiniViewController: UIViewController {
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            if let url = DemoURLs.NASA[identifier] {
                if let imageVC = segue.destination.contents as? ImageViewController {
                    imageVC.imageURL = url
                    imageVC.title = (sender as? UIButton)?.currentTitle
                }
            }
        }
    }
    
}

extension UIViewController {
    var contents: UIViewController {
        if let navcon = self as? UINavigationController {
            return navcon.visibleViewController ?? self
        } else {
            return self
        }
    }
}
