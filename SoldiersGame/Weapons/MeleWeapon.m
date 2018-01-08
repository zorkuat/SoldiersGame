//
//  MeleWeapon.m
//  SoldiersGame
//
//  Created by cice on 20/12/17.
//  Copyright © 2017 TATINC. All rights reserved.
//

#import "MeleWeapon.h"
#import "Weapon+Protected.h"
#import "Soldier.h"

@implementation MeleWeapon

-(void)attack:(Soldier *)target
{
    [self hit:target];
}

- (void)hit:(Soldier*) target
{
    // Lógica para el golpe
    NSLog(@"%@ dice: ¡He golpeado a %@!", self.owner.name, target.name);
    [target receiveAttackFrom:self.owner damage:self.damage];
    
    int randomDurabilityDecrease = arc4random_uniform(10);
    if(randomDurabilityDecrease<1 && self.damage > 0)
    {
        NSLog(@"%@ dice: %@ se está gastando", self.owner.name, self.name);
        self.damage -= 1;
    }
}


@end
