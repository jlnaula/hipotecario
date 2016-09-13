//
//  LeadViewController.swift
//  hipotecario
//
//  Created by Jorge Naula Rios on 8/29/16.
//  Copyright © 2016 BBVA. All rights reserved.
//

import UIKit

class LeadViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let ciwDocumentType = CustomInputView()
        let ciwDocumentNumber = CustomInputView()
        let ciwPhone = CustomInputView()
        let ciwEmail = CustomInputView()
        
        let width = UIScreen.mainScreen().bounds.size.width
        let height: CGFloat = 50
        let leftMargin: CGFloat = 10
        let topMargin: CGFloat = 100
        
        ciwDocumentType.frame = CGRectMake(leftMargin, topMargin, width-2*leftMargin, height)
        ciwDocumentType.fltfi.placeholder = NSLocalizedString("TEXTFIELD_PLACEHOLDER_DOCUMENT_TYPE", comment: "")
        self.view.addSubview(ciwDocumentType)
        
        ciwDocumentNumber.frame = CGRectMake(leftMargin, CGRectGetMaxY(ciwDocumentType.frame)+10, width-2*leftMargin, height)
        ciwDocumentNumber.fltfi.placeholder = NSLocalizedString("TEXTFIELD_PLACEHOLDER_DOCUMENT_NUMBER", comment: "")
        self.view.addSubview(ciwDocumentNumber)
        
        ciwPhone.frame = CGRectMake(leftMargin, CGRectGetMaxY(ciwDocumentNumber.frame)+10, width-2*leftMargin, height)
        ciwPhone.fltfi.placeholder = NSLocalizedString("TEXTFIELD_PLACEHOLDER_PHONE", comment: "")
        ciwPhone.fltfi.keyboardType = UIKeyboardType.PhonePad
        self.view.addSubview(ciwPhone)
        
        ciwEmail.frame = CGRectMake(leftMargin, CGRectGetMaxY(ciwPhone.frame)+10, width-2*leftMargin, height)
        ciwEmail.fltfi.placeholder = NSLocalizedString("TEXTFIELD_PLACEHOLDER_EMAIL", comment: "")
        ciwEmail.fltfi.keyboardType = UIKeyboardType.EmailAddress
        self.view.addSubview(ciwEmail)
        
        let butHeight: CGFloat = 40
        let butLeftMargin: CGFloat = 40
        let butTopMargin: CGFloat = CGRectGetMaxY(ciwEmail.frame)+50
        
        let butSubmit = UIButton()
        butSubmit.frame = CGRectMake(butLeftMargin, butTopMargin, width-2*butLeftMargin, butHeight)
        //butSubmit.backgroundColor = UIColor(red:0.3215, green:0.7372, blue:0.9254, alpha:1.0)
        butSubmit.backgroundColor = UIColor(red:0.0352, green:0.3098, blue:0.6431, alpha:1.0)
        butSubmit.setTitle(NSLocalizedString("BUTTON_SUBMIT", comment: ""), forState: UIControlState.Normal)
        butSubmit.tintColor = UIColor.whiteColor()
        butSubmit.layer.cornerRadius = butHeight/2
        butSubmit.layer.masksToBounds = true
        self.view.addSubview(butSubmit)
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
