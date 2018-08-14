//
//  Pokemon.h
//  4SIS.IOS.PokemonModel
//
//  Created by Usuário Convidado on 19/03/2018.
//  Copyright © 2018 VictorRodrigues. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pokemon : NSObject

@property(nonatomic,retain)NSString *nome;
@property(nonatomic)int cp;
@property(nonatomic,retain)NSString *tipo;

-(Pokemon *)initWithNome:(NSString*)_nome eTipo:(NSString*)_tipo eCp:(int)_cp;
-(void)AtacarComNomeDoPokemonInimigo:(NSString*)nomePokemonInimigo eCpDoPokemonInimigo:(int)cpDoPokemonInimigo;

@end
