//
//  ViewController.m
//  PathCoverDemo
//
//  Created by Guojiubo on 13-1-28.
//  Copyright (c) 2013年 Guojiubo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, retain) IBOutlet UIImageView *coverImageView;

@end

@implementation ViewController

- (void)dealloc
{
    self.coverImageView = nil;
    [super dealloc];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIScrollView delegate

#define COVER_IMAGE_HEIGHT  150.0f

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    if (scrollView.contentOffset.y <= 0)
    {
        //drag direct down
        if (!(COVER_IMAGE_HEIGHT - scrollView.contentOffset.y > 320))
        {
            [_coverImageView setFrame:CGRectMake(_coverImageView.frame.origin.x, scrollView.contentOffset.y, 320, COVER_IMAGE_HEIGHT - scrollView.contentOffset.y)];
        }
    }
}

@end
