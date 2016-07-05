//
//  ViewController.m
//  BMIandBMR
//
//  Created by Andrea Bolivar on 7/5/16.
//  Copyright © 2016 Andrea Bolivar. All rights reserved.
//
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
    Person* p =[Person sharedPersonInstance];
    
    if (_metricSwitch.selectedSegmentIndex == 0)
    {
        p.weightInKG=[NSNumber numberWithFloat:self.weightTextField.text.floatValue];
        p.heightInM=[NSNumber numberWithFloat:self.heightTextField.text.floatValue];
    }
    else{
        p.weightInKG=@(self.weightTextField.text.floatValue/2.2);
        p.heightInM=@(self.heightTextField.text.floatValue/3.3);
    }
    
    p.ageInY=[NSNumber numberWithFloat:self.ageTextField.text.floatValue];
    
    NSNumber*bmi = p.bmi;
    
    if (self.genderSwitch.on==YES) {
        p.isMan=YES;
        NSNumber*bmrM = p.bmrM;
        self.bmrLabel.text=[NSString stringWithFormat:@"%.0f", bmrM.floatValue];
    }
    else {
        p.isMan=NO;
        NSNumber*bmrF = p.bmrF;
        self.bmrLabel.text=[NSString stringWithFormat:@"%.0f", bmrF.floatValue];
    }
    
    self.bmiLabel.text=[NSString stringWithFormat:@"%.2f", bmi.floatValue];
    
    UIImage*newImage;
    NSString*path;
    NSBundle *myBundle = [NSBundle mainBundle];
    
    if (bmi.floatValue>=30){
        path = [myBundle pathForResource: @"thumbsDown" ofType:@"png"];
    }
    else if (bmi.floatValue>=25){
        path = [myBundle pathForResource: @"thumbsDown" ofType:@"png"];
    }
    else if (bmi.floatValue>=18.5){
        path = [myBundle pathForResource: @"thumbsUp" ofType:@"jpg"];
    }
    else{
        path = [myBundle pathForResource: @"thumbsUp" ofType:@"jpg"];
    }
    
    newImage = [UIImage imageWithContentsOfFile:path];
    self.myImageView.image = newImage;
    
}
@end
