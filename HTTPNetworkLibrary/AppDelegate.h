//
//  AppDelegate.h
//  HTTPNetworkLibrary
//
//  Created by 王志盼 on 2016/12/28.
//  Copyright © 2016年 王志盼. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

