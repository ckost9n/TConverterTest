//
//  ViewController.swift
//  TConverterTest
//
//  Created by Konstantin on 14.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = -100
            slider.value = 0
        }
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        
        let temperatureCelsius = Int(round(sender.value))
        celiusLabel.text = "\(temperatureCelsius)ºC"
        let fahrenheitTemperature = Int(round((sender.value * 9 / 5) + 32))
        fahrenheitLabel.text = "\(fahrenheitTemperature)ºF"
        
    }
    
}

