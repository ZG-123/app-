//
//  UIBarButtonItem+KNBarButtonItem.h
//  KnysSm
//
//  Created by cloud on 16/6/23.
//  Copyright © 2016年 cnknys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (KNBarButtonItem)
+ (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action image:(NSString *)image highImage:(NSString *)highImage;


@end
