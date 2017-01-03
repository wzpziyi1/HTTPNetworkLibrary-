//
//  ZYNetwork.h
//  HTTPNetworkLibrary
//
//  Created by 王志盼 on 2016/12/29.
//  Copyright © 2016年 王志盼. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZYNetwork : NSObject
+ (void)requestWithUrlStr:(NSString *)urlStr method:(NSString *)method params:(NSDictionary *)params callBlock:(void(^)(NSData *data, NSURLResponse *response, NSError *error))callBlock;
@end
