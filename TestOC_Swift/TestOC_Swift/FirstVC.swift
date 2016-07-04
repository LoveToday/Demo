//
//  FirstVC.swift
//  TestOC_Swift
//
//  Created by TomatoPeter on 16/3/30.
//  Copyright © 2016年 ChenJianglin. All rights reserved.
//

import UIKit

class FirstVC: UIViewController,UIWebViewDelegate {

    @IBOutlet var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "文章列表"

        // Do any additional setup after loading the view.
        let path = NSBundle.mainBundle().pathForResource("Article", ofType: "html");
        let url = NSURL.fileURLWithPath(path!);
        let request = NSURLRequest(URL: url);
        self.webView.loadRequest(request);
        self.webView.delegate = self;
    }
    func webViewDidFinishLoad(webView: UIWebView){
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
