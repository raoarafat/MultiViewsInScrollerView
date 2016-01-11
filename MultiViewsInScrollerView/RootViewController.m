//
//  RootViewController.m
//  MultiViewControllerInScrollerView
//
//  Created by Arafat on 11/01/2016.
//  Copyright © 2016 Arafat Khan. All rights reserved.
//

#import "RootViewController.h"


@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.navigationBarHidden = YES;
    
}

-(void) viewDidAppear:(BOOL)animated{
    
    [super viewDidAppear:animated];
    
    [self addScrolling];
    

}


#pragma mark - helper

-(void) addScrolling{
    
    self.scrollViewMain.frame = CGRectMake(0,0, self.scrollViewMain.frame.size.width, self.scrollViewMain.frame.size.height);
    
    self.scrollViewMain.contentSize = CGSizeMake(CGRectGetWidth(self.scrollViewMain.frame) * 3, CGRectGetHeight(self.scrollViewMain.frame));
    self.scrollViewMain.pagingEnabled = YES;
    self.scrollViewMain.delegate = self;
    
    [self loadFirstView];
    [self loadSecondView];
    [self loadThirdView];
}


-(void) loadFirstView{
    
    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(self.scrollViewMain.frame.size.width*0, 0, self.scrollViewMain.frame.size.width, self.scrollViewMain.frame.size.height)];
    
    self.view1.frame = CGRectMake(0, 0, self.scrollViewMain.frame.size.width,self.view1.frame.size.height);
    [scrollView addSubview:self.view1];
    [scrollView setContentSize:self.view1.frame.size];
    
    
    [self.scrollViewMain addSubview:scrollView];
}

-(void) loadSecondView{
    
    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(self.scrollViewMain.frame.size.width*1, 0, self.scrollViewMain.frame.size.width, self.scrollViewMain.frame.size.height)];
    
    self.view2.frame = CGRectMake(0, 0, self.scrollViewMain.frame.size.width,self.view2.frame.size.height);
    [scrollView addSubview:self.view2];
    [scrollView setContentSize:self.view2.frame.size];
    
    
    [self.scrollViewMain addSubview:scrollView];
}

-(void) loadThirdView{
    
    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(self.scrollViewMain.frame.size.width*2, 0, self.scrollViewMain.frame.size.width, self.scrollViewMain.frame.size.height)];
    
    self.view3.frame = CGRectMake(0, 0, self.scrollViewMain.frame.size.width,self.view3.frame.size.height);
    [scrollView addSubview:self.view3];
    [scrollView setContentSize:self.view3.frame.size];
    
    
    [self.scrollViewMain addSubview:scrollView];
    
}

#pragma mark - action

-(IBAction)fistViewCont:(id)sender{
    
    CGPoint bottomOffset = CGPointMake(self.scrollViewMain.frame.size.width*0, 0);
    [self.scrollViewMain setContentOffset:bottomOffset animated:YES];
    
}

-(IBAction)secondViewCont:(id)sender{
    
    CGPoint bottomOffset = CGPointMake(self.scrollViewMain.frame.size.width*1, 0);
    [self.scrollViewMain setContentOffset:bottomOffset animated:YES];
}


-(IBAction)thirdViewCont:(id)sender{
    
    CGPoint bottomOffset = CGPointMake(self.scrollViewMain.frame.size.width*2, 0);
    [self.scrollViewMain setContentOffset:bottomOffset animated:YES];
}



-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    NSLog(@"tag : %d",(int)scrollView.tag);
}
@end
