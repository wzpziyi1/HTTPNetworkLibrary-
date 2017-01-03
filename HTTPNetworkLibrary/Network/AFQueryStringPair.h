//
//  AFQueryStringPair.h
//  HTTPNetworkLibrary
//
//  Created by 王志盼 on 2016/12/29.
//  Copyright © 2016年 王志盼. All rights reserved.
//  AFN中处理参数拼接的类，直接拷贝过来的

#import <Foundation/Foundation.h>

@interface AFQueryStringPair : NSObject
@property (readwrite, nonatomic, strong) id field;
@property (readwrite, nonatomic, strong) id value;

- (instancetype)initWithField:(id)field value:(id)value;

- (NSString *)URLEncodedStringValue;
@end

