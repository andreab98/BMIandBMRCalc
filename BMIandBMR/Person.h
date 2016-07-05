//
//  Person.h
//  BMIandBMR
//
//  Created by Andrea Bolivar on 7/5/16.
//  Copyright © 2016 Andrea Bolivar. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Person : NSObject

@property (strong, nonatomic) NSNumber* weightInKG;

@property (strong, nonatomic) NSNumber* heightInM;

@property (strong, nonatomic) NSNumber* ageInY;

@property (assign) BOOL isMan;

+(Person*) sharedPersonInstance;

-(NSNumber*) bmi;
-(NSNumber*) bmrF;
-(NSNumber*) bmrM;



@end