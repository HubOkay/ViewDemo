//
//  DetailViewController.h
//  ViewDemo
//
//  Created by Okay on 14-9-28.
//  Copyright (c) 2014年 wanmei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (assign, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

