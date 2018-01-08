//
//  FireWeapon.h
//  SoldiersGame
//
//  Created by cice on 20/12/17.
//  Copyright © 2017 TATINC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Weapon.h"

//Predeclaración de la clase soldier para evitar el ciclo de autoreferencia ante la ausencia de parent.
//Se importa en el fichero de instancia .m
@class Soldier;

@interface FireWeapon : Weapon

//@property (nonatomic, readonly, copy) NSString *name;
@property (nonatomic, readonly) int currentAmmo;
@property (nonatomic, readonly) int maxAmmo;
@property (nonatomic, readonly) float accuracy;
//@property (nonatomic, readonly) int damage;
//@property (nonatomic, weak) Soldier *owner;

#pragma MARK CONSTRUCTORES

- (FireWeapon *)init;
- (FireWeapon *)initWithName:(NSString*)name;
- (FireWeapon *)initWithName:(NSString*)name
                        ammo:(int)ammo
                      damage:(int)damage
                    accuracy:(float)accuracy;


- (void)shoot:(Soldier*) target;
- (void)reload;

@end
