//
//  UIView+ExtensionExt.h
//  SHUtility
//
//  Created by KevinSH on 15/10/17.
//  Copyright (c) 2015年 SHXiaoMing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Extension)

/*
 设置或返回View的 x y h w
 */
@property (nonatomic, assign) float h;
@property (nonatomic, assign) float w;
@property (nonatomic, assign) float x;
@property (nonatomic, assign) float y;

/*
 * 寻找1像素的线(可以用来隐藏导航栏下面的黑线）
 */
- (UIImageView *)findHairlineImageViewUnder;

@end
