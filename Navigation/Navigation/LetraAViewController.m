//
//  LetraAViewController.m
//  Navigation
//
//  Created by Vinicius Miana on 2/23/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraAViewController.h"
#import "LetraBViewController.h"
#import "Singleton.h"

@implementation LetraAViewController
int contador = 0;
-(void) viewDidLoad {
    
    [super viewDidLoad];
    
   Singleton *s =[Singleton getInstance];

    
   
    
   //self.navigationItem.title = letra;
    
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
    
    UIButton *botao = [UIButton buttonWithType:UIButtonTypeSystem];
    [botao setTitle:@"test" forState:UIControlStateNormal];
    [botao sizeToFit];
    botao.center = self.view.center;
    
    [self.view addSubview:botao];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(50, 100, 200, 100)];
    NSString *testerino = [[s.geral objectAtIndex:contador]palavra];
    [label setText:testerino];
    label.center = self.view.center;
    [self.view addSubview:label];
    //botao back
    self.navigationItem.backBarButtonItem  = [[UIBarButtonItem alloc] initWithTitle:@"back" style:UIBarButtonItemStylePlain target:self action:@selector(back:)];
    
    if (contador == 23) {
        contador = -1;
    }
    
    
}
-(void)next:(id)sender {
    LetraAViewController *proximo = [[LetraAViewController alloc]
                                              initWithNibName:nil
                                            bundle:NULL];
    [self.navigationController pushViewController:proximo
                                         animated:YES];
    contador++;
    
    NSLog(@"%d",contador);
    
}
-(void)back:(id)sender {
    LetraAViewController *proximo = [[LetraAViewController alloc]
                                     initWithNibName:nil
                                     bundle:NULL];
    [self.navigationController pushViewController:proximo
                                         animated:YES];
    contador--;
    
}



@end
