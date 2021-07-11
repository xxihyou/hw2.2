//
//  ViewController.swift
//  hw2.2
//
//  Created by Maria Berger on 09.07.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorDisplay: UIView!
    
    @IBOutlet weak var redColorIndex: UILabel!
    @IBOutlet weak var greenColorIndex: UILabel!
    @IBOutlet weak var blueColorIndex: UILabel!
   
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func redSliderChanged(_ sender: UISlider) {
        let redValue = CGFloat(redSlider.value)
        let greenValue = CGFloat(greenSlider.value)
        let blueValue = CGFloat(blueSlider.value)
        
        colorDisplay.backgroundColor = UIColor(displayP3Red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
        
        redColorIndex.text = String(redSlider.value)
    }
    
    @IBAction func greenSliderChanged(_ sender: UISlider) {
        let redValue = CGFloat(redSlider.value)
        let greenValue = CGFloat(greenSlider.value)
        let blueValue = CGFloat(blueSlider.value)
        
        colorDisplay.backgroundColor = UIColor(displayP3Red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
        
        greenColorIndex.text = String(greenSlider.value)
    }
    
    
    @IBAction func blueSlider(_ sender: UISlider) {
        let redValue = CGFloat(redSlider.value)
        let greenValue = CGFloat(greenSlider.value)
        let blueValue = CGFloat(blueSlider.value)
        
        colorDisplay.backgroundColor = UIColor(displayP3Red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
        
        blueColorIndex.text = String(blueSlider.value)
    }
    
    
}

