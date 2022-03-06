//
//  ViewController.swift
//  AppXib20220306
//
//  Created by grace on 2022/3/6.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var theView2: MyView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let theView = MyView(frame: CGRect(x: 10, y: 40, width: self.view.bounds.width - 20, height: 100))
        theView.theShadow()
        self.view.addSubview(theView)
        
        theView2.theShadow()
        
        // 網路狀態
        print(getNetworkStatus())
        let status: String = getNetworkStatus() == true ? "Connected" : "Disconnect"
        myButton.setTitle(status, for: .normal)
    }

    func getNetworkStatus() -> Bool {
        if Reachability(hostName: "www.apple.com")?.currentReachabilityStatus().rawValue == 0 {
            return false
        } else {
            return true
        }
    }

}

