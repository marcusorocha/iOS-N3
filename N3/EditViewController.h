//
//  EditViewController.h
//  N3
//
//  Created by Marcus Rocha on 04/10/15.
//  Copyright © 2015 Gielez Feldhaus Goulart. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ListViewController.h"
#import "Referencia.h"

@interface EditViewController : NSViewController


@property (retain) id <ReferenciasStore> store;
@property (strong) Referencia *referencia;
@property (assign) NSInteger indice;

- (IBAction)cancelEdit:(id)sender;
- (IBAction)saveEdit:(id)sender;

@end
