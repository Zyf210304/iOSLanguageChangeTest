//
//  ViewController.m
//  iOSLanguageChangeTest
//
//  Created by 张亚飞 on 2023/8/2.
//

#import "ViewController.h"
#import "TwoViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UILabel *loginLbl;

@property (nonatomic, strong) UIButton *chineseBtn;

@property (nonatomic, strong) UIButton *englishBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UILabel *loginLbl = [[UILabel alloc] initWithFrame:CGRectMake(50, 100, 100, 100)];
    self.loginLbl = loginLbl;
    [self.view addSubview:loginLbl];
    loginLbl.backgroundColor = UIColor.yellowColor;
    loginLbl.text = LocalizedString(@"登录");
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(nextPage)];
    loginLbl.userInteractionEnabled = true;
    [loginLbl addGestureRecognizer:tap];
    
    
    UIButton *chineseBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.chineseBtn = chineseBtn;
    chineseBtn.frame = CGRectMake(50, 300, 100, 100);
    chineseBtn.backgroundColor = UIColor.redColor;
    [self.view addSubview:chineseBtn];
    [chineseBtn setTitle:LocalizedString(@"中文") forState:UIControlStateNormal];
    [chineseBtn addTarget:self action:@selector(chinsessLangugeAction) forControlEvents:UIControlEventTouchDown];
    
    UIButton *englishBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.englishBtn = englishBtn;
    englishBtn.frame = CGRectMake(250, 300, 100, 100);
    [self.view addSubview:englishBtn];
    englishBtn.backgroundColor = UIColor.greenColor;
    [englishBtn setTitle:LocalizedString(@"英文") forState:UIControlStateNormal];
    [englishBtn addTarget:self action:@selector(englishLangugeAction) forControlEvents:UIControlEventTouchDown];
}

- (void)nextPage {
    NSLog(@"跳转");
    TwoViewController *vc = [[TwoViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)chinsessLangugeAction {
    NSLog(@"简体中文");
    [[NSUserDefaults standardUserDefaults] setObject:@"zh-Hans" forKey:@"appLanguage"];
    [self refreshUI];
}

- (void)englishLangugeAction {
    NSLog(@"英语");
    [[NSUserDefaults standardUserDefaults] setObject:@"en" forKey:@"appLanguage"];
    [self refreshUI];
}

- (void)refreshUI {
    self.loginLbl.text = LocalizedString(@"登录");
    [_chineseBtn setTitle:LocalizedString(@"中文") forState:UIControlStateNormal];
    [_englishBtn setTitle:LocalizedString(@"英文") forState:UIControlStateNormal];
    
}

@end
