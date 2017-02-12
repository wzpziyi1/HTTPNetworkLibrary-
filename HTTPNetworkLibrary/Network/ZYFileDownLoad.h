//
//  ZYFileDownLoad.h
//  HTTPNetworkLibrary
//
//  Created by 王志盼 on 2017/2/12.
//  Copyright © 2017年 王志盼. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZYFileDownLoad : NSObject

/*是否正在下载*/
@property (nonatomic, readonly, getter=isDownLoading) BOOL downLoading;

/*文件存储路径*/
@property (nonatomic, copy, readonly) NSString *storePath;
/*文件总大小*/
@property (nonatomic, assign, readonly) long long totalSize;

/*文件当前下载大小*/
@property (nonatomic, assign, readonly) long long currentSize;

/*文件的下载url*/
@property (nonatomic, copy) NSString *urlStr;

/*下载进度的回调*/
@property (nonatomic, copy) void (^progressHandler)(double progress);

/*开始下载*/
- (void)start;

/*暂停下载*/
- (void)pause;

/*取消下载，并删除相应文件*/
- (void)cancle;
@end
