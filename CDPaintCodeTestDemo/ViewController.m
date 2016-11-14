//
//  ViewController.m
//  CDPaintCodeTestDemo
//
//  Created by chendi on 16/11/14.
//  Copyright © 2016年 chendi. All rights reserved.
//

#import "ViewController.h"
#import "PaintCodeTutorial.h"

@interface ViewController ()

@property (nonatomic, strong) UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    UIView *view = [[UIView alloc] init];
//    view.frame = (CGRect){0, 0, 250, 250};
//    view.center = self.view.center;
//    [self.view addSubview:view];
    
    UIImage *image = [PaintCodeTutorial imageOfCanvas1];
    self.imageView = [[UIImageView alloc] init];
    _imageView.frame = (CGRect){0, 0, 250, 250};
    _imageView.center = self.view.center;
    _imageView.image = image;
    
    [self.view addSubview:_imageView];
    
    [PaintCodeTutorial drawCanvas1];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
