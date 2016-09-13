//
//  LeadViewController.swift
//  hipotecario
//
//  Created by Jorge Naula Rios on 8/24/16.
//  Copyright © 2016 BBVA. All rights reserved.
//

import UIKit

class Lead0ViewController: UIViewController {


    @IBOutlet weak var vieDocType: UIView!
    @IBOutlet weak var vieDocNumber: UIView!
    @IBOutlet weak var viePhone: UIView!
    @IBOutlet weak var tfiDocType: UITextField!
    @IBOutlet weak var tfiDocNumber: UITextField!
    @IBOutlet weak var tfiPhone: UITextField!
    @IBOutlet weak var butRequest: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.layoutSettings()
        // Do any additional setup after loading the view.
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

    func layoutSettings() {
        vieDocType.layer.cornerRadius = 5
        vieDocType.layer.masksToBounds = true
        vieDocNumber.layer.cornerRadius = 5
        vieDocNumber.layer.masksToBounds = true
        viePhone.layer.cornerRadius = 5
        viePhone.layer.masksToBounds = true
        butRequest.layer.cornerRadius = 15
        butRequest.layer.masksToBounds = true
        butRequest.layer.borderWidth = 2
        butRequest.layer.borderColor = butRequest.tintColor.CGColor
        
    }
}
