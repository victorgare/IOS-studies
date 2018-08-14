//
//  main.m
//  4SIS.IOS.PokemonModel
//
//  Created by Usuário Convidado on 19/03/2018.
//  Copyright © 2018 VictorRodrigues. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pokemon.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Pokemon *p = [[Pokemon alloc] init];
        p.nome = @"Pikachu";
        p.tipo = @"Elétrico";
        p.cp = 1550;
        
        NSLog(@"O Pokemon %@ é do tipo %@ e tem cp %d", p.nome, p.tipo, p.cp);
        
        Pokemon *p2 = [[Pokemon alloc] initWithNome:@"Squirtle" eTipo:@"Aquático" eCp:1540];
        
         NSLog(@"O Pokemon %@ é do tipo %@ e tem cp %d", p2.nome, p2.tipo, p2.cp);
        
        [p AtacarComNomeDoPokemonInimigo:p2.nome eCpDoPokemonInimigo:p2.cp];
    }
    return 0;
}
