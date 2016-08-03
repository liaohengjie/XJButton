//
//  ViewController.m
//  XJButton
//
//  Created by gn_macMini_liao on 16/7/29.
//  Copyright © 2016年 gn_macMini_liao. All rights reserved.
//

#import "ViewController.h"
#import "XJButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    XJButton *btn = [[XJButton  alloc] initWithFrame:CGRectMake(100, 100, 60, 40)
                                     btnImgDirection:imgDirectionTop
                                      buttonImageW_H:15
                                               title:@"图片在上"
                                            fontSize:12
                                          titleColor:[UIColor redColor]
                                           imageName:@"example_car_id"
                                              target:self
                                              action:@selector(tap)
                                                 tag:0];
    btn.backgroundColor = [UIColor grayColor];
    [self.view addSubview:btn];
    
    XJButton *btn1 = [[XJButton  alloc] initWithFrame:CGRectMake(100, 300, 160, 40)
                                     btnImgDirection:imgDirectionLeft
                                      buttonImageW_H:15
                                                title:@"图片在左"
                                            fontSize:12
                                          titleColor:[UIColor redColor]
                                           imageName:@"example_car_id"
                                              target:self
                                              action:@selector(tap)
                                                 tag:0];
    btn1.backgroundColor = [UIColor grayColor];
    [self.view addSubview:btn1];
    
}

-(void)tap{

    NSLog(@"谁离开的解放路口");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
