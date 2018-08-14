//
//  ViewController.m
//  Meus Dados
//
//  Created by Usuário Convidado on 05/02/2018.
//  Copyright © 2018 Victor Rodrigues. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // enquanto o APP carrega, execute os códigos abaixo
    self.labelNome.text = @"Meu nome é: ";
    self.labelCidade.text = @"Minha cidade é: ";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//evento de click do botao
- (IBAction)btnExibir:(id)sender {
    
    //quando o botao for clicado, alterar os labels apra os valores abaixo
    self.labelNome.text = @"Victor";
    self.labelCidade.text = @"São Paulo";
}
@end
