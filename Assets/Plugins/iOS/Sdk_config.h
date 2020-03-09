//
//  Sdk_config.h
//  tab_bar_test
//
//  Created by happyelements on 29/11/16.
//  Copyright © 2016年 happyelements. All rights reserved.
//

#ifndef Sdk_config_h
#define Sdk_config_h

#import "Compatibility.h"

@interface Sdk_config : NSObject

@property(nonatomic,readwrite) BOOL is_post;
@property(nonatomic,readwrite) BOOL tab_bar_show;
@property(nonatomic,readwrite) BOOL top_bar_show;
@property(nonatomic,readwrite) BOOL top_textimg_show; // top text img
@property(nonatomic,readwrite) BOOL use_https;
@property(nonatomic,readwrite) BOOL lastview_is_portrait;
@property(nonatomic,readwrite) BOOL open_http_in_safari;

@property(nonatomic,SAFE_ARC_PROP_RETAIN) NSString *back_btn_resource;
@property(nonatomic,SAFE_ARC_PROP_RETAIN) NSString *close_btn_resource;
@property(nonatomic,SAFE_ARC_PROP_RETAIN) NSString *top_bar_bg_resource; // top bar background img
@property(nonatomic,SAFE_ARC_PROP_RETAIN) NSString *tab_bar_bg_resource; // tab bar background img
@property(nonatomic,SAFE_ARC_PROP_RETAIN) NSString *divide_line_resource; // divide_line_resource img
@property(nonatomic,SAFE_ARC_PROP_RETAIN) NSString *translucent_bg_resource; // translucent img
@property(nonatomic,SAFE_ARC_PROP_RETAIN) NSString *sdk_lang; // sdk language

-(BOOL)isBackBtnShow;
-(BOOL)isCloseBtnShow;
-(BOOL)isDivadeLineShow;

@end

#endif /* Sdk_config_h */
