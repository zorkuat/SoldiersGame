//
//  main.m
//  SoldiersGame
//
//  Created by cice on 19/12/17.
//  Copyright © 2017 TATINC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Soldier.h"
#import "MeleWeapon.h"
#import "FireWeapon.h"
#import "Motorbike.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray * soldiers = [[NSMutableArray alloc] init];
        NSMutableArray <id<IWeapon>> * weapons = [[NSMutableArray alloc] init];
        
        [soldiers addObject:[[Soldier alloc]
                             initWithName:@"David"]];
        
        [soldiers addObject:[[Soldier alloc]
                             initWithName:@"Peter"]];
        
        [soldiers addObject:[[Soldier alloc]
                             initWithName:@"John"]];
        
        [soldiers addObject:[[Soldier alloc]
                             initWithName:@"Pakk"]];
        
        [weapons addObject:[[FireWeapon alloc] initWithName:@"Gun"
                                                       ammo:8
                                                     damage:5
                                                   accuracy:0.9f]];
        
        [weapons addObject:[[FireWeapon alloc] initWithName:@"Rifle"
                                                       ammo:5
                                                     damage:10
                                                   accuracy:0.8f]];
        
        //[weapons addObject:[[MeleWeapon alloc]
        //                     initWithName:@"Chorrimanguer" damage:1]];
        
        [weapons addObject:[[MeleWeapon alloc] initWithName:@"Frying pan"
                                                     damage:2]];
        
        [weapons addObject:[[Motorbike alloc] initWithName:@"Harley"
                                                  maxSpeed:20.0f]];
        
        //Bucle de asignación.
        //Las armas creadas son únicas e intransferibles por defición.
        //De forma que cada arma tiene que tener su propio dueño.
        //No es una definición de tipo sino un arma con su propia identidad (aunque no tenga id, pero si tiene dueño)
        //Por lo tanto, una vez asignada el arma se tiene que eliminar de las posibilidades.
        for(int i=0; i<soldiers.count; i++)
        {
            Soldier * soldier = soldiers[i];
            int randomWeapon = arc4random_uniform((uint32)weapons.count);
            soldier.weapon = weapons[randomWeapon];
            
            // Método alternativo de asignación con acceso al método set
            //[soldier setWeapon:weapons[randomWeapon]];
            
            //Hemos sobreescrito el setter del arma para que esto no sea necesaria.
////            soldier.weapon.owner = soldier;
////             Método alternativo de lectura con acceso al método get
////            [[soldier weapon] setOwner:soldier];
            
            [weapons removeObjectAtIndex:randomWeapon];
        }
        
        //liberar memoria sobrante
        weapons = nil;
        
//        Soldier * soldado1 = [[Soldier alloc]
//                  initWithName:@"John" life:100 damage:5 armor:1 accuracy:0.5f];
//
////        soldado1.name = @"John";
////        soldado1.life = 100;
////        soldado1.damage = 5;
////        soldado1.armor = 1;
////        soldado1.accuracy = 0.5f;
//
//        Soldier * soldado2 = [[Soldier alloc]
//                  initWithName:@"Mark" life:80 damage:10 armor:2 accuracy:0.5f];
//
////        soldado2.name = @"Mark";
////        soldado2.life = 80;
////        soldado2.damage = 10;
////        soldado2.armor = 2;
////        soldado2.accuracy = 0.5f;
//
//        [soldiers addObject:soldado1];
//        [soldiers addObject:soldado2];
        
        while(soldiers.count > 1)
        {
            int randomAttacker = arc4random_uniform((uint32)soldiers.count);
            Soldier *attacker = soldiers[randomAttacker];
            
            int randomDefender = arc4random_uniform((uint32)soldiers.count);
            Soldier *defender = soldiers[randomDefender];
            
            if(randomAttacker != randomDefender)
            {
                [attacker attack:defender];
//                if (defender.life > 0)
//                {
//                    [defender attack:attacker]
//                }
                if(defender.life == 0)
                {
                    // Cuidado. Puede hacerse pero tiene que hacer la búsqueda en el array. Es más eficiente borrar con el index diréctamente.
                    [soldiers removeObject:defender];
                }
            }
        }
        
        Soldier *winner = soldiers[0];
        NSLog(@"¡¡¡%@ ha ganado!!!", winner.name);
        
    }
    return 0;
}
