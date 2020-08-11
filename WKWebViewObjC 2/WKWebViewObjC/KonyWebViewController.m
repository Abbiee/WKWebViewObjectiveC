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
    
    
    UINavigationBar *myNav = [[UINavigationBar alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 50)];
     [myNav setAutoresizingMask: UIViewAutoresizingFlexibleWidth];
     [UINavigationBar appearance].barTintColor = [UIColor whiteColor];
     //[UINavigationBar appearance].barTintColor = UIColor(displayP3Red: 0.10, green: 0.53, blue: 0.84, alpha: 1.0);
     [self.view addSubview:myNav];


     UIBarButtonItem *cancelItem = [[UIBarButtonItem alloc] initWithTitle:@"< Back"
                                                                    style:UIBarButtonItemStylePlain
                                                                   target:self
                                                                   action:@selector(back:)];

     //UIBarButtonItem *doneItem = [[UIBarButtonItem alloc] initWithTitle:@"Done"
     //                                                             style:UIBarButtonItemStyleBordered
     //                                                            target:self action:nil];


     UINavigationItem *navigItem = [[UINavigationItem alloc] initWithTitle:_titleName];
     //navigItem.rightBarButtonItem = doneItem;
     navigItem.leftBarButtonItem = cancelItem;
     myNav.items = [NSArray arrayWithObjects: navigItem,nil];

     [UIBarButtonItem appearance].tintColor = [UIColor colorWithRed: 0.10 green: 0.53 blue: 0.84 alpha: 1.00];
    // Do any additional setup after loading the view.
    //_konyWebLoader = [[WKWebView alloc] initWithFrame:[[self view] bounds]];
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

- (void)back:(UIBarButtonItem *)sender {
    NSLog(@"Executing backButtonClicked...");
    [self dismissViewControllerAnimated:YES completion:nil];
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
