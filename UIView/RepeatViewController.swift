//
//  RepeatViewController.swift
//  UIView
//
//  Created by Ziloon Zhao on 2016/10/9.
//  Copyright © 2016年 Ziloon Zhao. All rights reserved.
//

import UIKit

class RepeatViewController: UIViewController {

    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    
    var color1 = UIColor(red:0.91, green:0.27, blue:0.24, alpha:1.00)
    var color2 = UIColor(red:0.98, green:0.73, blue:0.18, alpha:1.00)
    var color3 = UIColor(red:0.23, green:0.65, blue:0.34, alpha:1.00)
    var color4 = UIColor(red:0.27, green:0.53, blue:0.95, alpha:1.00)
    
    var centerPoint = CGPoint.init(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height / 2)
    
    var point1 = CGPoint.init(x: UIScreen.main.bounds.width / 2 - 55, y: UIScreen.main.bounds.height / 2 - 55)
    var point2 = CGPoint.init(x: UIScreen.main.bounds.width / 2 + 55, y: UIScreen.main.bounds.height / 2 - 55)
    var point3 = CGPoint.init(x: UIScreen.main.bounds.width / 2 + 55, y: UIScreen.main.bounds.height / 2 + 55)
    var point4 = CGPoint.init(x: UIScreen.main.bounds.width / 2 - 55, y: UIScreen.main.bounds.height / 2 + 55)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view1.backgroundColor = self.color1
        self.view2.backgroundColor = self.color2
        self.view3.backgroundColor = self.color3
        self.view4.backgroundColor = self.color4
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        UIView.animate(withDuration: 0.7, delay: 0, options: [.repeat, .curveEaseOut] , animations: {
            
            self.view1.transform = self.view1.transform.rotated(by: CGFloat(0.5*M_PI))
            self.view1.center = self.point2
            self.view1.backgroundColor = self.color2
            
            self.view2.transform = self.view2.transform.rotated(by: CGFloat(0.5*M_PI))
            self.view2.center = self.point3
            self.view2.backgroundColor = self.color3
            
            self.view3.transform = self.view3.transform.rotated(by: CGFloat(0.5*M_PI))
            self.view3.center = self.point4
            self.view3.backgroundColor = self.color4
            
            self.view4.transform=self.view4.transform.rotated(by: CGFloat(0.5*M_PI))
            self.view4.center = self.point1
            self.view4.backgroundColor = self.color1
            }, completion: nil)
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
