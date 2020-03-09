//
//  FAQManager.h
//  Demo
//
//  Created by dan.liang on 2016/9/30.
//  Copyright © 2016年 dan.liang. All rights reserved.
//

#ifndef FAQManager_h
#define FAQManager_h

#import "FAQViewDelegate.h"
#import "FAQViewController.h"
#import "Sdk_config.h"

@interface FAQManager : NSObject

+ (FAQManager *)getInstance;
+(void)releaseInstance;

- (FAQViewController *)setupWithConfig:(NSArray *)faqConfig
                    sdk_config:(Sdk_config*)sdk_config
                    userParam:(NSMutableDictionary*)userInfo
                    delegate:(id<FAQViewDelegate>)delegate;

- (FAQViewController *)setupWithAllConfig:(NSArray *)faqConfig
                               sdk_config:(Sdk_config *)sdk_config
                                userParam:(NSMutableDictionary*)userInfo
                                 delegate:(id<FAQViewDelegate>)delegate
                                  locales:(NSDictionary *)locales;

@end

#endif /* FAQManager_h */
