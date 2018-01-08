//
//  Motorbike.h
//  SoldiersGame
//
//  Created by cice on 21/12/17.
//  Copyright © 2017 TATINC. All rights reserved.
//

#import "Vehicle.h"
#import "IWeapon.h"

// Se declara la clase de la que hereda y los protocolos con una lista de protocolos entre <IProtocolo1,IProtocolo2,...,IProtocoloN>
@interface Motorbike : Vehicle <IWeapon>

// Se crea el getter del daño y el método de ataque para implementarlo.
-(int)damage;
-(Soldier*)owner;
-(void)setOwner:(Soldier *)owner;

-(void)attack:(Soldier *)target;

-(void) jump;

@end
