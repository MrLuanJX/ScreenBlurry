//
//  LXXScreenBlurry.m
//  LXXScreenBlurry
//
//  Created by 栾金鑫 on 2019/12/9.
//  Copyright © 2019 LearnBorrow. All rights reserved.
//

#import "LXXScreenBlurry.h"
#import "UIImage+LBGlassEffect.h"

#define ScreenImgViewTag 1000001
// window窗口
#if __IPHONE_13_0
#define LBkWindow [UIApplication sharedApplication].keyWindow
#else
#define LBkWindow [UIApplication sharedApplication].windows[0]
#endif

@implementation LXXScreenBlurry

//从后台进入前台添加模糊效果
+ (void)addBlurryScreenImage {
    
    UIImageView *imgView    = [[UIImageView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    imgView.tag             = ScreenImgViewTag;
    imgView.image           = [[self screenShot] imgWithBlur]; //添加毛玻璃
    [LBkWindow addSubview:imgView];
}

//进入前台后去除模糊效果
+ (void)removeBlurryScreenImage {
    
    for (id object in LBkWindow.subviews) {
        if ([[object class] isSubclassOfClass:[UIImageView class]]) {
            UIImageView *screenImgView = (UIImageView *)object;
            if (screenImgView.tag == ScreenImgViewTag) {
                [UIView animateWithDuration:0.2 animations:^{
                    screenImgView.alpha = 0;
                } completion:^(BOOL finished) {
                    [screenImgView removeFromSuperview];
                }];
            }
        }
    }
}

#pragma mark ----------- 当前屏幕截屏 -----------
+ (UIImage *)screenShot {
    
    CGSize screenSize = [UIScreen mainScreen].bounds.size;
    UIGraphicsBeginImageContextWithOptions(screenSize, NO, 0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    for (UIWindow *window in [UIApplication sharedApplication].windows) {
        if ([window respondsToSelector:@selector(screen)] || [window screen] == [UIScreen mainScreen]) {
            CGContextSaveGState(context);
            CGContextTranslateCTM(context, window.center.x, window.center.y);
            CGContextConcatCTM(context, [window transform]);
            CGContextTranslateCTM(context, -[window bounds].size.width * [[window layer] anchorPoint].x, -[window bounds].size.height * [[window layer] anchorPoint].y);
            [[window layer] renderInContext:context];
            CGContextRestoreGState(context);
        }
    }
    
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return img;
}

@end
