//
//  ViewController.m
//  给圆角图片设置阴影
//
//  Created by wsk on 2018/10/16.
//  Copyright © 2018年 hml. All rights reserved.
//

#import "ViewController.h"
#import "CornerShadowView.h"
#import <Masonry.h>

@interface ViewController ()
@property (nonatomic, strong) CornerShadowView *p_cornerView;
@end
@implementation ViewController
- (CornerShadowView *)p_cornerView {
    if (!_p_cornerView) {
        _p_cornerView = [[CornerShadowView alloc] init];
    }
    return _p_cornerView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.p_cornerView];
    [self.p_cornerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(260, 260));
        make.center.equalTo(self.view);
    }];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end
