//
//  ViewController.m
//  HTTPNetworkLibrary
//
//  Created by 王志盼 on 2016/12/28.
//  Copyright © 2016年 王志盼. All rights reserved.
//

#import "ViewController.h"
#import "ZYNetworkManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickRequestBtn:(id)sender
{
    [self testGet];

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
