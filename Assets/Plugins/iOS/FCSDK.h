//
// FCSDK.h
// HappyFish

// Created by Shizhang Liu on 2016-12-01.
// Copyright (c) 2016年HappyElements. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UIViewController;
@class FCUserInfo;
@class Sdk_config;
@protocol FAQViewDelegate;
@interface FCSDK : NSObject{

}
+(instancetype)getInstance;
+(void)releaseInstance;
-(void)openFAQ:(FCUserInfo*)fcUserInfo
     tabConfig:(NSArray*)tabConfig
     sdkConfig:(Sdk_config*)sdkConfig
      delegate:(id<FAQViewDelegate>)deleagte
    lastViewController:(UIViewController*)viewController;
-(void)openFAQBySubView:(NSDictionary*)userInfo
    tabConfig:(NSArray*)tabConfig
    sdkConfig:(Sdk_config*)sdkConfig
     delegate:(id<FAQViewDelegate>)delegate;

-(void)openFAQBySubViewLocales:(NSDictionary*)userInfo
                     tabConfig:(NSArray*)tabConfig
                     sdkConfig:(Sdk_config*)sdkConfig
                      delegate:(id<FAQViewDelegate>)delegate
                       locales:(NSDictionary *)locales;
@end
