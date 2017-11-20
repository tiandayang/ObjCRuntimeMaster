//
//  DYModel+Add.m
//  ObjCRuntimeMaster
//
//  Created by 田向阳 on 2017/11/10.
//  Copyright © 2017年 田向阳. All rights reserved.
//

#import "DYModel+Add.h"

@implementation DYModel (Add)

- (void)setSex:(NSString *)sex
{
    objc_setAssociatedObject(self, @selector(sex), sex, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSString *)sex
{
   return objc_getAssociatedObject(self, _cmd);
}

- (void)sleep
{
    NSLog(@"sleep");
}

@end
