//
//  ViewController.m
//  ScreenBlurry
//
//  Created by hogo0211 on 2021/11/24.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 30)];
    btn.backgroundColor = [UIColor blackColor];
    [btn setTitle:@"alert" forState:UIControlStateNormal];
    [self.view addSubview:btn];
}


@end
