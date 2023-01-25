//
//  ViewController.swift
//  Calculator
//
//  Created by Usuario on 12/01/2023.
//  Copyright © 2023 IvanMulero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var txtresult: UILabel!
    
    var numero = ""
    var n:String = ""
    var n1:String = ""
    var opi:Float=0
    var result = ""
    var decimal = false
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        if  view.backgroundColor == .systemBackground {
            txtresult.textColor = UIColor.white
        }
    }
    @IBAction func OnclickDigi(_ sender: UIButton) {
        numero += "\(sender.tag)"
       
        txtresult.text = "\(numero)"
    }
    @IBAction func OnclickOperacion(_ sender: UIButton) {
       let  operacion = sender.tag
      
        switch operacion {
        case 0:
            n = numero
            numero = ""
            opi = 0
            txtresult.text = "+"
            decimal = false
            case 1:
             n = numero
                       numero = ""
                       opi = 1
                       txtresult.text = "-"
            decimal = false
            
            case 2:
            n = numero
                      numero = ""
                        opi = 2
                        txtresult.text = "*"
            decimal = false
            
            case 3:
           n = numero
                      numero = ""
                        opi = 3
                        txtresult.text = "/"
            decimal = false
           
            
        default:
           txtresult.text = "caracter invalido"
        }
    }
    
    @IBAction func OnclickDecimal(_ sender: UIButton) {
       
        if !decimal {
            numero += "."
            decimal = true
        }
         txtresult.text = "\(numero)"
    }
    @IBAction func OnclickAC(_ sender: UIButton) {
    
        numero = ""
        n = ""
        n1 = ""
        opi =  0
        decimal = false
        txtresult.text = "0"
    }
    
    @IBAction func OnclickIgual(_ sender: UIButton) {
       n1 = numero
        numero = ""
        decimal = false
        switch opi {
        case 0:
             result = "\(Float(n)! + Float(n1)!)"
            case 1:
                result = "\(Float(n)! - Float(n1)!)"
            case 2:
                 result = "\(Float(n)! * Float(n1)!)"
            case 3:
                result = "\(Float(n)! / Float(n1)!)"
        default:
            break;
        }
         txtresult.text = result
    }
}

