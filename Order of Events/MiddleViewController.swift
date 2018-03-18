//
//  MiddleViewController.swift
//  Order of Events
//
//  Created by Evgeniy Ryshkov on 03.03.2018.
//  Copyright © 2018 Evgeniy Ryshkov. All rights reserved.
//

import UIKit

class MiddleViewController: UIViewController {
    
    var eventNumber: Int = 1
    
    @IBOutlet weak var watsHappened: UILabel!
    
    func updateLabel(event: String) {
        if let existingText = watsHappened.text{
            watsHappened.text = "\(existingText)\nEvent number \(eventNumber) \(event)"
            eventNumber += 1
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabel(event: "was viewDidLoad")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateLabel(event: "was viewWillAppear")
    }
   
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        updateLabel(event: "was viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        updateLabel(event: "was viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        updateLabel(event: "was viewDidDisappear")
    }
    @IBAction func buttonPressed(_ sender: UIButton) {
        updateLabel(event: "Button Pressed")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! LastViewController
        dvc.arrivalViewController = self
    }
    
}
