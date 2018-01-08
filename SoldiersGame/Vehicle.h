//
//  Vehicle.h
//  SoldiersGame
//
//  Created by cice on 21/12/17.
//  Copyright © 2017 TATINC. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Soldier;

@interface Vehicle : NSObject

@property (nonatomic,copy) NSString * name;
@property (nonatomic) float maxSpeed;
@property (nonatomic) float nosecual;
@property (nonatomic) float nosecuantos;
@property (nonatomic, weak) Soldier * driver;

-(Vehicle*)initWithName:(NSString *)name maxSpeed:(float)speed;

-(void)accelerate;
-(void)brake;
-(void)turnRight;
-(void)turnLeft;

@end
