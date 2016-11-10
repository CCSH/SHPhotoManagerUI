//
//  UIView+ExtensionExt.m
//  SHUtility
//
//  Created by KevinSH on 15/10/17.
//  Copyright (c) 2015年 SHXiaoMing. All rights reserved.
//

#import "UIView+Extension.h"

@implementation UIView (Extension)

//h
- (void)setH:(float)h {
    CGRect frm = self.frame;
    frm.size.height = h;
    self.frame = frm;
}

- (float)h {
    return self.frame.size.height;
}

//w
- (void)setW:(float)w {
    CGRect frm = self.frame;
    frm.size.width = w;
    self.frame = frm;
}

- (float)w {
    return self.frame.size.width;
}


//x
- (void)setX:(float)x {
    CGRect frm = self.frame;
    frm.origin.x = x;
    self.frame = frm;
}

- (float)x {
    return self.frame.origin.x;
}

//y
- (void)setY:(float)y {
    CGRect frm = self.frame;
    frm.origin.y = y;
    self.frame = frm;
}


- (float)y {
    return self.frame.origin.y;
}

- (UIImageView *)findHairlineImageViewUnder {
    
    if ([self isKindOfClass:UIImageView.class] && self.bounds.size.height <= 1.0) {
        return (UIImageView *)self;
    }
    
    for (UIView * subview in self.subviews) {
        UIImageView * imageView = [subview findHairlineImageViewUnder];
        if (imageView) {
            return imageView;
        }
    }
    return nil;
}

@end
