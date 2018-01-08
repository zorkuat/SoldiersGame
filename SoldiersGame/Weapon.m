//
//  Weapon.m
//  SoldiersGame
//
//  Created by cice on 20/12/17.
//  Copyright © 2017 TATINC. All rights reserved.
//

#import "Weapon.h"
#import "Soldier.h"

// Espacio para extensiones privadas de métodos y propiedades. También llamada Categoría anónima porque dentro
// del paréntesis no hay nada.
@interface Weapon()

@property (nonatomic, readwrite, copy) NSString *name;
@property (nonatomic, readwrite, assign) int damage;

@end


@implementation Weapon

- (Weapon *)init
{
    self = [super init];
    if(self)
    {
        _name = @"Chistorra";
        _damage = 15;
    }
    return self;
}

- (Weapon *)initWithName:(NSString*)name
{
    self = [super init];
    {
        if(self)
        {
            _name = name;
            _damage = 15;
        }
    }
    
    return self;
}

- (Weapon *)initWithName:(NSString*)name
                      damage:(int)damage
{
    self = [super init];
    {
        if(self)
        {
            _name = name;
            _damage = damage;
        }
    }
    return self;
}

- (void)attack:(Soldier *)target
{
    // Lógica para el golpe
    //NSLog(@"%@ dice: ¡He golpeado a %@!", self.owner.name, target.name);
    //[target receiveAttackFrom:self.owner damage:self.damage];
}

@end
