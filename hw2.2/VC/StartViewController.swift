//
//  StartViewController.swift
//  hw2.2
//
//  Created by Maria Berger on 23.07.2021.
//

import UIKit

protocol ColorChangerViewControllerDelegate {
    func setNewColor(red: Float, green: Float, blue: Float)
}


class StartViewController: UIViewController {
    
    var colorChangerVC = ColorChangerViewController()
        
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        colorChangerVC.delegate = self
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
    }
}

extension StartViewController: ColorChangerViewControllerDelegate {
    func setNewColor(red: Float, green: Float, blue: Float) {
        
            let redColor = CGFloat(red)
            let greenColor = CGFloat(green)
            let blueColor = CGFloat(blue)
            
            view.backgroundColor = UIColor(displayP3Red: redColor, green: greenColor, blue: blueColor, alpha: 1.0)
    }
}
