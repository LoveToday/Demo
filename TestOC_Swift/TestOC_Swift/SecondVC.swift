//
//  SecondVC.swift
//  TestOC_Swift
//
//  Created by TomatoPeter on 16/6/8.
//  Copyright © 2016年 ChenJianglin. All rights reserved.
//

import UIKit

class SecondVC: UIViewController,UIWebViewDelegate {

    @IBOutlet var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()

        // Do any additional setup after loading the view.
        let path = NSBundle.mainBundle().pathForResource("Js", ofType: "html")
        let url = NSURL.fileURLWithPath(path!)
        self.webView.loadRequest(NSURLRequest(URL: url));
        self.webView.delegate = self;
        
    }
    func webViewDidFinishLoad(webView: UIWebView)
    {
//      webView.stringByEvaluatingJavaScriptFromString("document.body.style.backgroundColor='white'")
        webView.stringByEvaluatingJavaScriptFromString("document.getElementById('pa').innerHTML='<span>插入一个标签</span>'")
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
