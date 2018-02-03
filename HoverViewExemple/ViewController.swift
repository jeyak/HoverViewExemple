//
//  ViewController.swift
//  HoverViewExemple
//
//  Created by Jeyaksan RAJARATNAM on 01/02/2018.
//  Copyright © 2018 ajn. All rights reserved.
//

import UIKit
import HoverViewFramework

class ViewController: UIViewController {
    var hoverViewController: HoverViewController?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addBubble))
    }
    
    // Add only one bubble
    @objc func addBubble() {
        if let hvc = hoverViewController {
            hvc.addBubble()
        }
        //view.addSubview(viewDrag)
        //setupBubble()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

/// HoverViewController event
extension ViewController: HoverViewControllerDelegate {
    public func hoverViewController(_ hoverViewController: HoverViewController) {
        self.hoverViewController = hoverViewController
    }
    
    func hoverViewController(_ hoverViewController: HoverViewController, didTouchUpInsideHoverView view:UIView) {
        let alertController = UIAlertController(title: "Cool", message: "BUBBLE TAPPED", preferredStyle: .alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(defaultAction)
        
        present(alertController, animated: true, completion: nil)
    }
}
