//
//  Soldier.h
//  SoldiersGame
//
//  Created by cice on 19/12/17.
//  Copyright © 2017 TATINC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IWeapon.h"

@interface Soldier : NSObject

// Declaración de variables públicas
@property (nonatomic,readonly) int life;
@property (nonatomic,readonly, copy) NSString * name;
//@property (nonatomic) int damage;
//@property (nonatomic) float accuracy;
//La declaración de un protocolo se realiza con el tipo 'id' (que es representación de 'cualquier tipo') y se especifica
// que 'implemente el protocolo' (Protocolo entre llaves)
@property (nonatomic) id<IWeapon> weapon;

// Declaracion de acciones públicas

#pragma MARK CONSTRUCTORES

-(Soldier*) init;
-(Soldier*) initWithName:(NSString*)name;
-(Soldier*) initWithName:(NSString*)name
                    life:(int)life
                //damage:(int)damage
                   armor:(int)armor;
              //accuracy:(float)accuracy;


//-(return) NOMBRE:(tipo)v1 [NOMBRE_EXT:(tipo)v2 ... ]
-(void) attack:(Soldier*)target;
-(void) receiveAttackFrom:(Soldier*)attacker damage:(int)damage;

-(void) heal:(int)healing;

@end
