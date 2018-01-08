//
//  MeleWeapon.h
//  SoldiersGame
//
//  Created by cice on 20/12/17.
//  Copyright © 2017 TATINC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Weapon.h"

@class Soldier;

@interface MeleWeapon : Weapon

//Declarados en la clase padre
//@property (nonatomic, readonly, copy) NSString *name;
//@property (nonatomic, readonly) int damage;
//@property (nonatomic, weak) Soldier *owner;

#pragma MARK CONSTRUCTORES

- (void)hit:(Soldier*) target;

@end
