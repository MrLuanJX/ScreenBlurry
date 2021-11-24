//
//  LXXScreenBlurry.h
//  LXXScreenBlurry
//
//  Created by 栾金鑫 on 2019/12/9.
//  Copyright © 2019 LearnBorrow. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LXXScreenBlurry : NSObject

+ (void)addBlurryScreenImage;       //从后台进入前台添加模糊效果

+ (void)removeBlurryScreenImage;    //进入前台后去除模糊效果

@end

