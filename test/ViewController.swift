//
//  ViewController.swift
//  test
//
//  Created by KaiChieh on 07/03/2018.
//  Copyright © 2018 KaiChieh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var colorSet: UIColor? {
        didSet {
            viewOfShow.backgroundColor = colorSet
        }
    }
    //MARK: - IBOutlet
    @IBOutlet weak var viewOfShow: UIView!
    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    @IBOutlet weak var sliderBlue: UISlider!

    //MARK: - IBAction
    @IBAction func sliderValueChange(_ sender: UISlider) {
        colorSet = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1)

    }
    @IBAction func btnOK(_ sender: UIButton) {
        if let secondVC = storyboard?.instantiateViewController(withIdentifier: "ViewControllerSecond") as? ViewControllerSecond {
            secondVC.mybackgroungColor = colorSet
            present(secondVC, animated: true, completion: nil)
        }
    }
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

