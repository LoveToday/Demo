//
//  ViewController.m
//  TestOC_Swift
//
//  Created by TomatoPeter on 16/3/30.
//  Copyright © 2016年 ChenJianglin. All rights reserved.
//

#import "ViewController.h"
#import "TestOC_Swift-Swift.h"

@interface ViewController ()<UIWebViewDelegate>
@property (strong, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"新闻列表";
    NSString *path = [[NSBundle mainBundle] pathForResource:@"File" ofType:@"html"];
    NSURL *url = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    self.webView.delegate = self;
    [self.webView loadRequest:request];
    
    
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"测试" style:UIBarButtonItemStylePlain target:self action:@selector(rightItemClicked)];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"测试" style:UIBarButtonItemStylePlain target:self action:@selector(leftItemClicked)];
    
    
}
- (void)leftItemClicked
{
    LeftVC *leftVC = [[LeftVC alloc] initWithNibName:@"LeftVC" bundle:nil];
    [self.navigationController pushViewController:leftVC animated:YES];
    
}

- (void)rightItemClicked
{
    FirstVC *firstVC = [[FirstVC alloc] initWithNibName:@"FirstVC" bundle:nil];
    [self.navigationController pushViewController:firstVC animated:YES];
}
- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
