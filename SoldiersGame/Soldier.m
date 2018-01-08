//
//  Soldier.m
//  SoldiersGame
//
//  Created by cice on 19/12/17.
//  Copyright © 2017 TATINC. All rights reserved.
//

#import "Soldier.h"

@interface Soldier ()

@property (nonatomic,readonly) int armor;

@end


@implementation Soldier

#pragma MARK CONSTRUCTORES

-(Soldier*) init
{
    // Código por defecto de los constructores. Llamada a un constructor más básico que inicialice
    self = [super init];
    if(self){
        _name = @"John Doe";
        _life = 100;
        //self.damage = 5;
        _armor = 1;
        //self.accuracy = 0.5f;
    }
    return self;
}

-(Soldier*) initWithName:(NSString*)name
{
    // Código por defecto de los constructores. Llamada a un constructor más básico que inicialice
    self = [super init];
    if(self){
        _name = name;
        _life = 100;
        //self.damage = 5;
        _armor = 0;
        //self.accuracy = 0.5f;
    }
    return self;
}

-(Soldier*) initWithName:(NSString*)name
                    life:(int)life
                  //damage:(int)damage
                   armor:(int)armor
                //accuracy:(float)accuracy;
{
    // Código por defecto de los constructores. Llamada a un constructor más básico que inicialice
    self = [super init];
    if(self){
        _name = name;
        _life = life;
        //self.damage = damage;
        _armor = armor;
        //self.accuracy = accuracy;
    }
    return self;
}

#pragma MARK PROPIEDADES

-(void)setWeapon:(id<IWeapon>)weapon
{
    _weapon = weapon;
    _weapon.owner = self;
    NSLog(@"%@ dice: He cogido el arma %@", self.name, weapon.name);
}

-(void) attack:(Soldier*)target
{
    NSLog(@"%@ dice: Ataco a %@", self.name, target.name);
    //[target receiveAttackFrom:self damage:self.damage];
    [self.weapon attack:target];
}

-(void) receiveAttackFrom:(Soldier*)attacker damage:(int)damage
{
    _life -= (damage - _armor);
    if (self.life >0)
    {
        NSLog(@"%@ dice: %@ me ha atacado con %@ y me queda %d de vida", self.name, attacker.name, attacker.weapon.name, self.life);
    }
    else
    {
        _life = 0;
        NSLog(@"%@ dice: ¡Argghh! ¡%@ me ha matado!", self.name, attacker.name);
    }

}

-(void) heal:(int)healing
{
    _life += _life + healing;
}

@end
