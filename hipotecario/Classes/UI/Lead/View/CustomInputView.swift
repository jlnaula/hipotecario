//
//  CustomInputView.swift
//  hipotecario
//
//  Created by Jorge Naula Rios on 8/26/16.
//  Copyright © 2016 BBVA. All rights reserved.
//

import UIKit

class CustomInputView: UIView {

    @IBOutlet var view: UIView!
    @IBOutlet weak var ima: UIImageView!
    @IBOutlet weak var fltfi: B68UIFloatLabelTextField!
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    override init(frame: CGRect) { // for using CustomView in code
        super.init(frame: frame)
        self.commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) { // for using CustomView in IB
        super.init(coder: aDecoder)
        self.commonInit()
    }

    private func commonInit() {
        NSBundle.mainBundle().loadNibNamed("CustomInputView", owner: self, options: nil)
        guard let content = view else { return }
        content.frame = self.bounds
        content.autoresizingMask = [.FlexibleHeight, .FlexibleWidth]
        self.addSubview(content)
    }
}
