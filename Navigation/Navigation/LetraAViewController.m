//
//  LetraAViewController.m
//  Navigation
//
//  Created by Vinicius Miana on 2/23/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraAViewController.h"
#import "LetraBViewController.h"

@implementation LetraAViewController

static LetraAViewController *SINGLETON = nil;
static bool isFirstAccess = YES;

+ (id)sharedInstance
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        isFirstAccess = NO;
        SINGLETON = [[super allocWithZone:NULL] init];
    });
    
    return SINGLETON;
}
int contarLetra = 0;
-(void) viewDidLoad {
    [super viewDidLoad];
    
    
    switch(contarLetra) {
        case 0:
            self.title = @"A";
            break;
        case 1:
            self.title = @"B";
            break;
        case 2:
            self.title = @"C";
            break;
        case 3:
            self.title = @"D";
            break;
        case 4:
            self.title = @"E";
            break;
        case 5:
            self.title = @"F";
            break;
        case 6:
            self.title = @"G";
            break;
        case 7:
            self.title = @"H";
            break;
        case 8:
            self.title = @"I";
            break;
        case 9:
            self.title = @"J";
            break;
        case 10:
            self.title = @"K";
            break;
        case 11:
            self.title = @"L";
            break;
        case 12:
            self.title = @"M";
            break;
        case 13:
            self.title = @"N";
            break;
        case 14:
            self.title = @"O";
            break;
        case 15:
            self.title = @"P";
            break;
        case 16:
            self.title = @"Q";
            break;
        case 17:
            self.title = @"R";
            break;
        case 18:
            self.title = @"S";
            break;
        case 19:
            self.title = @"T";
            break;
        case 20:
            self.title = @"U";
            break;
        case 21:
            self.title = @"V";
            break;
        case 22:
            self.title = @"X";
            break;
        case 23:
            self.title = @"Z";
            break;
        default:;
            // do something by default;
    }
    
    contarLetra++;
    
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
    
    UIButton *botao = [UIButton
                                        buttonWithType:UIButtonTypeSystem];
    [botao
     setTitle:@"Mostre uma palavra, uma figura e leia a palavra ao apertar um botao"
     forState:UIControlStateNormal];
    [botao sizeToFit];
    botao.center = self.view.center;
    
    [self.view addSubview:botao];
    
    UILabel *letra = [[UILabel alloc]init];
    
    [letra setText:@"test"];
    
 
}

//-(void)viewWillDisappear:(BOOL)animated{
//    contarLetra--;
//}
-(void)next:(id)sender {
     if (contarLetra == 24){
         [self.navigationController popToRootViewControllerAnimated:TRUE];
     }
     else {
    LetraAViewController *proximo = [[LetraAViewController alloc]
                                              initWithNibName:nil
                                            bundle:NULL];
    [self.navigationController pushViewController:proximo
                                         animated:YES];        
    }
}




@end
