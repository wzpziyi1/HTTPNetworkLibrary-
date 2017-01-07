//
//  ZYFileEntity.h
//  HTTPNetworkLibrary
//
//  Created by 王志盼 on 2017/1/6.
//  Copyright © 2017年 王志盼. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZYFileEntity : NSObject
@property (nonatomic, strong) NSURL *url;
@property (nonatomic, copy) NSString *name;

- (instancetype)initWithUrl:(NSURL *)url name:(NSString *)name;
@end
