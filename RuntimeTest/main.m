 //
//  main.m
//  RuntimeTest
//
//  Created by 贺廷濬 on 2017/11/2.
//  Copyright © 2017年 cbx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/message.h>
#import "Person.h"
#import "Person+Play.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        id p = objc_msgSend(objc_msgSend(objc_getClass("Person"), sel_registerName("alloc")),sel_registerName("init"));
//        objc_msgSend(p, sel_registerName("wahaha"));
        
        Person *newPerson = [Person new];
        newPerson.gameName = @"王者荣耀";
        NSLog(@"%@",newPerson.gameName);
        
    }
    return 0;
}
