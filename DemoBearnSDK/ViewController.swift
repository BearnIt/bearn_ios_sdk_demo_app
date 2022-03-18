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
    
    @IBAction func btnAsViewControllerWithFederatedTouch(_ sender: Any) {
        
        Bearn.shared.loadCustomInfoFrom(bundle: .main, localizationStringsFile: "BearnStrings", localizationColorsFile: "BearnColors.json")
        
        // Create instance of Bearn View Controller with federated login
        let bearnVC = Bearn.shared.bearnViewController(isExitHidden: false, // Set isExitHidden to "true" if you do not need the Exit button
                                                       // set parterId to nil or empty string if need to dispaly Bearn Login screen
                                                       parterId: "22ffa303-6c84-11ea-adfe-0e4cb9ff8a2a",
                                                       firstName: "John4",
                                                       lastName: "Doe4",
                                                       email: "john.doe4@testmail.com",
                                                       externalId: "121212121212121212",
                                                       token: "11ffa303-6c84-11ea-adfe-0e4cb9ff1234",
                                                       // Set onClose to nil in case exit is not visible
                                                       onClose: { bearnViewController in
            // Calls when the Exit button is pressed, if visible.
            bearnViewController?.dismiss(animated: true, completion: nil)
        })
        
        // Present bearn on current ViewController
        self.present(bearnVC, animated: true, completion: nil)
    }
}

