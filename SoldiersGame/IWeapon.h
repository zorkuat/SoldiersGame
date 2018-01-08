//
//  Weaponry.h
//  SoldiersGame
//
//  Created by cice on 21/12/17.
//  Copyright © 2017 TATINC. All rights reserved.
//

#import <Foundation/Foundation.h>

// Se puede importar o declarar como está hecho aquí.
@class Soldier;

@protocol IWeapon <NSObject>

// Con required se obliga a implementar en la clase las propiedades y métodos que vayan debajo.
@required

// Con optional no tienen porqué declararse o implementarse.
@optional

@property (readonly) int damage;
@property (readonly) NSString * name;
@property (nonatomic, readwrite, weak) Soldier * owner;

-(void)attack:(Soldier *)target;

@end
