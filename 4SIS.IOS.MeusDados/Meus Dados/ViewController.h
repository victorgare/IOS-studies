//
//  ViewController.h
//  Meus Dados
//
//  Created by Usuário Convidado on 05/02/2018.
//  Copyright © 2018 Victor Rodrigues. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *labelNome;
@property (weak, nonatomic) IBOutlet UILabel *labelCidade;

- (IBAction)btnExibir:(id)sender;

@end

