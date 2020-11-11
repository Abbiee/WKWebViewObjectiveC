//
//  KonyWebViewController.m
//  WKWebViewObjC
//
//  Created by Abbie on 07/07/20.
//  Copyright © 2020 Abbie. All rights reserved.
//

#import "KonyWebViewController.h"
#import <WebKit/WebKit.h>

@interface KonyWebViewController ()<WKNavigationDelegate,WKUIDelegate>{
WKWebView *_konyWebLoader;
}





@end

@implementation KonyWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"I am here";
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    UIImage *backBtnImage = [UIImage imageNamed:@"Arrow"]  ;
    [backBtn setBackgroundImage:backBtnImage forState:UIControlStateNormal];
    [backBtn addTarget:self action:@selector(goback) forControlEvents:UIControlEventTouchUpInside];
    backBtn.frame = CGRectMake(0, 0, 54, 30);
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithCustomView:backBtn] ;
    self.navigationItem.leftBarButtonItem = backButton;
    self.navigationController.navigationBar.barTintColor= [UIColor redColor];
    [self.navigationController.navigationBar setTitleTextAttributes:
    [NSDictionary dictionaryWithObjectsAndKeys:
     [UIColor whiteColor], NSForegroundColorAttributeName,
     [UIFont fontWithName:@"ArialMT" size:16.0], NSFontAttributeName,nil]];
    _konyWebLoader = [[WKWebView alloc] initWithFrame:CGRectMake(0, 55, self.view.frame.size.width, self.view.frame.size.height)];
    [_konyWebLoader setAutoresizingMask:UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth];
    
    NSURL *url = [NSURL URLWithString: self.productURL];
    NSURLRequest *urlReq = [NSURLRequest requestWithURL:url];
    NSLog(@"Product URL%@", _productURL);
    NSLog(@"TItle%@", _titleName);
    [_konyWebLoader loadRequest:urlReq];
    [self.view addSubview:_konyWebLoader];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
}

- (void)goback{
    NSLog(@"Executing backButtonClicked...");
   // [self dismissViewControllerAnimated:YES completion:nil];
}
    
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
