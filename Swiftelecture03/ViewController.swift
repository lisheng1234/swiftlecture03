//
//  ViewController.swift
//  Swiftelecture03
//
//  Created by stu1 on 2018/7/22.
//  Copyright © 2018年 stu1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var switchstatus: UISwitch!
    //@IBOutlet weak var touchView: UIView!
    
    @IBOutlet weak var stepperstatus: UIStepper!
    @IBOutlet weak var sliderstatus: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lbName.text = "欢迎光临"
        sliderstatus.value = 0.0
        
    }


    @IBAction func btnConf(_ sender: Any) {
        
         lbName.text="李胜你好"
        
        let button = sender as!UIButton
        button.setTitle("OK", for: UIControl.State.normal)
    }
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        print("touchesBegan")
//        if let touch = touches.first{
//            let loc = touch.location(in: self.touchView)
//            print("\(loc)")
//            if(self.touchView.bounds.contains(loc)){
//                self.touchView.backgroundColor = UIColor.red
//            }else{
//                self.touchView.backgroundColor = UIColor.green
//            }
//        }
//
//    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchesEnded")
    }
    

    @IBAction func switchChanged(_ sender: Any) {
        print("\(switchstatus.isOn)")
    }
 
    @IBAction func sendervalue(_ sender: Any) {
        print("\(sliderstatus.value)")
    }
    @IBAction func stepperchanged(_ sender: Any) {
        print("\(stepperstatus.value)")
        sliderstatus.value = Float(stepperstatus.value)
        print("\(sliderstatus.value)")
    }
    
    
    
}

