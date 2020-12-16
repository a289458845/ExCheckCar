//
//  EXViewController.m
//  ExCheckCar
//
//  Created by Peng on 12/15/2020.
//  Copyright (c) 2020 Peng. All rights reserved.
//

#import "EXViewController.h"
#import "EXTestObj.h"

#import <ExCheckCar/ExObj.h>

@interface EXViewController ()

@end

@implementation EXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    EXTestObj * obj = [EXTestObj new];
    
}
- (IBAction)action:(UIButton *)sender {
    [EXTestObj print:@"aaa"];
    [ExObj print:@"bbbb"];
    NSString * url = @"http://sapi.jdy520.com/api/2.0/catalog/xueban/book/mulus/791";
    [ExObj getWithUrl:url para:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
