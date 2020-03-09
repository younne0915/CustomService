//
// FCUserInfo.h
// HappyFish

// Created by Shizhang Liu on 2016-12-01.
// Copyright (c) 2016年HappyElements. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FCUserInfo : NSObject{
}

@property(nonatomic,readwrite)int vip;
@property(nonatomic,copy)NSString *uuid;
@property(nonatomic,readwrite)int64_t ct;
@property(nonatomic,copy)NSString *pf;
@property(nonatomic,copy)NSString *roleavatar;
@property(nonatomic,readwrite)int64_t ts;
@property(nonatomic,copy)NSString *roleid;
@property(nonatomic,copy)NSString *src;
@property(nonatomic,copy)NSString *lang;
@property(nonatomic,copy)NSString *udid;
@property(nonatomic,readwrite)int level;
@property(nonatomic,copy)NSString *secret;
@property(nonatomic,copy)NSString *lt;
@property(nonatomic,copy)NSString *uver;
@property(nonatomic,copy)NSString *mac;
@property(nonatomic,readwrite)int64_t silver;
@property(nonatomic,copy)NSString *app;
@property(nonatomic,copy)NSString *osver;
@property(nonatomic,copy)NSString *os;
@property(nonatomic,copy)NSString *ext;
@property(nonatomic,copy)NSString *network;
@property(nonatomic,copy)NSString *pt;
@property(nonatomic,copy)NSString *name;
@property(nonatomic,readwrite)int64_t uid;
@property(nonatomic,copy)NSString *ver;
@property(nonatomic,readwrite)int64_t gold;
@property(nonatomic,copy)NSString *model;

+(instancetype)getInstance;
+(void)releaseInstance;
-(NSMutableDictionary*)buildUserInfo;
@end
