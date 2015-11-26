//
//  RedView.m
//  ViewDemo
//
//  Created by Okay on 14-9-28.
//  Copyright (c) 2014年 alpha. All rights reserved.
//

#import "RedView.h"

@implementation RedView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self) {
        self.backgroundColor = [UIColor redColor];
    }
    
    return self;
}

@end
