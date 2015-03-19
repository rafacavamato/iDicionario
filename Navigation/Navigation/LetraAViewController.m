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

-(void) viewDidLoad {
    int contador = 0;
    [super viewDidLoad];
    
    Singleton *s =[Singleton sharedInstance];
     NSMutableArray * array = [s geral];
    
    [s test];
    
   
    
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
    
    UIButton *botao = [UIButton buttonWithType:UIButtonTypeSystem];
    [botao setTitle:@"test" forState:UIControlStateNormal];
    [botao sizeToFit];
    botao.center = self.view.center;
    
    [self.view addSubview:botao];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(50, 100, 200, 100)];
    
    [label setText:[array objectAtIndex:contador]];
    label.center = self.view.center;
    [self.view addSubview:label];
    //botao back
    self.navigationItem.backBarButtonItem  = [[UIBarButtonItem alloc] initWithTitle:@"back" style:UIBarButtonItemStylePlain target:self action:@selector(back:)];
}
-(void)next:(id)sender {
    LetraAViewController *proximo = [[LetraAViewController alloc]
                                              initWithNibName:nil
                                            bundle:NULL];
    [self.navigationController pushViewController:proximo
                                         animated:YES];
    _contador++;
    
}
-(void)back:(id)sender {
    LetraAViewController *proximo = [[LetraAViewController alloc]
                                     initWithNibName:nil
                                     bundle:NULL];
    [self.navigationController pushViewController:proximo
                                         animated:YES];
    _contador--;
    
}



@end
