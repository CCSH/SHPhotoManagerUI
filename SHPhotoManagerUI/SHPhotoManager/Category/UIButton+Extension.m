//
//  UIButton+ExtensionExt.m
//  SHUtility
//
//  Created by KevinSH on 15/10/17.
//  Copyright (c) 2015年 SHXiaoMing. All rights reserved.
//

#import "UIButton+Extension.h"
#import "SHPhotoHeader.h"

@implementation UIButton (Extension)

+ (UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title target:(id)target selector:(SEL)selector {
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.titleLabel.font = [UIFont systemFontOfSize:17.0];
    [button setFrame:frame];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:BTNCOLOR forState:UIControlStateNormal];
    [button addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    return button;
}

+ (UIButton *)buttonWithFrame:(CGRect)frame Target:(id)target Selector:(SEL)selector Image:(NSString *)image ImagePressed:(NSString *)imagePressed {
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:frame];
    [button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:imagePressed] forState:UIControlStateHighlighted];
    [button addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    return button;
}

+ (UIButton *)buttonWithFrame:(CGRect)frame Target:(id)target Selector:(SEL)selector Image:(NSString*)image ImageSelected:(NSString *)imageSelected {
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:frame];
    [button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:imageSelected] forState:UIControlStateSelected];
    [button addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    return button;
}

@end
