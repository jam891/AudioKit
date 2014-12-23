//
//  AKDCBlock.m
//  AudioKit
//
//  Auto-generated on 12/23/14.
//  Copyright (c) 2014 Aurelius Prochazka. All rights reserved.
//
//  Implementation of Csound's dcblock:
//  http://www.csounds.com/manual/html/dcblock.html
//

#import "AKDCBlock.h"
#import "AKManager.h"

@implementation AKDCBlock
{
    AKParameter * _audioSource;
}

- (instancetype)initWithAudioSource:(AKParameter *)audioSource
                               gain:(AKConstant *)gain
{
    self = [super initWithString:[self operationName]];
    if (self) {
        _audioSource = audioSource;
        _gain = gain;
    }
    return self;
}

- (instancetype)initWithAudioSource:(AKParameter *)audioSource
{
    self = [super initWithString:[self operationName]];
    if (self) {
        _audioSource = audioSource;
        // Default Values
        _gain = akp(0.99);    
    }
    return self;
}

+ (instancetype)audioWithAudioSource:(AKParameter *)audioSource
{
    return [[AKDCBlock alloc] initWithAudioSource:audioSource];
}

- (void)setOptionalGain:(AKConstant *)gain {
    _gain = gain;
}

- (NSString *)stringForCSD {
    return [NSString stringWithFormat:
            @"%@ dcblock AKAudio(%@), %@",
            self,
            _audioSource,
            _gain];
}

@end
