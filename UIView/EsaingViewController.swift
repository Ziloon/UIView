//
//  EsaingViewController.swift
//  UIView
//
//  Created by Ziloon Zhao on 2016/10/9.
//  Copyright © 2016年 Ziloon Zhao. All rights reserved.
//

import UIKit

class EsaingViewController: UIViewController {

    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1, delay: 0, options: [.curveEaseInOut, .autoreverse, .repeat], animations: {
            self.view1.center.x = UIScreen.main.bounds.width -  self.view1.center.x
            self.view1.alpha = 0.8
            }, completion: nil)
        
        UIView.animate(withDuration: 1, delay: 0.1, options: [.curveEaseInOut, .autoreverse, .repeat], animations: {
            self.view2.center.x = UIScreen.main.bounds.width -  self.view2.center.x
            self.view2.alpha = 0.6
            }, completion: nil)
        
        UIView.animate(withDuration: 1, delay: 0.2, options: [.curveEaseInOut, .autoreverse, .repeat], animations: {
            self.view3.center.x = UIScreen.main.bounds.width -  self.view3.center.x
            self.view3.alpha = 0.4
            }, completion: nil)
        
        UIView.animate(withDuration: 1, delay: 0.3, options: [.curveEaseInOut, .autoreverse, .repeat], animations: {
            self.view4.center.x = UIScreen.main.bounds.width -  self.view4.center.x
            self.view4.alpha = 0.2
            }, completion: nil)
        
        UIView.animate(withDuration: 1, delay: 0.4, options: [.curveEaseInOut, .autoreverse, .repeat], animations: {
            self.view5.center.x = UIScreen.main.bounds.width -  self.view5.center.x
            self.view5.alpha = 0
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
