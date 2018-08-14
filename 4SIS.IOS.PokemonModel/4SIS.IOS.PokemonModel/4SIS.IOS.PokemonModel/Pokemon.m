//
//  Pokemon.m
//  4SIS.IOS.PokemonModel
//
//  Created by Usuário Convidado on 19/03/2018.
//  Copyright © 2018 VictorRodrigues. All rights reserved.
//

#import "Pokemon.h"

@implementation Pokemon

-(Pokemon *)initWithNome:(NSString*)_nome eTipo:(NSString*)_tipo eCp:(int)_cp{
    self = [super init];
    
    if (self) {
        self.nome = _nome;
        self.tipo = _tipo;
        self.cp = _cp;
    }
    
    return self;
}

-(void)AtacarComNomeDoPokemonInimigo:(NSString*)nomePokemonInimigo eCpDoPokemonInimigo:(int)cpDoPokemonInimigo{
    
    NSString *vencedor;
    if(self.cp > cpDoPokemonInimigo){
        vencedor = self.nome;
    }else if(self.cp < cpDoPokemonInimigo){
        vencedor = nomePokemonInimigo;
    }
    
    if(self.cp == cpDoPokemonInimigo){
        NSLog(@"Houve um empate");
    }else{
        NSLog(@"O Pokemon %@ venceu!", vencedor);
    }
}
@end
