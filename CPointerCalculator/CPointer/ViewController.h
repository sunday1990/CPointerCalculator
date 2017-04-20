//
//  ViewController.h
//  CPointer
//
//  Created by ccSunday on 2017/4/20.
//  Copyright © 2017年 ccSunday. All rights reserved.
//

#import <UIKit/UIKit.h>




@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *inputTv;

- (IBAction)addMethod:(UIButton *)sender;

- (IBAction)subMethod:(UIButton *)sender;

- (IBAction)mulMethod:(UIButton *)sender;

- (IBAction)diviMethod:(id)sender;

- (IBAction)resultMethod:(UIButton *)sender;

- (IBAction)clearMethod:(UIButton *)sender;

@end

