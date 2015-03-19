//
//  Singleton.m
//  Navigation
//
//  Created by Rafael Cavalcante Ferreira Santos Matos on 3/17/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton
@synthesize letra,palavra,foto,geral;
static Singleton *SINGLETON = nil;

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

-(NSMutableArray*)test{
    
    Objetos *objeto1 = [[Objetos alloc]init];
    letra = [[NSArray alloc]initWithObjects:@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",@"I",@"J",@"K",@"L",@"M",@"N",@"O",@"P",@"Q",@"R",@"S",@"T",@"U",@"V",@"X",@"Z",nil];
//    foto = [[NSArray alloc]initWithObjects:[UIImage imageNamed:@"a"],[UIImage imageNamed:@"b"],[UIImage imageNamed:@"c"],[UIImage imageNamed:@"d"],[UIImage imageNamed:@"e"],[UIImage imageNamed:@"f"],[UIImage imageNamed:@"g"],[UIImage imageNamed:@"h"],[UIImage imageNamed:@"i"],[UIImage imageNamed:@"j"],[UIImage imageNamed:@"k"],[UIImage imageNamed:@"l"],[UIImage imageNamed:@"m"],[UIImage imageNamed:@"n"],[UIImage imageNamed:@"o"],[UIImage imageNamed:@"p"],[UIImage imageNamed:@"q"],[UIImage imageNamed:@"r"],[UIImage imageNamed:@"s"],[UIImage imageNamed:@"t"],[UIImage imageNamed:@"u"],[UIImage imageNamed:@"v"],[UIImage imageNamed:@"x"],[UIImage imageNamed:@"z"],nil];
    palavra = [[NSArray alloc]initWithObjects:@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",@"I",@"J",@"K",@"L",@"M",@"N",@"O",@"P",@"Q",@"R",@"S",@"T",@"U",@"V",@"X",@"Z",nil] ;
    geral = [[NSMutableArray alloc]init];
    
    
    for (int i = 0; i<[letra count]; i++){
        
        objeto1.palavra = palavra[i];
        objeto1.letra = letra[i];
//        objeto1.foto = foto[i];
        [geral addObject:objeto1];
    }
    return geral;
}
@end
