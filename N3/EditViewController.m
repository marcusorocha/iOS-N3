//
//  EditViewController.m
//  N3
//
//  Created by Marcus Rocha on 04/10/15.
//  Copyright © 2015 Gielez Feldhaus Goulart. All rights reserved.
//

#import "EditViewController.h"

@implementation EditViewController

@synthesize store;
@synthesize referencia;
@synthesize indice;

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (NSSize)preferredContentSize
{
    CGFloat w = self.view.frame.size.width;
    CGFloat h = self.view.frame.size.height;
    
    return NSMakeSize(w, h);
}

- (void) close
{
    [self dismissController:self];
}

- (IBAction)cancelEdit:(id)sender
{
    [self close];
}

- (IBAction)saveEdit:(id)sender
{
    if (indice == -1)
        [store incluirReferencia:referencia];
    else
        [store alterarReferencia:referencia atIndice:indice];
    
    [self close];
}

@end
