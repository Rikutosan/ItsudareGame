//
//  ViewController.swift
//  ItsuDareGame
//
//  Created by YUMAKOMORI on 2015/09/02.
//  Copyright (c) 2015年 YUMAKOMORI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var itsu:UILabel!
    @IBOutlet var doko:UILabel!
    @IBOutlet var dare:UILabel!
    @IBOutlet var doushita:UILabel!
    
    var itsuArray:[String] = ["10年前","1年前","1週間前","一昨日","昨日","今日"]
    var dokodeArray:[String] = ["東京で","山の上で","アメリカで","家で","学校で","クラスで"]
    var daregaArray:[String] = ["あなたが","僕が","大統領が","兄が","先生が","友達が"]
    var doushitaArray:[String] = ["誕生した","叫んだ","演説した","倒れた","怒った","踊った"]
    
    
    var index:Int = 0
    

    var number = Int(arc4random_uniform(4))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func change(){
        itsu.text = itsuArray[index]
        doko.text = dokodeArray[index]
        dare.text = daregaArray[index]
        doushita.text = doushitaArray[index]
        
        index = index + 1
        
        
        if index > 5{
            index = 0
        }

    }
    @IBAction func reset(){
        itsu.text = "----"
        doko.text = "----"
        dare.text = "----"
        doushita.text = "----"
        
        index = 0
        
        
        
    }
    @IBAction func random(){
        var itsuindex = arc4random_uniform(5)
        var dokoindex = arc4random_uniform(5)
        var dareindex = arc4random_uniform(5)
        var doushitaindex = arc4random_uniform(5)
        
        itsu.text = itsuArray[Int(itsuindex)]
        doko.text = dokodeArray[Int(dokoindex)]
        dare.text = daregaArray[Int(dareindex)]
        doushita.text = doushitaArray[Int(doushitaindex)]
    }

}

