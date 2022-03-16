//
//  ViewController.swift
//  DemoBearnSDK
//
//  Created by Iurie Manea on 10/5/20.
//

import UIKit
import BearnSDK

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
    }
    
    @IBAction func btnDefaultTouch(_ sender: Any) {
        Bearn.shared.loadDefaultTheme()
        Bearn.shared.present()
    }

    @IBAction func btnCustomTouch(_ sender: Any) {
        Bearn.shared.loadCustomInfoFrom(bundle: .main, localizationStringsFile: "BearnStrings", localizationColorsFile: "BearnColors.json")
        Bearn.shared.present()
    }
    
    @IBAction func btnFederatedLoginTouch(_ sender: Any) {
        Bearn.shared.loadDefaultTheme()
        Bearn.shared.present(on: self,
                             parterId: "22ffa303-6c84-11ea-adfe-0e4cb9ff8a2a",
                             firstName: "Firstname",
                             lastName: "Lastname",
                             email: "test@testmail.com",
                             externalId: "12121212121212121211",
                             token: "11ffa303-6c84-11ea-adfe-0e4cb9ff1234")
    }
}

