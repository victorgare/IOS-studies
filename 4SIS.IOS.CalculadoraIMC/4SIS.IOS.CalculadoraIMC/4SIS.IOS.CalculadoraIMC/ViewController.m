//
//  ViewController.m
//  4SIS.IOS.CalculadoraIMC
//
//  Created by Usuário Convidado on 26/03/2018.
//  Copyright © 2018 Victor Rodrigues. All rights reserved.
//

#import "ViewController.h"
#import "Entities/Pessoa.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)btnCalcular:(id)sender {
    Pessoa *p = [[Pessoa alloc]init];
    p.peso = self.txtPeso.text.floatValue;
    p.altura = self.txtAltura.text.floatValue;
    p.nome = self.txtAtleta.text;
    
    [p calcularIMC];
    
    [[self txtImc] setText:[NSString stringWithFormat:@"%0.2f", p.imc]];
    [[self txtImc2] setText:[NSString stringWithFormat:@"%0.2f", [p calcularIMC2]]];
}
@end
