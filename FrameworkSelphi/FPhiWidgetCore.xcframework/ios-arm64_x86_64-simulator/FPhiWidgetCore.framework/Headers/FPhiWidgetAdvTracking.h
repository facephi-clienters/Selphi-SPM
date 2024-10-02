//
//  FPhiWidgetAdvTracking.h
//  FPhiWidgetCore
//

#ifndef FPhiWidgetAdvTracking_h
#define FPhiWidgetAdvTracking_h

#import <FPBExtractoriOS/FPBExtractoriOS.h>

@interface FPhiWidgetAdvTracking : NSObject

-(id)init;

-(NSString *)toString;

-(void)addToConfiguration:(NSString *)name :(NSObject *)obj;

-(void)beginPhase:(NSString *)name :(NSDate *)date;
-(void)endPhase:(NSDate *)date;

-(void)addEventFaceFrameCaptured:(NSDate *)date :(FPBExtractionResult *)er :(BOOL)framed :(int)duration;
-(void)addEventTimeout:(NSDate *)date :(NSString *)message;
-(void)addEventError:(NSDate *)date :(NSString *)type :(NSString *)message;
-(void)addEventClick:(NSDate *)date :(NSString *)element;
-(void)addEventSwipe:(NSDate *)date :(NSString *)direction;

@end

#endif /* FPhiWidgetAdvTracking_h */
