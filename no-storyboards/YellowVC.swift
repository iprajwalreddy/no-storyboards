//
//  ViewController.swift
//  no-storyboards
//
//  Created by Prajwal Reddy on 06/03/17.
//  Copyright © 2017 Prajwal Reddy. All rights reserved.
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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //doing segways. The data is passed just as the next view controller is being created.
    @IBAction func loadBlueView(_ sender: Any) {
        blueVC = BlueVC(printMe: "Print this now!")
        self.present(blueVC, animated: true, completion: nil)
    }
}

