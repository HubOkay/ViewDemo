//
//  BlueView.m
//  ViewDemo
//
//  Created by Okay on 14-9-28.
//  Copyright (c) 2014年 alpha. All rights reserved.
//

#import "BlueView.h"

@implementation BlueView

- (void)dealloc
{
    [self.contentView removeObserver:self forKeyPath:@"frame"];
    [super dealloc];
}

- (id)initWithFrame:(CGRect)frame redView:(RedView *)redView
{
    self = [super initWithFrame:frame];
    
    if (self) {
        self.backgroundColor = [UIColor blueColor];
        self.contentView = redView;
        
        [self.contentView addObserver:self forKeyPath:@"frame" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld context:NULL];
    }
    
    return self;
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{

}

@end
