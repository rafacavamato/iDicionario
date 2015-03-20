//
//  Singleton.m
//  Navigation
//
//  Created by Rafael Cavalcante Ferreira Santos Matos on 3/17/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import "Singleton.h"
#import "Objetos.h"

@implementation Singleton
@synthesize geral;

-(id)init {

    Objetos * pA = [[Objetos alloc] initWithPalavra:@"Abacaxi" image:[UIImage imageNamed:@"abacaxi"]];
    Objetos * pB = [[Objetos alloc] initWithPalavra:@"Bola" image:[UIImage imageNamed:@"bola"]];
    Objetos * pC = [[Objetos alloc] initWithPalavra:@"Cabrito" image:[UIImage imageNamed:@"cabrito"]];
    Objetos * pD = [[Objetos alloc] initWithPalavra:@"Dado" image:[UIImage imageNamed:@"dado"]];
    Objetos * pE = [[Objetos alloc] initWithPalavra:@"Elefante" image:[UIImage imageNamed:@"elefante"]];
    Objetos * pF = [[Objetos alloc] initWithPalavra:@"Faca" image:[UIImage imageNamed:@"faca"]];
    Objetos * pG = [[Objetos alloc] initWithPalavra:@"Garrafa" image:[UIImage imageNamed:@"garrafa"]];
    Objetos * pH = [[Objetos alloc] initWithPalavra:@"Helicoptero" image:[UIImage imageNamed:@"helicoptero"]];
    Objetos * pI = [[Objetos alloc] initWithPalavra:@"Igreja" image:[UIImage imageNamed:@"igreja"]];
    Objetos * pJ = [[Objetos alloc] initWithPalavra:@"Jaca" image:[UIImage imageNamed:@"jaca"]];
    Objetos * pK = [[Objetos alloc] initWithPalavra:@"Kiwi" image:[UIImage imageNamed:@"kiwi"]];
    Objetos * pL = [[Objetos alloc] initWithPalavra:@"Limao" image:[UIImage imageNamed:@"limao"]];
    Objetos * pM = [[Objetos alloc] initWithPalavra:@"Macaco" image:[UIImage imageNamed:@"macaco"]];
    Objetos * pN = [[Objetos alloc] initWithPalavra:@"Navio" image:[UIImage imageNamed:@"navio"]];
    Objetos * pO = [[Objetos alloc] initWithPalavra:@"Ovo" image:[UIImage imageNamed:@"ovo"]];
    Objetos * pP = [[Objetos alloc] initWithPalavra:@"Parque" image:[UIImage imageNamed:@"parque"]];
    Objetos * pQ = [[Objetos alloc] initWithPalavra:@"Queijo" image:[UIImage imageNamed:@"queijo"]];
    Objetos * pR = [[Objetos alloc] initWithPalavra:@"Rato" image:[UIImage imageNamed:@"rato"]];
    Objetos * pS = [[Objetos alloc] initWithPalavra:@"Sapato" image:[UIImage imageNamed:@"sapato"]];
    Objetos * pT = [[Objetos alloc] initWithPalavra:@"Tatu" image:[UIImage imageNamed:@"tatu"]];
    Objetos * pU = [[Objetos alloc] initWithPalavra:@"Urso" image:[UIImage imageNamed:@"urso"]];
    Objetos * pV = [[Objetos alloc] initWithPalavra:@"Vaca" image:[UIImage imageNamed:@"vaca"]];
    Objetos * pX = [[Objetos alloc] initWithPalavra:@"Xicara" image:[UIImage imageNamed:@"xicara"]];
    Objetos * pZ = [[Objetos alloc] initWithPalavra:@"Zebra" image:[UIImage imageNamed:@"zebra"]];
                   
                    
    self = [super init];

                    
    if (self) {
        geral = [[NSMutableArray alloc]init];
        [geral addObject:pA];
        [geral addObject:pB];
        [geral addObject:pC];
        [geral addObject:pD];
        [geral addObject:pE];
        [geral addObject:pF];
        [geral addObject:pG];
        [geral addObject:pH];
        [geral addObject:pI];
        [geral addObject:pJ];
        [geral addObject:pK];
        [geral addObject:pL];
        [geral addObject:pM];
        [geral addObject:pN];
        [geral addObject:pO];
        [geral addObject:pP];
        [geral addObject:pQ];
        [geral addObject:pR];
        [geral addObject:pS];
        [geral addObject:pT];
        [geral addObject:pU];
        [geral addObject:pV];
        [geral addObject:pX];
        [geral addObject:pZ];
    }
    return self;
}
+(id)getInstance{
    static Singleton *instance = nil;
    
    if (instance == nil) {
        instance = [[Singleton alloc]init];
    }
    return instance;
}
@end

