//
//  ZYNetworkManager.h
//  HTTPNetworkLibrary
//
//  Created by 王志盼 on 2017/1/3.
//  Copyright © 2017年 王志盼. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ZYFileEntity;

typedef NS_ENUM(NSInteger, ZYNetworkManagerMethodType)
{
    ZYNetworkManagerMethodTypeGet,
    ZYNetworkManagerMethodTypePost,
    ZYNetworkManagerMethodTypeHead
};

@interface ZYNetworkManager : NSObject
- (instancetype)initWithUrlStr:(NSString *)urlStr type:(ZYNetworkManagerMethodType)type params:(NSDictionary *)params callBack:(void(^)(NSData *data, NSURLResponse *response, NSError *error))callBack;


+ (void)executeGet:(NSString *)urlStr params:(NSDictionary *)params callBack:(void(^)(NSData *data, NSURLResponse *response, NSError *error))callBack;

+ (void)executePost:(NSString *)urlStr params:(NSDictionary *)params callBack:(void(^)(NSData *data, NSURLResponse *response, NSError *error))callBack;

//上传文件
+ (void)uploadFile:(NSString *)urlStr params:(NSDictionary *)params files:(NSArray<ZYFileEntity *>*)files callBack:(void(^)(NSData *data, NSURLResponse *response, NSError *error))callBack;
@end
