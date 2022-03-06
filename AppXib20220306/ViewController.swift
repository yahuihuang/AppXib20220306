//
//  ViewController.swift
//  AppXib20220306
//
//  Created by grace on 2022/3/6.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let theView = MyView(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
        self.view.addSubview(theView)
        
    }


}

