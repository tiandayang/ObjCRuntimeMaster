//
//  DYModel.m
//  ObjCRuntimeMaster
//
//  Created by 田向阳 on 2017/11/10.
//  Copyright © 2017年 田向阳. All rights reserved.
//

#import "DYModel.h"

@implementation DYModel

- (void)work
{
    NSLog(@"work");
}

- (void)eat
{
    NSLog(@"eat");
}

//方法交换
+ (void)initialize
{
    SEL originSel = NSSelectorFromString(@"work");
    SEL newSel = NSSelectorFromString(@"newWork");
    Method originMethod = class_getInstanceMethod([self class], originSel);
    Method newMethod = class_getInstanceMethod([self class], newSel);
    method_exchangeImplementations(originMethod, newMethod);
}

- (void)newWork
{
    NSLog(@"newWork");
}

@end
