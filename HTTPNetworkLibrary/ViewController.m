//
//  ViewController.m
//  HTTPNetworkLibrary
//
//  Created by 王志盼 on 2016/12/28.
//  Copyright © 2016年 王志盼. All rights reserved.
//

#import "ViewController.h"
#import "ZYNetwork.h"

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
    NSDictionary *params = @{
                             @"age": @(100),
                             @"name": @"wang",
                             @"sex": @"woman"
                             };
    [ZYNetwork requestWithUrlStr:@"http://rap.taobao.org/mockjsdata/12383/network/test" method:@"GET" params:params callBlock:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        NSString *str = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        NSLog(@"%@", str);
    }];
}

@end
