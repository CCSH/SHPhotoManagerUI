//
//  UIImage+Extension.h
//  SHPhotoPickerDemo
//
//  Created by 万众科技 on 16/5/3.
//  Copyright © 2016年 KevinSH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Extension)

//对图片尺寸进行压缩
+ (UIImage*)imageWithImage:(UIImage*)image scaledToSize:(CGSize)newSize;

@end
