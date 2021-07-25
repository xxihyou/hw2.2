//
//  ViewController.swift
//  hw2.2
//
//  Created by Maria Berger on 09.07.2021.
//

import UIKit

class ColorChangerViewController: UIViewController {
    
// MARK: - Outlets
    @IBOutlet weak var colorDisplay: UIView!
    
    @IBOutlet weak var redColorIndex: UILabel!
    @IBOutlet weak var greenColorIndex: UILabel!
    @IBOutlet weak var blueColorIndex: UILabel!
   
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redTextField: UITextField!
    @IBOutlet weak var greenTextField: UITextField!
    @IBOutlet weak var blueTextField: UITextField!
    
    @IBOutlet weak var doneButton: UIButton!
    
// MARK: - Methods
    var delegate: ColorChangerViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorDisplay.layer.cornerRadius = 15
        
        redSliderChanged(redSlider)
        greenSliderChanged(greenSlider)
        blueSliderChanged(blueSlider)
        
        
    }
    
    @IBAction func redSliderChanged(_ sender: UISlider) {
        let redValue = CGFloat(redSlider.value)
        let greenValue = CGFloat(greenSlider.value)
        let blueValue = CGFloat(blueSlider.value)
        
        colorDisplay.backgroundColor = UIColor(displayP3Red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
        
        redColorIndex.text = String(format: "%.2f", redSlider.value)
        redTextField.text = String(format: "%.2f", redSlider.value)
    }
    
    @IBAction func greenSliderChanged(_ sender: UISlider) {
        let redValue = CGFloat(redSlider.value)
        let greenValue = CGFloat(greenSlider.value)
        let blueValue = CGFloat(blueSlider.value)
        
        colorDisplay.backgroundColor = UIColor(displayP3Red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
        
        greenColorIndex.text = String(format: "%.2f", greenSlider.value)
        greenTextField.text = String(format: "%.2f", greenSlider.value)
    }
    
    
    @IBAction func blueSliderChanged(_ sender: UISlider) {
        let redValue = CGFloat(redSlider.value)
        let greenValue = CGFloat(greenSlider.value)
        let blueValue = CGFloat(blueSlider.value)
        
        colorDisplay.backgroundColor = UIColor(displayP3Red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
        
        blueColorIndex.text = String(format: "%.2f", blueSlider.value)
        blueTextField.text = String(format: "%.2f", blueSlider.value)
    }
    
    @IBAction func doneButtonPressed() {
        redTextField.endEditing(true)
        greenTextField.endEditing(true)
        blueTextField.endEditing(true)
        delegate?.setNewColor(red: redSlider.value , green: greenSlider.value, blue: blueSlider.value)
        dismiss(animated: true)
    }
// MARK: - Keyboard

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    super.touchesBegan(touches, with: event)
    view.endEditing(true)
    }
}

// MARK: - Extension
extension ColorChangerViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
                textField.resignFirstResponder()
                return true
            }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        guard let newValue = textField.text else { return }
        if let currentValue = Float(newValue) {
                        switch textField.tag {
                        case 0: redSlider.value = currentValue
                        case 1: greenSlider.value = currentValue
                        case 2: blueSlider.value = currentValue
                        default: break
                        }
        
            redSliderChanged(redSlider)
            greenSliderChanged(greenSlider)
            blueSliderChanged(blueSlider)
   
}
    }
}
