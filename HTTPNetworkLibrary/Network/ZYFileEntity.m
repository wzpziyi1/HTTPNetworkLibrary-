//
//  ZYFileEntity.m
//  HTTPNetworkLibrary
//
//  Created by 王志盼 on 2017/1/6.
//  Copyright © 2017年 王志盼. All rights reserved.
//

#import "ZYFileEntity.h"

@implementation ZYFileEntity

- (instancetype)initWithUrl:(NSURL *)url name:(NSString *)name
{
    if (self  = [super init])
    {
        self.url = url;
        self.name = [name copy];
    }
    return self;
}

@end
