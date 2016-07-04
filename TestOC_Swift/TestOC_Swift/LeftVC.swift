//
//  LeftVC.swift
//  TestOC_Swift
//
//  Created by TomatoPeter on 16/6/17.
//  Copyright © 2016年 ChenJianglin. All rights reserved.
//

import UIKit

class LeftVC: UIViewController {

    @IBAction func transitonButtonClicked(sender: AnyObject) {
        let vc1 = VC1(nibName: "VC1", bundle: nil)
        self.navigationController?.pushViewController(vc1, animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

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
