//
//  ViewController.m
//  WKWebViewObjC
//
//  Created by Abbie on 07/07/20.
//  Copyright © 2020 Abbie. All rights reserved.
//

#import "ViewController.h"
#import "GenericClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)clickAction:(id)sender {
    [GenericClass launchNativeControllerOnKonyForm:@"https://retail.onlinesbi.com/preretail/lockunlockuseraccess.htm" titleName:@"Title"];
}


@end
