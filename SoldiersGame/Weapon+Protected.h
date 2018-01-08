//
//  Weapon+Protected.h
//  SoldiersGame
//
//  Created by cice on 21/12/17.
//  Copyright © 2017 TATINC. All rights reserved.
//

#import "Weapon.h"

// Para declarar una Categoría el nombre va entre paréntesis.
@interface Weapon (Protected)

@property (nonatomic,readwrite, copy) NSString * name;
@property (nonatomic,readwrite) int damage;

@end
