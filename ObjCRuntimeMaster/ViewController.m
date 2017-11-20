//
//  ViewController.m
//  ObjCRuntimeMaster
//
//  Created by 田向阳 on 2017/11/10.
//  Copyright © 2017年 田向阳. All rights reserved.
//

#import "ViewController.h"
#import "DYModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    DYModel *model = [DYModel new];
    NSLog(@"propertys:%@",model.allPropertyName);
    NSLog(@"methods:%@",model.allMethod);
    
    [model work];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
