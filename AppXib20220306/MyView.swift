//
//  MyView.swift
//  AppXib20220306
//
//  Created by grace on 2022/3/6.
//

import UIKit

class MyView: UIView {
    var view: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    func setup() {
        let view = loadViewFromNib()
        
        view.frame = self.bounds
        view.autoresizingMask = [ UIView.AutoresizingMask.flexibleWidth,
            UIView.AutoresizingMask.flexibleHeight]
        addSubview(view)
    }
    
    func loadViewFromNib() -> UIView {
        let nib = UINib(nibName: "MyView", bundle: nil)
        let theView = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        return theView
    }
    
    func theShadow() {
        self.clipsToBounds = false
        self.layer.shadowRadius = 20         //陰影
        self.layer.shadowOpacity = 0.6;
        self.layer.shadowColor = UIColor.systemPink.cgColor
        self.layer.shadowOffset = CGSize(width: 10, height: 10)
    }
}
