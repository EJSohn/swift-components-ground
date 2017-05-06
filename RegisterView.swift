//
//  RegisterView.swift
//  ComponentGround
//
//  Created by 손은주 on 2017. 5. 6..
//  Copyright © 2017년 ejsohn. All rights reserved.
//

import UIKit

class RegisterView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInitialization()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        self.commonInitialization()
    }
    
    func commonInitialization() {
        let view = Bundle.main.loadNibNamed("RegisterView", owner: self, options: nil)?.first as! UIView
        view.frame = self.bounds
        self.addSubview(view)
    }

}
