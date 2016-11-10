//
//  ViewController.m
//  SHPhotoManagerUI
//
//  Created by CSH on 2016/11/10.
//  Copyright © 2016年 CSH. All rights reserved.
//

#import "ViewController.h"
#import "SHPhotoPicker.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnClick:(id)sender {
    __weak typeof(self) weakSelf = self;
    SHPhotoPicker * picker = [[SHPhotoPicker alloc]init];
    //    picker.selectedCount = 12;
    //    picker.preViewCount = 2;
    [picker showInSender:self handle:^(NSArray<UIImage *> *photos) {
        [weakSelf showSelectedPhotos:photos];
    }];
    
}
- (void)showSelectedPhotos:(NSArray *)imgs {
    for (int i = 0; i < imgs.count; i ++) {
        UIImageView * iv = [[UIImageView alloc]initWithFrame:CGRectMake(50 * i, 100, 50, 50)];
        iv.image = imgs[i];
        [self.view addSubview:iv];
    }
}


@end
