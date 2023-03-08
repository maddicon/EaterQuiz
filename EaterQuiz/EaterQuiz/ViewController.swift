//
//  ViewController.swift
//  EaterQuiz
//
//  Created by Pate, Maddi on 3/8/23.
//

import UIKit

class ViewController: UIViewController {
    
    var eggs:Int = 0
    var pickles:Int = 0
    var sushi:Int = 0
    var broccoli:Int = 0
    var avacado:Int = 0
    var total:Int = 0
    var sushibonus:Int = 0

    @IBOutlet weak var myName: UITextField!
    
    
    @IBOutlet weak var myTotal: UILabel!
    
    @IBOutlet weak var myImage: UIImageView!
    
    @IBAction func myButton(_ sender: Any) {
        let name = myName.text!
                total = eggs + pickles + sushi + broccoli + avacado + sushibonus
                if(total <= 1) {
                    myTotal.text = "\(name), you are very picky!"
                    myImage.image = UIImage(named: "picky")
                }
                else if(total > 1 && total <= 4){
                    myTotal.text = "\(name), you like most foods"
                    myImage.image = UIImage(named: "mediumfood")
                }
                else {
                    myTotal.text = "\(name), you are an adventurous eater!"
                    myImage.image = UIImage(named: "adventurous")
                }

    }
    
    
    
    @IBAction func selectEggs(_ sender: UISwitch) {
        if sender.isOn {
                    eggs = 1
                }
               else {
                    eggs = 0
                }
    }
    
    
    @IBAction func selectPickles(_ sender: UISwitch) {
        if sender.isOn {
                    pickles = 1
                }
               else {
                    pickles = 0
                }
    }
    
    @IBAction func selectSushi(_ sender: UISwitch) {
        if sender.isOn {
                    sushi = 1
                }
               else {
                    sushi = 0
                }
    }
    
    @IBAction func selectBroccoli(_ sender: UISwitch) {
        if sender.isOn {
                    broccoli = 1
                }
               else {
                    broccoli = 0
                }
    }
    
    
    @IBAction func selectAvacado(_ sender: UISwitch) {
        if sender.isOn {
                    avacado = 1
                }
               else {
                    avacado = 0
                }
    }
    
    
    
    
    @IBAction func myRating(_ sender: UISlider) {
        sushibonus = Int(sender.value)
    }
    
    @IBAction func submitName(_ sender: Any) {
        myName.resignFirstResponder()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    
}

