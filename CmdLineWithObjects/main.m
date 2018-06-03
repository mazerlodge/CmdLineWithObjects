//
//  main.m
//  CmdLineWithObjects
//
//  Created by mazerlodge on 6/2/18.
//  Copyright © 2018 mazerlodge. All rights reserved.
//
//

#import <Foundation/Foundation.h>
#import "GenericEngine.h"

int main(int argc, const char * argv[]) {
    
    int rval = 0;
    
    @autoreleasepool {
        
        // Entry point.
        GenericEngine *theEngine = [[GenericEngine alloc] init];
        
        // Copy params in argv into an NSArray object
        NSMutableArray *paramsArray = [[NSMutableArray alloc] initWithCapacity:argc];
        for (int x=0; x<argc; x++) {
            NSString *aParam = [[NSString alloc] initWithCString:argv[x] encoding:NSASCIIStringEncoding];
            [paramsArray addObject:aParam];
        }
        
        rval = [theEngine goWithParamsArray:paramsArray];
    
    }
    
    return rval;
}
