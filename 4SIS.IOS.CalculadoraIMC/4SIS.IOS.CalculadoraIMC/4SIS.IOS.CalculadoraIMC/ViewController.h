//
//  ViewController.h
//  4SIS.IOS.CalculadoraIMC
//
//  Created by Usuário Convidado on 26/03/2018.
//  Copyright © 2018 Victor Rodrigues. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *txtAtleta;
@property (weak, nonatomic) IBOutlet UITextField *txtPeso;
@property (weak, nonatomic) IBOutlet UITextField *txtAltura;
@property (weak, nonatomic) IBOutlet UITextField *txtImc;
@property (weak, nonatomic) IBOutlet UITextField *txtImc2;

- (IBAction)btnCalcular:(id)sender;
@end

