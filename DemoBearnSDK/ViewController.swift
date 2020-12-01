//
//  ViewController.swift
//  DemoBearnSDK
//
//  Created by Iurie Manea on 10/5/20.
//

import UIKit
import BearnSDK

class ViewController: UIViewController {

    @IBOutlet weak var btn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
    }

    @IBAction func btnTouch(_ sender: Any) {
        Bearn.shared.present(on: self)
    }
    
}

