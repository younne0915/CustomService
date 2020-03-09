//
//  ViewController.m
//  test_lib
//
//  Created by happyelements on 30/11/16.
//  Copyright © 2016年 happyelements. All rights reserved.
//

#import "ViewController.h"
#import "FAQViewDelegate.h"
#import "FAQManager.h"
#import "Sdk_config.h"
#import "FCSDK.h"
#import "FCUserInfo.h"


#if defined(__cplusplus)
extern "C" {
#endif
    extern void       UnitySendMessage(const char* obj, const char* method, const char* msg);
#if defined(__cplusplus)
}
#endif


#if defined(__cplusplus)
extern "C" {
#endif
    void OpenCS()
    {
        [[ViewController Instance] openFaq];
        UnitySendMessage("Main Camera", "OpenCSCallback", "succeed");
    }
#if defined(__cplusplus)
}
#endif

@interface ViewController ()
//@property(strong,nonatomic) UIButton *butten;
@end

@implementation ViewController

//使用同步创建 保证多线程下也只有一个实例
+ (ViewController *)Instance
{
    @synchronized(self)
    {
        if (instance == nil)
        {
            instance = [[ViewController alloc] init];
        }
    }
    return instance;
}
// - (void)viewDidLoad {
//     [super viewDidLoad];
//     // Do any additional setup after loading the view, typically from a nib.
//     [super viewDidAppear:true];
//     self.butten = [[UIButton alloc] initWithFrame:CGRectMake(0, 100, [[UIScreen mainScreen] bounds].size.width, 20)];
//     [self.butten setTitle:@"open_FAQ" forState:UIControlStateNormal];
//     [self.butten setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//     [self.view addSubview:self.butten];
//     [self.butten addTarget:self action:@selector(startFaq:) forControlEvents:UIControlEventTouchUpInside];
// }

// -(void)startFaq:(id)sender{
//     [self openFaq];
// }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)openFaq{
    FCSDK *fc = [FCSDK getInstance];
    Sdk_config *sdk_config = ([[Sdk_config alloc]init]);
    sdk_config.top_bar_bg_resource = @"taitoubaise";
    sdk_config.close_btn_resource = @"guanbi";
    sdk_config.back_btn_resource = @"fanhui";
    sdk_config.is_post = false;
    sdk_config.use_https = false;
    sdk_config.open_http_in_safari = false;
    
    FCUserInfo* info = [FCUserInfo getInstance];
    info.vip = 0;
    info.uuid = @"1125325222";
    info.ct = [[NSDate date] timeIntervalSince1970];
    info.pf = @"mz";
    info.roleavatar = @"https://q.qlogo.cn/qqapp/100718846/AFBC8DA831AA3D967551E393C5E67D0C/40";
    info.ts = [[NSDate date] timeIntervalSince1970];
    info.roleid = @"11111111111";
    info.src = @"client";
    //info.lang = [[[NSUserDefaults standardUserDefaults] objectForKey:@"AppleLanguages"] objectAtIndex:0];
    info.lang = @"zh-hans";
    info.udid = @"getUUI--DUUID";;
    info.level = 166;
    info.secret = @"9a6879ac-fde9-4b96-85e5-a0688285cde0";
    info.lt = @"qq";
    info.uver = @"8b60c9b73ea015061e5465e02fc1bc56";
    info.mac = @"020000000000";
    info.silver = 13456;
    info.app = @"8101";
    info.osver = [[UIDevice currentDevice] systemVersion];
    info.os = @"ios";
    info.ext = @"";
    info.network = @"wifi";
    info.pt = @"appstore";
    info.name = @"海滨假日玩家";
    //info.uid = rand()%100 + 50;
    info.uid = 10356;
    info.ver = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    info.gold = 5521;
    info.model = @"魅族Pro6";
    NSDictionary *dir1 = @{
                           @"title_img":@"taitoushequ",
                           @"button_img":@"shequjianti",
                           @"button_img_selected":@"shequjiantixuanzhong",
                           @"tag":@1,
                           @"url":@"http://fansclub.happyelements.com/fans/ff.php",
                           //@"openUrl":@"http://ff.happyelements.com/test/index.php/bind/wx/1001/osxUQuEHyDzKxZlEkMRWDH261NxY?from=2",
                           @"default":@1,
                           };
    
    NSDictionary *dir2 = @{
                           @"title_img":@"taitoukefu",
                           @"button_img":@"kefujianti",
                           @"button_img_selected":@"kefujiantixuanzhong",
                           @"tag":@2,
                           @"url":@"http://fansclub.happyelements.com/fans/ff.php?route=stages"
                           } ;
    
    NSDictionary *dir3 = @{
                           @"title_img":@"taitoukefu",
                           @"button_img":@"kefujianti",
                           @"button_img_selected":@"kefujiantixuanzhong",
                           @"tag":@3,
                           @"url":@"http://fansclub.happyelements.com/fans/faq.php"
                           } ;
    
    NSDictionary *locales = @{
                              @"poor_network_tips":@"weak netwoek",
                              @"sure_tips":@"okok",
                              @"load_failed_tips":@"boomboom",
                              } ;
    
    NSArray *tabConfig = ([NSArray arrayWithObjects:dir1,dir2, dir3, nil]);
    [fc openFAQBySubViewLocales:[info buildUserInfo] tabConfig:tabConfig sdkConfig:sdk_config delegate:self locales:locales];
    //[fc openFAQ:info tabConfig:tabConfig sdkConfig:sdk_config delegate:self lastViewController:self];
    //    [fc openFAQBySubView:info tabConfig:tabConfig sdkConfig:sdk_config delegate:self];
    //    [fc openFAQBySubViewsss:[info buildUserInfo] tabConfig:tabConfig sdkConfig:sdk_config delegate:self];
    SAFE_ARC_RELEASE(sdk_config);
    [FCUserInfo releaseInstance];
}

#pragma mark - implements of FAQViewDelegate

-(void)onViewDidAppear{
    NSLog(@"FAQViewDelegate onVewDidAppear");
}

-(void)onViewDidDisappear{
    NSLog(@"FAQViewDelegate onViewDiaDisappear");
}

-(void)onOpenTab:(int)tabTag{
    NSLog(@"FAQViewDelegate onOpenTab,Tab is:%d",tabTag);
}

-(BOOL)onOpenFcBridge:(NSString *)params {
    NSLog(@"FAQViewDelegate onOpenFcBridge,params:%@",params);
    return true;
}
@end
