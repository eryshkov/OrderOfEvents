//
//  LastViewController.swift
//  Order of Events
//
//  Created by Evgeniy Ryshkov on 03.03.2018.
//  Copyright © 2018 Evgeniy Ryshkov. All rights reserved.
//

import UIKit

class LastViewController: UIViewController {
    
    weak var arrivalViewController: MiddleViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillDisappear(_ animated: Bool) {
        arrivalViewController?.updateLabel(event: "Back Button Pressed")
    }

    


}
