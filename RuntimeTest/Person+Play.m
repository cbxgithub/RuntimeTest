//
//  Person+Play.m
//  RuntimeTest
//
//  Created by 贺廷濬 on 2017/11/2.
//  Copyright © 2017年 cbx. All rights reserved.
//

#import "Person+Play.h"
#import <objc/runtime.h>

@implementation Person (Play)

- (NSString *)gameName{
    return objc_getAssociatedObject(self, _cmd);
}

- (void)setGameName:(NSString *)gameName {
    objc_setAssociatedObject(self, @selector(gameName), gameName, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

@end
