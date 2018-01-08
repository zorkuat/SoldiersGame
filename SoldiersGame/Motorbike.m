//
//  Motorbike.m
//  SoldiersGame
//
//  Created by cice on 21/12/17.
//  Copyright © 2017 TATINC. All rights reserved.
//

#import "Motorbike.h"
#import "Soldier.h"

@implementation Motorbike


-(int)damage
{
    return self.maxSpeed;
}

// Con este protocolo, si asignas un nuevo valor a onwer te sobreescribe driver.
-(void)setOwner:(Soldier *)owner
{
    self.driver = owner;
}

// Protocolo que devuelve el valor REAL de owner como si existiera (es una variable fantasma)
-(Soldier *)owner
{
    return self.driver;
}



-(void)attack:(Soldier *)target
{
    // Se pone el nil porque no está implementado el owner de la clase.
    [target receiveAttackFrom:self.driver damage:self.damage];
}


-(void) jump
{
    
}

@end
