//
//  Person.m
//  BMIandBMR
//
//  Created by Andrea Bolivar on 7/5/16.
//  Copyright © 2016 Andrea Bolivar. All rights reserved.
//

#import "Person.h"

static Person* secretPerson;

@implementation Person

@synthesize weightInKG;
@synthesize heightInM;
@synthesize ageInY;
@synthesize isMan;

+(Person*) sharedPersonInstance
{
    if(secretPerson == nil){
        secretPerson = [[Person alloc] init];
        secretPerson.heightInM = @1.75;
        secretPerson.weightInKG = @78;
    }
    return secretPerson;
}

-(NSString*) description
{
    return [NSString stringWithFormat:@"%p %lu %@ %@", self, sizeof(self), self.weightInKG, self.heightInM];
}
-(NSNumber*) bmi
{
    float m = self.weightInKG.floatValue;
    float h = self.heightInM.floatValue;
    float bmi = m / (h * h);
    return @(bmi);
}
-(NSNumber*) bmrF
{
    float m = self.weightInKG.floatValue;
    float h = self.heightInM.floatValue;
    float a = self.ageInY.floatValue;
    float bmr = 655 + ( 9.6 * m) + ( 180* h) - ( 4.7 * a);
    return @(bmr);
}
-(NSNumber*) bmrM
{
    float m = self.weightInKG.floatValue;
    float h = self.heightInM.floatValue;
    float a = self.ageInY.floatValue;
    float bmr = 66 + ( 13.7 * m) + ( 500 * h) - ( 6.8 * a);
    return @(bmr);
}


@end
