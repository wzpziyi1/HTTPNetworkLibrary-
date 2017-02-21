//
//  ViewController.m
//  HTTPNetworkLibrary
//
//  Created by 王志盼 on 2016/12/28.
//  Copyright © 2016年 王志盼. All rights reserved.
//

#import "ViewController.h"
#import "ZYNetworkManager.h"
#import "ZYFileDownLoad.h"

@interface ViewController ()
@property (nonatomic, strong) ZYFileDownLoad *downLoadTool;
@property (weak, nonatomic) IBOutlet UIProgressView *sliderView;

@end

@implementation ViewController

- (ZYFileDownLoad *)downLoadTool
{
    if (!_downLoadTool)
    {
        //http://apache.fayea.com/hadoop/common/hadoop-3.0.0-alpha2/hadoop-3.0.0-alpha2-src.tar.gz
        
        _downLoadTool = [[ZYFileDownLoad alloc] init];
        
        _downLoadTool.urlStr = @"http://images2015.cnblogs.com/blog/471463/201607/471463-20160715122131264-1060643549.gif";
        __weak typeof(self)weakSelf = self;
        _downLoadTool.progressHandler = ^(CGFloat progress){
            weakSelf.sliderView.progress = progress;
        };
    }
    return _downLoadTool;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.sliderView.progress = 0;
    
    NSString *caches = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject];
    NSLog(@"caches:%@",caches);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickRequestBtn:(id)sender
{
    [self testGet];

}

- (IBAction)clickDownloadBtn:(UIButton *)sender
{
    switch (sender.tag)
    {
        case 101:       //开始下载
            [self.downLoadTool start];
            break;
            
        case 102:       //暂停下载
            [self.downLoadTool pause];
            break;
            
        case 103:       //取消下载
            [self.downLoadTool cancle];
            self.downLoadTool = nil;
            break;
            
        default:
            break;
    }
}


- (void)testGet
{
    //    http://101.200.237.210/Test/get
    NSDictionary *params = @{
                             @"token": @"1",
                             @"userId": @"1"
                             };
    
    [ZYNetworkManager executeGet:@"http://101.200.237.210/Test/get" params:params callBack:^(NSData *data, NSURLResponse *response, NSError *error) {
        NSString *str = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        NSLog(@"%@", str);
    }];
}

- (void)testPost
{
    //    http://101.200.237.210/Test/post
    NSDictionary *params = @{
                             @"token": @"1",
                             @"userId": @"1",
                             @"name": @"翔6666"
                             };
    [ZYNetworkManager executePost:@"http://101.200.237.210/Test/post" params:params callBack:^(NSData *data, NSURLResponse *response, NSError *error) {
        NSString *str = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        NSLog(@"%@", str);
    }];
}

@end
