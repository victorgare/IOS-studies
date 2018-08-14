//
//  Enfermeira.h
//  4SIS.IOS.EnfermeiraModel
//
//  Created by Usuário Convidado on 12/03/2018.
//  Copyright © 2018 Victor Rodrigues. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Enfermeira : NSObject
@property(nonatomic, retain)NSString *nome;
@property(nonatomic)int coren;
@property(nonatomic)float salario;
@property(nonatomic)bool plantao;

-(void) medicarCom:(NSString *)nomeMedicamento eQuantidade:(float)quantidadeMedicamento;
-(NSString *)verificaFebreComTemperatura:(float)temperatura;

-(Enfermeira *)initWithNome:(NSString *)_nome andCoren:(int)_coren andSalario:(float)_salario andPlanta:(bool) _plantao;

@end
