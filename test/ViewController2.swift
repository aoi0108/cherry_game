//
//  ViewController2.swift
//  test
//
//  Created by 平松蒼惟 on 2023/06/29.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var cherry: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    var timer : Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cherry.center.y = -5
        
        timer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true, block: { (t) in
            self.cherry.center.y  = self.cherry.center.y + 1
            
            if self.cherry.center.y > 700{
                self.cherry.center.y = -5
                
            }
        })
        

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func soda(_ sender: Any) {
        timer.invalidate()
        
        if cherry.center.y < 360 {
            
            label.text = "Try Again!"
            cherry.center.y = -5
            
            timer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true, block: { (t) in
                self.cherry.center.y  = self.cherry.center.y + 1
                
                
            })
            
        } else if cherry.center.y < 430  {
            
            label.text = "Clear!"
        
        }else{
            
            label.text = "Try Again!"
            cherry.center.y = -5
            
            timer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true, block: { (t) in
                self.cherry.center.y  = self.cherry.center.y + 1
                
            })
            
        }
        
        

    }
    


}
