//
//  AppDelegate.m
//  N3
//
//  Created by Gielez Feldhaus Goulart on 9/22/15.
//  Copyright (c) 2015 Gielez Feldhaus Goulart. All rights reserved.
//

#import "AppDelegate.h"

#include "Referencia.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    
    Referencia *r = [[Referencia alloc] init];
    
    r.autor = [NSString stringWithFormat:@"Gielez"];
    r.ano = [NSNumber numberWithInt:2010];
    
    NSLog(@" %@ ", r);
}

- (void)applicationWillTerminate:(NSNotification *)aNotification
{
    // Insert code here to tear down your application
}

@end
