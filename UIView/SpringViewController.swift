//
//  SpringViewController.swift
//  UIView
//
//  Created by Ziloon Zhao on 2016/10/9.
//  Copyright © 2016年 Ziloon Zhao. All rights reserved.
//

import UIKit

class SpringViewController: UIViewController {
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var yellowView: UIView!

    override func viewDidLoad() {
                super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 5, delay: 0, usingSpringWithDamping: 0.1, initialSpringVelocity: 0, options: [.repeat], animations: {
            self.redView.center.y = self.view.bounds.size.height - self.redView.center.y
            }, completion: nil)
        
        UIView.animate(withDuration: 5, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 0, options: [.repeat], animations: {
            self.yellowView.center.y = self.view.bounds.size.height - self.yellowView.center.y
            }, completion: nil)
        
        UIView.animate(withDuration: 5, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 3, options: [.repeat], animations: {
            self.blueView.center.y = self.view.bounds.size.height - self.blueView.center.y
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
