//
//  ViewController.swift
//  calculator
//
//  Created by mohamed hossam on 1/23/21.
//  Copyright © 2021 mohamed hossam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label_value: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var PLUS = 0
    var MINUS = 1
    let MULTIPLY = 2
    let DIVIDE = 3
    var num1 :Double?
    var num2 :Double?
    var operand:Int?
    var answer:Double = 0.0
    var oper=true
    var x=0.0
    
   func clear(){
             label_value.text=""
           
         }
    func clear_button(){
        label_value.text=""
      num1 = nil
      num2 = nil

    }
    func save_value()  {
        if label_value.text==""{
            num1=nil
            
        }
        else{
        num1=Double(label_value.text!)!
        clear()
        }
    }
   
    func addnumbetinput(number:String)   {
        if oper==false{
            label_value.text=number
        }
        else{
        var textnumber=label_value.text!
        textnumber=textnumber+number
        label_value.text=textnumber
    }
    }

    @IBAction func one_num(_ sender: Any) {
      
      addnumbetinput(number: "1")
       
    }
    
    @IBAction func two_num(_ sender: Any) {
        addnumbetinput(number: "2")
    }
    
    @IBAction func three_num(_ sender: Any) {
        addnumbetinput(number: "3")
    }
    
    @IBAction func four_num(_ sender: Any) {
          addnumbetinput(number: "4")
    }
    
    @IBAction func five_num(_ sender: Any) {
         addnumbetinput(number: "5")
    }
    
    @IBAction func sex_num(_ sender: Any) {
          addnumbetinput(number: "6")
    }
    
    @IBAction func seven_num(_ sender: Any) {
          addnumbetinput(number: "7")
    }
    
    @IBAction func eight_num(_ sender: Any) {
          addnumbetinput(number: "8")
    }
    
    @IBAction func nine_num(_ sender: Any) {
          addnumbetinput(number: "9")
    }
    
    @IBAction func zero_num(_ sender: Any) {
          addnumbetinput(number: "0")
          oper=false
    }
    
    @IBAction func dot(_ sender: Any) {
         addnumbetinput(number: ".")
    }
    
    
    
    @IBAction func plus_Button(_ sender: Any) {
        save_value()
        operand=PLUS
        
    }
    
    @IBAction func mines_Button(_ sender: Any) {
        save_value()
        operand=MINUS
    }
    
    @IBAction func multiply_Button(_ sender: Any) {
        save_value()
        operand=MULTIPLY
    }
    @IBAction func divide_button(_ sender: Any) {
        save_value()
        operand=DIVIDE
    }
    
    @IBAction func sum_Button(_ sender: Any) {
        if (num1 == nil || label_value.text=="") {
            label_value.text="Syntax ERROR"
        }
            else{
               
                      
                     switch operand {
                      case PLUS:
                          
                           num2=Double(label_value.text!)!
                               answer=num1!+num2!
                           break
                          case MINUS:
                          num2=Double(label_value.text!)!
                              answer=num1!-num2!
                          break
                          case MULTIPLY:
                          num2=Double(label_value.text!)!
                              answer=num1!*num2!
                          break
                          case DIVIDE:
                          num2=Double(label_value.text!)!
                              answer=num1!/num2!
                          break
                      default:
                          answer=0.0
                          break
                      }
                     
                    
                    
           label_value.text="\(answer)"

            
        }
      
        
        
        
    }
    
    @IBAction func clear_button(_ sender: Any) {
        clear_button()
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

