//
//  SGBundleVersion.m
//  SGLibrary
//
//  Created by Daniel Loughney on 11/2/14.
//  Copyright (c) 2014 SpookyGroup. All rights reserved.
//

#import "SGBundleVersion.h"

@implementation SGBundleVersion

+ (void) bundleVersion {
#   ifdef DEBUG
    NSString *ifdefDEBUG = @" DEBUG";
#   else
    NSString *ifdefDEBUG = @"";
#   endif
    
    NSUserDefaults *standardUserDefaults = [NSUserDefaults standardUserDefaults];
    NSString *versionLabel = [NSString stringWithFormat:@"%@ (%@)%@",
                              [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"],
                              [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"],
                              ifdefDEBUG];
    
    [standardUserDefaults setObject:versionLabel forKey:@"version_string"];
}
@end
