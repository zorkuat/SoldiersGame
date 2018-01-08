//
//  FireWeapon.m
//  SoldiersGame
//
//  Created by cice on 20/12/17.
//  Copyright © 2017 TATINC. All rights reserved.
//

#import "FireWeapon.h"
#import "Weapon+Protected.h"
#import "Soldier.h"

@implementation FireWeapon

#pragma MARK CONSTRUCTORES

- (FireWeapon *)init
{
    self = [super init];
    if(self)
    {
        _maxAmmo = 20;
        _currentAmmo = 20;
        _accuracy = 0.5f;
    }
    return self;
}

- (FireWeapon *)initWithName:(NSString*)name
{
    self = [super initWithName:name];
    {
        if(self)
        {
            _maxAmmo = 20;
            _currentAmmo = 20;
            _accuracy = 0.5f;
        }
    }
    
    return self;
}

- (FireWeapon *)initWithName:(NSString*)name
                    ammo:(int)ammo
                  damage:(int)damage
                accuracy:(float)accuracy
{
    self = [super initWithName:name damage:damage];
    {
        if(self)
        {
            _maxAmmo = ammo;
            _currentAmmo = ammo;
            _accuracy = accuracy;
        }
    }
    return self;
};

-(void)attack:(Soldier *)target
{
    [self shoot:target];
}

- (void)shoot:(Soldier*) target
{
    if(self.currentAmmo>0)
    {
        // Lógica para la precisión
        float precisionCheck = arc4random_uniform(100)/100.0f;
        if(precisionCheck<self.accuracy)
        {
            NSLog(@"%@ dice: ¡He dado a %@!", self.owner.name, target.name);
            [target receiveAttackFrom:self.owner damage:self.damage];
            _currentAmmo--;
        }
        else
        {
            NSLog(@"%@ dice: ¡%@ es una puta mierda!¡He fallado!", self.owner.name, self.name);
        }
        
    }
    else
    {
        NSLog(@"%@ dice: ¡¡%@ se quedó sin balas!!", self.owner.name, self.name);
        [self reload];
    }
}

- (void)reload
{
    NSLog(@"%@ dice: Recargando %@", self.owner.name, self.name);
    _currentAmmo = self.maxAmmo;
}

@end
