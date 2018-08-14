//
//  Enfermeira.m
//  4SIS.IOS.EnfermeiraModel
//
//  Created by Usuário Convidado on 12/03/2018.
//  Copyright © 2018 Victor Rodrigues. All rights reserved.
//

#import "Enfermeira.h"

@implementation Enfermeira

-(void) medicarCom:(NSString *)nomeMedicamento eQuantidade:(float)quantidadeMedicamento{
    NSLog(@"A enfermeira %@ medicou %0.2f (quantidade) de %@", [self nome], quantidadeMedicamento, nomeMedicamento);
}

-(NSString *)verificaFebreComTemperatura:(float)temperatura{
    NSString *descricaoTemperatura;
    if(temperatura <= 20){
        descricaoTemperatura =@"Morto";
    }else if(temperatura <= 36){
        descricaoTemperatura = @"Normal";
    }else {
        descricaoTemperatura = @"Febre";
    }
    
    return descricaoTemperatura;
}

-(Enfermeira *)initWithNome:(NSString *)_nome andCoren:(int)_coren andSalario:(float)_salario andPlanta:(bool) _plantao{
    self = [super init];
    
    if(self){
        self.nome = _nome;
        self.coren = _coren;
        self.salario = _salario;
        self.plantao = _plantao;
    }
    
    return self;
}

@end
