//
//  Pessoa.m
//  4SIS.IOS.CalculadoraIMC
//
//  Created by Usuário Convidado on 26/03/2018.
//  Copyright © 2018 Victor Rodrigues. All rights reserved.
//

#import "Pessoa.h"

@implementation Pessoa

-(void) calcularIMC{
    self.imc = self.peso / pow(self.altura, 2);
}

-(float) calcularIMC2{
    return self.peso / (self.altura * self.altura);
}

@end
