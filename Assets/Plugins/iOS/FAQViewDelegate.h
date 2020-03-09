//
//  FAQViewDelegate.h
//  Demo
//
//  Created by dan.liang on 2016/9/27.
//  Copyright © 2016年 dan.liang. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol FAQViewDelegate <NSObject>

@optional
- (void)onViewDidAppear;
- (void)onViewDidDisappear;
- (void)onOpenTab:(int)tabTag;
- (BOOL)onOpenFcBridge:(NSString *)params;

@end
