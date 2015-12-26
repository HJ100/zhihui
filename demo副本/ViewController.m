//
//  ViewController.m
//  demo
//
//  Created by huang on 15/12/22.
//  Copyright © 2015年 huang. All rights reserved.
//

#import "ViewController.h"
#import "YYImage.h"
#import "YYKit.h"
#import "Helper.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [self getGif];
    

    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)getGif
{
    YYImage *image1 = [YYImage imageNamed:@"1@2x.gif"];
    YYAnimatedImageView *imageView = [[YYAnimatedImageView alloc] initWithImage:image1];
    imageView.centerX = self.view.width / 2;
    imageView.frame = CGRectMake(100, 100, 200, 200);
    //imageView.size =CGSizeZero;
    //imageView.top = 50;
    
    [self.view addSubview:imageView];
    [Helper addTapControlToAnimatedImageView:imageView];
}

@end
