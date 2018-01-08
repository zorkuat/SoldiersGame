//
//  Weapon.h
//  SoldiersGame
//
//  Created by cice on 20/12/17.
//  Copyright © 2017 TATINC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IWeapon.h"

@class Soldier;

@interface Weapon : NSObject <IWeapon>

//@property (nonatomic, copy) NSString * name;
//@property (nonatomic) int damage;

@property (nonatomic, weak) Soldier * owner;

- (Weapon *)init;
- (Weapon *)initWithName:(NSString*)name;
- (Weapon *)initWithName:(NSString*)name
                  damage:(int)damage;

- (void)attack:(Soldier *)target;

@end
