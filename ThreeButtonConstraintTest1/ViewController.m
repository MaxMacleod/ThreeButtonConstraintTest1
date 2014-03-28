//
//  ViewController.m
//  ThreeButtonConstraintTest1
//
//  Created by MacLeod, Max on 26/03/2014.
//  Copyright (c) 2014 Max. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    CGFloat _originalFirstButtonWidthConstant;
}
@property (weak, nonatomic) IBOutlet UISlider *buttonWidthSlider;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *firstButtonWidthConstraint;
- (IBAction)didChangeSliderValue:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _originalFirstButtonWidthConstant = _firstButtonWidthConstraint.constant;
    _buttonWidthSlider.value = 1.f;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didChangeSliderValue:(id)sender {
    UISlider *slider = sender;
    NSLog(@"slider value %f _originalFirstButtonWidthConstraint %f", slider.value, _originalFirstButtonWidthConstant);
    _firstButtonWidthConstraint.constant = slider.value * _originalFirstButtonWidthConstant;
}
@end
