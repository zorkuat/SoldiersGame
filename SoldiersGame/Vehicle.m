//
//  Vehicle.m
//  SoldiersGame
//
//  Created by cice on 21/12/17.
//  Copyright © 2017 TATINC. All rights reserved.
//

#import "Vehicle.h"

@implementation Vehicle

-(Vehicle*)initWithName:(NSString*) name maxSpeed:(float)speed
{
    self = [super init];
    if(self)
    {
        _name = name;
        _maxSpeed = speed;
    }
    return self;
    
}

-(void)accelerate{}
-(void)brake{}
-(void)turnRight{}
-(void)turnLeft{}

@end
