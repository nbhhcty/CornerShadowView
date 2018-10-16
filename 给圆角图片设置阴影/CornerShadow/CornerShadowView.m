//
//  CornerShadowView.m
//  给圆角图片设置阴影
//
//  Created by wsk on 2018/10/16.
//  Copyright © 2018年 hml. All rights reserved.
//

#import "CornerShadowView.h"
#import <Masonry.h>

@interface CornerShadowView ()
@property (nonatomic, strong) UIView *p_contentView;
@property (nonatomic, strong) UIImageView *p_imageView;
@end

@implementation CornerShadowView
-(instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor brownColor];
        [self addSubview:self.p_contentView];
        [self.p_contentView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(self).insets(UIEdgeInsetsMake(10, 10, 10, 10));
        }];
        [self addSubview:self.p_imageView];
        [self.p_imageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(self).insets(UIEdgeInsetsMake(10, 10, 10, 10));
        }];
    }
    return self;
}
- (UIView *)p_contentView {
    if (!_p_contentView) {
        _p_contentView = [[UIView alloc] init];
        _p_contentView.backgroundColor = [UIColor whiteColor];
        // 设置阴影
        _p_contentView.layer.shadowColor = [UIColor blackColor].CGColor;
        _p_contentView.layer.shadowOpacity = 0.8;
        _p_contentView.layer.shadowOffset = CGSizeMake(3, 3);
    }
    return _p_contentView;
}
- (UIImageView *)p_imageView {
    if (!_p_imageView) {
        _p_imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"星爷"]];
        _p_imageView.backgroundColor = [UIColor greenColor];
        _p_imageView.layer.masksToBounds = YES;
    }
    return _p_imageView;
}
-(void)layoutSubviews {
    self.p_contentView.layer.cornerRadius = (self.bounds.size.width - 20)*0.5;
    self.p_imageView.layer.cornerRadius = (self.bounds.size.width - 20)*0.5;
}
@end
