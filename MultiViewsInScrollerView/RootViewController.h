//
//  RootViewController.h
//  MultiViewControllerInScrollerView
//
//  Created by Arafat on 11/01/2016.
//  Copyright © 2016 Arafat Khan. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface RootViewController : UIViewController<UIImagePickerControllerDelegate, UINavigationControllerDelegate,UIScrollViewDelegate>


@property (strong, nonatomic) IBOutlet UIView *view1;
@property (strong, nonatomic) IBOutlet UIView *view2;
@property (strong, nonatomic) IBOutlet UIView *view3;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollViewMain;


@end

