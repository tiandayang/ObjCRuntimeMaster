//
//  DYModel.h
//  ObjCRuntimeMaster
//
//  Created by 田向阳 on 2017/11/10.
//  Copyright © 2017年 田向阳. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DYModel : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) int age;
@property (nonatomic, assign) float weight;
@property (nonatomic, assign) double height;
@property (nonatomic, assign) BOOL isAlive;

@property (nonatomic, copy) NSString *home;
@property (nonatomic, copy) NSString *province;


- (void)work;
- (void)eat;

@end
