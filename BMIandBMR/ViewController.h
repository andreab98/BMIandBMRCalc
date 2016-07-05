//
//  ViewController.h
//  BMICalculator
//
//  Created by Andrea Bolivar on 6/30/16.
//  Copyright © 2016 Andrea Bolivar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *bmiLabel;


@property (weak, nonatomic) IBOutlet UILabel *bmrLabel;

@property (weak, nonatomic) IBOutlet UITextField *heightTextField;
@property (weak, nonatomic) IBOutlet UITextField *weightTextField;

@property (weak, nonatomic) IBOutlet UITextField *ageTextField;


@property (weak, nonatomic) IBOutlet UIImageView *myImageView;

- (IBAction)buttonPressed:(id)sender;

@property (weak, nonatomic) IBOutlet UISwitch *genderSwitch;


@property (weak, nonatomic) IBOutlet UISegmentedControl *metricSwitch;

@end

