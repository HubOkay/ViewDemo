//
//  BlueView.h
//  ViewDemo
//
//  Created by Okay on 14-9-28.
//  Copyright (c) 2014年 alpha. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "RedView.h"

@interface BlueView : UIView

@property (nonatomic, assign) RedView *contentView;

- (id)initWithFrame:(CGRect)frame redView:(RedView *)redView;

@end
