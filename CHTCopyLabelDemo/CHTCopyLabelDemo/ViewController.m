//
//  ViewController.m
//  CHTCopyLabelDemo
//
//  Created by cht on 2017/2/20.
//  Copyright © 2017年 cht. All rights reserved.
//

#import "ViewController.h"
#import "CHTCopyLabel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CHTCopyLabel *copyLabel = [[CHTCopyLabel alloc]initWithFrame:CGRectMake(0, 0, 150, 40)];
    copyLabel.text = @"LabelFromCode";
    [self.view addSubview:copyLabel];
    
    copyLabel.center = self.view.center;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
