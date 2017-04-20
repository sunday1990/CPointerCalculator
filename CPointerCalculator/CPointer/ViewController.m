//
//  ViewController.m
//  CPointer
//
//  Created by ccSunday on 2017/4/20.
//  Copyright © 2017年 ccSunday. All rights reserved.
//

#import "ViewController.h"

long long int (*pfunc)();

long long int inputX;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor  =  [UIColor grayColor];
    _inputTv.keyboardType = UIKeyboardTypeNumberPad;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

double calculator(long long x,long long y,long long (*pfunc)()){
    
    double result;
    
    result = (*pfunc)(x,y);
    
    printf("result:%f",result);

    return result;
    
}

long long add(int a,int b){
    
    return a + b;
}

long long int sub(int a,int b){
    
    return a - b;
}

long long int mul(int a ,int b){
    
    return a*b;
    
}

long long int divi(int a,int b){
    
    return a/b;
    
}

- (IBAction)addMethod:(UIButton *)sender {
    inputX = _inputTv.text.intValue;
    _inputTv.text = @"";
    pfunc = add;
}

- (IBAction)subMethod:(UIButton *)sender {
    inputX = _inputTv.text.intValue;
    _inputTv.text = @"";
    pfunc = sub;
}

- (IBAction)mulMethod:(UIButton *)sender {
    inputX = _inputTv.text.intValue;
    _inputTv.text = @"";
    pfunc = mul;

}

- (IBAction)diviMethod:(id)sender {
    inputX = _inputTv.text.intValue;
    _inputTv.text = @"";
    pfunc = divi;

}

- (IBAction)resultMethod:(UIButton *)sender {
    
    double result = calculator(inputX, _inputTv.text.intValue, pfunc);
    
    _inputTv.text = @(result).stringValue;

}


- (IBAction)clearMethod:(UIButton *)sender {
    inputX = 0;
    _inputTv.text = @"";
}
@end
