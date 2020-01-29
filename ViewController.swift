//
//  ViewController.swift
//  colourme
//
//  Created by Felix ITs 03 on 14/11/18.
//  Copyright © 2018 chaitali. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var red :Float?
    var green:Float?
    var blue:Float?
    var mix:Float?
    
    @IBAction func greenaction(_ sender: UISlider)
    {
        changeTogreen()
        changetoany()
    }
    
    
    @IBAction func blueaction(_ sender: UISlider)
    {
        changeToblue()
        changetoany()
    }
    
    @IBAction func redaction(_ sender: UISlider)
    {
        changeTored()
        changetoany()
    }
    
    
    
   
    
    @IBOutlet weak var mixslider: UISlider!
    
    @IBOutlet weak var blueslider: UISlider!
    
    @IBOutlet weak var greenslider: UISlider!
    
    @IBOutlet weak var redslider: UISlider!
    @IBOutlet weak var bluelabel: UILabel!
    @IBOutlet weak var greenlabel: UILabel!
    
    @IBOutlet weak var redlabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
@objc
    func changeTored()
    {
        red = redslider.value
        redlabel.text = String(red!)
        view.backgroundColor = UIColor(red: (CGFloat(red!)), green: 0, blue: 0, alpha: 1)
    }
    
    @objc
    func changeTogreen()
    {
        green = greenslider.value
        greenlabel.text = String(green!)
        view.backgroundColor = UIColor(red: 0, green: (CGFloat(green!)), blue: 0, alpha: 1)
    }
    
    @objc
    func changeToblue()
    {
        blue = blueslider.value
        bluelabel.text = String(blue!)
        view.backgroundColor = UIColor(red: 0, green: 0, blue: (CGFloat(blue!)), alpha: 1)
    }
    
    @objc
    func changetoany()
    {
        blue = blueslider.value
        red = redslider.value
        green = greenslider.value

        bluelabel.text = String(blue!)
        greenlabel.text = String(green!)
        redlabel.text = String(red!)
        view.backgroundColor = UIColor(red: (CGFloat(red!)), green: (CGFloat(green!)), blue: (CGFloat(blue!)), alpha: 1)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

