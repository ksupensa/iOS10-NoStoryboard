//
//  BlueVC.swift
//  NoStoryboard
//
//  Created by Spencer Forrest on 09/12/2016.
//  Copyright © 2016 Spencer Forrest. All rights reserved.
//

import UIKit

class BlueVC: UIViewController {
    
    @IBOutlet weak var titleLbl: UILabel!
    var textReceived = ""
    
    convenience init(data: Any){
        self.init(nibName: "BlueVC", bundle: nil)
        textReceived = data as! String
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        titleLbl.text = textReceived
    }

    @IBAction func backPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
