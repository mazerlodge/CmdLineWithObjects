//
//  GenericEngine.h
//  CmdLineWithObjects
//
//  Created by mazerlodge on 6/2/18.
//  Copyright © 2018 mazerlodge. All rights reserved.
//

#ifndef GenericEngine_h
#define GenericEngine_h

#import <Foundation/Foundation.h>
#import "RandomEngine.h"

@interface GenericEngine : NSObject {
    
    NSString *helloMsg;
    RandomEngine *randomEngine;
    
}


- (int) goWithParamsArray: (NSArray *) paramsArray;
- (int) memberMethodExample: (int) parameterExample;

@end

#endif /* GenericEngine_h */
