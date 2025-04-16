//
//  KIFUITestActor+EXAdditions.h
//  SampleiOSApp
//
//  Created by Girish Chauhan on 07/04/25.
//  Copyright © 2025 Girish. All rights reserved.
//

#ifndef KIFUITestActor_EXAdditions_h
#define KIFUITestActor_EXAdditions_h
#import <KIF/KIF.h>

@interface KIFUITestActor (EXAdditions)

- (void)navigateToLoginPage;
- (void)returnToLoggedOutHomeScreen;

@end

#endif /* KIFUITestActor_EXAdditions_h */
