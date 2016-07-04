//
//  VC1.swift
//  TestOC_Swift
//
//  Created by TomatoPeter on 16/6/17.
//  Copyright © 2016年 ChenJianglin. All rights reserved.
//

import UIKit

class VC1: UIViewController{
    
    
    @IBAction func buttonClicked(sender: AnyObject) {
        let vc2 = VC2()
        self.presentViewController(vc2, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        //为什么要设置为Custom，在最后说明.
        self.view.backgroundColor = UIColor.grayColor()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
