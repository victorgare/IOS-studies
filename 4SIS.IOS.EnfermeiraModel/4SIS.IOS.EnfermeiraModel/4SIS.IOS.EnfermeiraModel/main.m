//
//  main.m
//  4SIS.IOS.EnfermeiraModel
//
//  Created by Usuário Convidado on 12/03/2018.
//  Copyright © 2018 Victor Rodrigues. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Enfermeira.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Enfermeira *e = [[Enfermeira alloc]init];
        
        //preenche o objeto
        e.nome = @"Ana";
        e.coren = 123456;
        e.salario = 4000;
        e.plantao = true;
        
        [e medicarCom:@"Teste" eQuantidade:1.23];
        
        NSString *descricaoTemperatura = [e verificaFebreComTemperatura:35.6];
        
        NSLog(@"%@", descricaoTemperatura);
        
        //objeto instanciado usando o novo construtor
        Enfermeira *e2 = [[Enfermeira alloc] initWithNome:@"Abigail" andCoren:554 andSalario:1200 andPlanta:false];
        
        [e2 medicarCom:@"Teste2" eQuantidade:1.234];
        
        NSString *descricaoTemperatura2 = [e2 verificaFebreComTemperatura:32.6];
        
        NSLog(@"%@", descricaoTemperatura2);
        
        
    }
    return 0;
}
