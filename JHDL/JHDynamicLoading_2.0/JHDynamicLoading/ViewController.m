//
//  ViewController.m
//  JHDynamicLoading
//
//  Created by HaoCold on 2023/12/22.
//

#import "ViewController.h"
#import "JHDLTool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"JHDL";
    self.navigationController.navigationBar.translucent = NO;
    
    [self jhSetupButton];
}

- (void)jhSetupButton
{
    CGFloat width = 180;
    UIButton *button = [UIButton buttonWithType:1];
    button.frame = CGRectMake((self.view.frame.size.width-width)*0.5, 100, width, 61);
    button.backgroundColor = [UIColor lightGrayColor];
    button.titleLabel.font = [UIFont systemFontOfSize:16];
    button.layer.cornerRadius = 10;
    [button setTitle:@"JHDynamicLoading" forState:0];
    [button setTitleColor:[UIColor blackColor] forState:0];
    [button addTarget:self action:@selector(xx_click_button) forControlEvents:1<<6];
    [self.view addSubview:button];
    
    [JHDLTool share].ctrl = self;
}

- (void)xx_click_button
{
    [[JHDLTool share] buttonAction];
}

@end

