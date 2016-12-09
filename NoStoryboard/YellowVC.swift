//
//  ViewController.swift
//  NoStoryboard
//
//  Created by Spencer Forrest on 09/12/2016.
//  Copyright © 2016 Spencer Forrest. All rights reserved.
//

import UIKit

class YellowVC: UIViewController {
    
    var blueVC: BlueVC!
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func loadBluePressed(_ sender: Any) {
        blueVC = BlueVC(data: "Bonjour !")
        self.present(blueVC, animated: true, completion: nil)
    }
}

