//
//  TwoViewController.m
//  iOSLanguageChangeTest
//
//  Created by 张亚飞 on 2023/8/2.
//

#import "TwoViewController.h"

@interface TwoViewController ()

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = UIColor.whiteColor;
    
    UILabel *loginLbl = [[UILabel alloc] initWithFrame:CGRectMake(50, 100, 100, 100)];
    [self.view addSubview:loginLbl];
    loginLbl.backgroundColor = UIColor.yellowColor;
    loginLbl.text = LocalizedString(@"测试");
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
