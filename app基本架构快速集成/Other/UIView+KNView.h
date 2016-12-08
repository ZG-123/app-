//
//  UIView+KNView.h
//  KnysSm
//
//  Created by cloud on 16/6/23.
//  Copyright © 2016年 cnknys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (KNView)

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;
@property (nonatomic, assign) CGSize size;
@property (nonatomic, assign) CGPoint origin;

/// 底部 Y坐标+高度
@property (nonatomic, assign) CGFloat bottom;
/// 右侧 X坐标+宽度
@property (nonatomic, assign) CGFloat right;


//控件边缘灰色线条
+(void)setFoursides:(UIView *)view Direction:(NSString *)dirction sizeW:(CGFloat)sizew;

@end
