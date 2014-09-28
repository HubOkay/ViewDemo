//
//  DetailViewController.m
//  ViewDemo
//
//  Created by Okay on 14-9-28.
//  Copyright (c) 2014年 wanmei. All rights reserved.
//

#import "DetailViewController.h"

#import "RedView.h"
#import "BlueView.h"

@interface DetailViewController ()
{
    BlueView *_upView;
}

@property (nonatomic, retain) RedView *contentView;

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureView];
    
    self.contentView = [[[RedView alloc] initWithFrame:self.view.bounds] autorelease];
    
    _upView = [[BlueView alloc] initWithFrame:CGRectMake(100, 100, 100, 100) redView:self.contentView];
    [self.contentView addSubview:_upView];
    [_upView release];
    
    [self.view addSubview:self.contentView];
    
    [self.contentView addObserver:self forKeyPath:@"frame" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld context:NULL];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    [self.contentView removeObserver:self forKeyPath:@"frame"];
//    [_upView removeFromSuperview];
    self.contentView = nil;
    [super dealloc];
}

@end
