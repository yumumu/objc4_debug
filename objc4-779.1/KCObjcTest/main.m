//
//  main.m
//  KCObjcTest
//
//  Created by Cooci on 2020/3/5.
//

#import <Foundation/Foundation.h>
#import <malloc/malloc.h>
#import <objc/runtime.h>

#import "Student.h"

// 一个 NSOjbect 对象占用多少内存

void objectInfo() {
    NSObject *obj = [NSObject new];
    size_t size1 = class_getInstanceSize([NSObject class]);
    size_t size2 = malloc_size((__bridge const void*)obj);
    NSLog(@"NSObject class_getInstanceSize: %zu", size1);
    NSLog(@"NSObject malloc_size: %zu", size2);
    
    Student *student = [Student new];
    size_t size3 = class_getInstanceSize([Student class]);
    size_t size4 = malloc_size((__bridge const void*)student);
    NSLog(@"Student class_getInstanceSize: %zu", size3);
    NSLog(@"Student malloc_size: %zu", size4);
    
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        NSObject *objc = [NSObject alloc];
        objectInfo();
    }
    return 0;
}
