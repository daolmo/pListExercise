//
//  ViewController.swift
//  Daniel_O_pListExercise
//
//  Created by Daniel Olmo on 8/10/20.
//  Copyright © 2020 Daniel Olmo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func mySaveButton(_ sender: Any) {
        UserDefaults.standard.set(myText.text, forKey: "Text")
        UserDefaults.standard.set(mySwitch.isOn, forKey: "Switch")
        UserDefaults.standard.set(mySlider.value, forKey: "Slider")
    }
    
    @IBAction func myLoadButton(_ sender: Any) {
        mySwitch.isOn = UserDefaults.standard.bool(forKey: "Switch")
        mySlider.value = UserDefaults.standard.float(forKey: "Slider")
        myText.text = UserDefaults.standard.string(forKey: "Text")
    }
    
    @IBAction func myDeleteButton(_ sender: Any) {
        mySwitch.isOn = true
        mySlider.value = 0.5
        myText.text = ""
    }
    
    @IBOutlet var myText: UITextField!
    
    @IBOutlet var mySlider: UISlider!
    
    @IBOutlet var mySwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

