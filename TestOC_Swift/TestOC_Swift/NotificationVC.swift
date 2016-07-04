//
//  NotificationVC.swift
//  TestOC_Swift
//
//  Created by TomatoPeter on 16/6/20.
//  Copyright © 2016年 ChenJianglin. All rights reserved.
//

import UIKit
protocol Notifier{
    
}
//所有要发送通知的对象或者结构体都要实现Notifier这个协议，然后提供一个实现了RawRepresentable的类型。其实就是一个字符串枚举。
class SubNotification:Notifier {
    enum Notification:String{
        case makingCoffe
        case coffeeMade
    }
    
    
    func addObserver(observer:AnyObject, selector:Selector, notification:Notification, object:AnyObject?){
        let observerName = nameFor(notification)
        
        NSNotificationCenter.defaultCenter().addObserver(observer, selector: selector, name: observerName, object: object)
        
    }
    
    private func nameFor(notification: Notification) -> String {
        return notification.rawValue
    }
}




class NotificationVC: UIViewController,Notifier {

    var mainQueue:dispatch_queue_t{
        return dispatch_get_main_queue()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "通知学习"

        // Do any additional setup after loading the view.

        
        SubNotification().addObserver(self, selector: Selector("changeBackgroudColor"), notification: .makingCoffe, object: nil)
        
        
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        //        这样就可以有一个统一的方式获取通知名称：  避免通知名称冲突
        let coffeeMade = SubNotification.Notification.makingCoffe.rawValue
        NSNotificationCenter.defaultCenter().postNotificationName(coffeeMade, object: nil)
        
    }
    func changeBackgroudColor(){
        let delayInSeconds = 2.0
        let popTime = dispatch_time(DISPATCH_TIME_NOW,
            Int64(delayInSeconds * Double(NSEC_PER_SEC))) // 1
        
        let block:()->Void = {
            self.view.backgroundColor = UIColor.redColor()
        }
        
        dispatch_after(popTime, mainQueue, block);
        
        
//        dispatch_after(popTime, mainQueue) { () -> Void in
//            self.view.backgroundColor = UIColor.redColor()
//        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    deinit{
        
        NSNotificationCenter.defaultCenter().removeObserver(self)
        
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
