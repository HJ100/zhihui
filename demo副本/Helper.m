//
//  Helper.m
//  demo
//
//  Created by huang on 15/12/24.
//  Copyright © 2015年 huang. All rights reserved.
//

#import "Helper.h"
#import <ImageIO/ImageIO.h>
#import <Accelerate/Accelerate.h>
//#import <bpg/libpg.h>

@implementation Helper

+(void)addTapControlToAnimatedImageView:(YYAnimatedImageView *)view
{
    if (!view) return;
    view.userInteractionEnabled = YES;
    __weak typeof(view) _view = view;
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithActionBlock:^(id sender) {
        if ([_view isAnimating]) [_view stopAnimating];
        else [_view startAnimating];
        UIViewAnimationOptions op = UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionAllowAnimatedContent | UIViewAnimationOptionBeginFromCurrentState;
        [UIView animateWithDuration:0.1 delay:0 options:op animations:^{
            _view.layer.transformScale = 1;
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:0.1 delay:0 options:op animations:^{
                _view.layer.transformScale = 1;
            } completion:NULL];
        }];
            }];
    [view addGestureRecognizer:tap];
}

@end
