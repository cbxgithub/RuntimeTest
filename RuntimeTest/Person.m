//
//  Person.m
//  RuntimeTest
//
//  Created by 贺廷濬 on 2017/11/2.
//  Copyright © 2017年 cbx. All rights reserved.
//

#import "Person.h"
#import <objc/message.h>
#import "Dog.h"

@implementation Person

- (void)run {
    NSLog(@"跑了");
}

//如果增加了方法并返回YES，就会重新发送消息并处理，返回NO，则进入下一步
//+ (BOOL)resolveInstanceMethod:(SEL)sel{
//
//    if (sel == sel_registerName("wahaha")) {
//        class_addMethod(self, sel_registerName("wahaha"), imp_implementationWithBlock(^(){
//            NSLog(@"wahaha");
//        }), "v@:");
//    }
//    return YES;
//}

//返回一个对象继续处理消息
//- (id)forwardingTargetForSelector:(SEL)aSelector{
//    if (aSelector == sel_registerName("wahaha")) {
//        return [Dog new];
//    }
//    return nil;
//}

//返回方法签名
//- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector{
//    if (aSelector == sel_registerName("wahaha")) {
//        return [NSMethodSignature signatureWithObjCTypes:"v@:"];
//    }
//    return [super methodSignatureForSelector:aSelector];
//}

//转发消息
//- (void)forwardInvocation:(NSInvocation *)anInvocation {
//    SEL sel = anInvocation.selector;
//    Dog *dog = [Dog new];
//    if ([dog respondsToSelector:sel]) {
//        [anInvocation invokeWithTarget:dog];
//    }
//}

@end
