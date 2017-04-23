//
//  ViewController.m
//  CPointer
//
//  Created by ccSunday on 2017/4/20.
//  Copyright © 2017年 ccSunday. All rights reserved.
//

#import "ViewController.h"

//typedef long long int (*FUNC)();

/************************************************************************************************/

typedef struct {
    
    int x;
    
    int y;
    
    long long int(*pfunc)();    //定义函数指针
    
}Calculator;                    //定义结构体Calculator

static Calculator *cal;         //声明全局静态Calculator指针cal

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
  
    self.view.backgroundColor  =  [UIColor grayColor];
   
    _inputTv.keyboardType = UIKeyboardTypeNumberPad;
 
    //使用的时候必须进行初始化
    cal = (Calculator *)malloc(sizeof(Calculator));

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/************************************************************************************************/

//double calculator(long long x,long long y,FUNC func){
//    
//    double result;
//
//    result = (*func)(x,y);
//    
//    return result;
//    
//}

double calculator(){

    double result;

    result = (* cal->pfunc)(cal->x,cal->y);

    return result;

}
/************************************************************************************************/

//long long add(int a,int b){
//    
//    return a + b;
//}

long long add(){
    
    return cal->x + cal->y;
}
/************************************************************************************************/


//long long int sub(int a,int b){
//    
//    return a - b;
//}

long long int sub(){
    
    return cal->x - cal->y;
}

/************************************************************************************************/

//long long int mul(int a ,int b){
//    
//    return a*b;
//    
//}

long long int mul(){
    
    return cal->x * cal->y;
    
}
/************************************************************************************************/


//long long int divi(int a,int b){
//    
//    return a/b;
//}

long long int divi(){
    
    if (cal->y == 0) {
        
        return cal->x/1;
    }
    return cal->x/cal->y;
}
/************************************************************************************************/


- (IBAction)addMethod:(UIButton *)sender {
    cal->x = _inputTv.text.intValue;
    cal->pfunc = add;
    _inputTv.text = @"";
}

- (IBAction)subMethod:(UIButton *)sender {
    cal->x = _inputTv.text.intValue;
    cal->pfunc = sub;
    _inputTv.text = @"";

}

- (IBAction)mulMethod:(UIButton *)sender {
    cal->x = _inputTv.text.intValue;
    cal->pfunc = mul;
    _inputTv.text = @"";

}

- (IBAction)diviMethod:(id)sender {
    cal->x = _inputTv.text.intValue;
    cal->pfunc = divi;
    _inputTv.text = @"";

}

- (IBAction)resultMethod:(UIButton *)sender {
    
    cal->y = _inputTv.text.intValue;
    
    _inputTv.text = @(calculator()).stringValue;

}

- (IBAction)clearMethod:(UIButton *)sender {
    cal->x = 0;
    _inputTv.text = @"";
}

@end
