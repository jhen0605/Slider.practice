//
//  ViewController.swift
//  Slider練習
//
//  Created by 簡吟真 on 2021/4/2.
//

import UIKit

class ViewController: UIViewController {

    //IBO
    @IBOutlet weak var harryPotter: UIImageView!
    @IBOutlet weak var portKey: UIImageView!
    @IBOutlet weak var deathlyHallows: UIImageView!
    @IBOutlet weak var owl: UIImageView!
    @IBOutlet weak var schoolBadge: UIImageView!
    @IBOutlet weak var goldenSnitch: UIImageView!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var dementor1: UIImageView!
    @IBOutlet weak var dementor2: UIImageView!
    
    //貓頭鷹繞圈速度、位置
    func updateLocation(degrees: CGFloat) {
        owl.transform = CGAffineTransform.identity.rotated(by: CGFloat.pi/180*degrees).translatedBy(x: 20, y: -250)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
    //哈利波特、港口鑰的水平移動與滑軌設定
    @IBAction func slider(_ sender: UISlider){
        let speed = sender.value * 0.4
        
        harryPotter.frame.origin.x = CGFloat(464-speed)
        portKey.frame.origin.x = CGFloat(118+speed)

        
    //催狂魔的垂直移動、移動速度
        dementor1.frame.origin.y = CGFloat(42-speed/6)
        dementor2.frame.origin.y = CGFloat(283-speed/5)
    
        
    //漸出的死神聖物
        deathlyHallows.alpha = CGFloat(sender.value/360)
        
    //漸出的金探子
        goldenSnitch.alpha = CGFloat(sender.value/360)
        
    //漸出的校徽
        schoolBadge.alpha = CGFloat(sender.value/360)
        
        
    //貓頭鷹繞圈角度
        updateLocation(degrees: CGFloat(sender.value/2)+270)
        }
    }
