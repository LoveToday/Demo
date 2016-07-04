//
//  VC2.swift
//  TestOC_Swift
//
//  Created by TomatoPeter on 16/6/17.
//  Copyright © 2016年 ChenJianglin. All rights reserved.
//

import UIKit

class VC2: UIViewController,UIViewControllerTransitioningDelegate, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.transitioningDelegate = self;

        // Do any additional setup after loading the view.
        //为什么要设置为Custom，在最后说明.
        self.modalPresentationStyle = .Custom;
        self.view.backgroundColor = UIColor.redColor()
        
        
        let button = UIButton(type: .Custom)
        button.setTitle("返回", forState: .Normal)
        button.addTarget(self, action: Selector("buttonBack"), forControlEvents: .TouchUpInside)
        button.frame = CGRectMake(100, 100, 200, 44);
        self.view.addSubview(button)
        
    }
    func buttonBack(){
        self.dismissViewControllerAnimated(true, completion: nil)
    }
//    func interactionControllerForPresentation(animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning? {
//        
//    }
//    
//    func interactionControllerForDismissal(animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning? {
//        
//    }
    func createAlert(){
        
    }
    
    
    
    func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning?{
      return XWPresentOneTransition(transitionType: .Push)
    }
    func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning?{
        return XWPresentOneTransition(transitionType: .Pop)
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
