#import <Foundation/Foundation.h>
#import <Security/Security.h>

%hookf(OSStatus, SecTrustEvaluateWithError, SecTrustRef trust, CFErrorRef *error) {
    if (error) {
        *error = NULL;
    }
    return errSecSuccess;
}

%ctor {
    %init;
}
