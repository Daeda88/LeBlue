
#include "Event.h"
#include "EventSource.h"
#include "EventType.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "LeCharacteristicListener.h"
#include "LeCharacteristicWriteListener.h"
#include "LeDeviceListener.h"
#include "LeDeviceMock.h"
#include "LeEventType.h"
#include "LeFormat.h"
#include "LeGattCharacteristic.h"
#include "LeGattCharacteristicMock.h"
#include "LeGattServiceMock.h"
#include "LeGattStatus.h"
#include "LeRemoteDeviceListener.h"
#include "LeRemoteDeviceMock.h"
#include "LeScanRecord.h"
#include "LeSessionController.h"
#include "LeUtil.h"
#include "MockedResponse.h"
#include "Mocker.h"
#include "Session.h"
#include "java/io/PrintStream.h"
#include "java/lang/Boolean.h"
#include "java/lang/Enum.h"
#include "java/lang/Exception.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/InterruptedException.h"
#include "java/lang/NumberFormatException.h"
#include "java/lang/Runnable.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/System.h"
#include "java/lang/Thread.h"
#include "java/util/ArrayList.h"
#include "java/util/Arrays.h"
#include "java/util/Collections.h"
#include "java/util/HashMap.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/UUID.h"
#include "java/util/concurrent/TimeUnit.h"
#include "java/util/concurrent/locks/Condition.h"
#include "java/util/concurrent/locks/ReentrantLock.h"

@interface LeSessionController () {
 @public
  NSString *point_;
}

@end

J2OBJC_FIELD_SETTER(LeSessionController, point_, NSString *)

@interface LeSessionController_RunnableWrapper : NSObject < JavaLangRunnable > {
 @public
  LeSessionController *this$0_;
  id<JavaLangRunnable> runnable_;
  jboolean started_;
}

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                       withJavaLangRunnable:(id<JavaLangRunnable>)runnable;

- (void)run;

@end

J2OBJC_EMPTY_STATIC_INIT(LeSessionController_RunnableWrapper)

J2OBJC_FIELD_SETTER(LeSessionController_RunnableWrapper, this$0_, LeSessionController *)
J2OBJC_FIELD_SETTER(LeSessionController_RunnableWrapper, runnable_, id<JavaLangRunnable>)

__attribute__((unused)) static void LeSessionController_RunnableWrapper_initWithLeSessionController_withJavaLangRunnable_(LeSessionController_RunnableWrapper *self, LeSessionController *outer$, id<JavaLangRunnable> runnable);

__attribute__((unused)) static LeSessionController_RunnableWrapper *new_LeSessionController_RunnableWrapper_initWithLeSessionController_withJavaLangRunnable_(LeSessionController *outer$, id<JavaLangRunnable> runnable) NS_RETURNS_RETAINED;

__attribute__((unused)) static LeSessionController_RunnableWrapper *create_LeSessionController_RunnableWrapper_initWithLeSessionController_withJavaLangRunnable_(LeSessionController *outer$, id<JavaLangRunnable> runnable);

J2OBJC_TYPE_LITERAL_HEADER(LeSessionController_RunnableWrapper)

__attribute__((unused)) static void LeSessionController_SourceType_initWithNSString_withInt_(LeSessionController_SourceType *self, NSString *__name, jint __ordinal);

@interface LeSessionController_$1 : NSObject < JavaLangRunnable > {
 @public
  LeSessionController *this$0_;
}

- (void)run;

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(LeSessionController_$1)

J2OBJC_FIELD_SETTER(LeSessionController_$1, this$0_, LeSessionController *)

__attribute__((unused)) static void LeSessionController_$1_initWithLeSessionController_(LeSessionController_$1 *self, LeSessionController *outer$);

__attribute__((unused)) static LeSessionController_$1 *new_LeSessionController_$1_initWithLeSessionController_(LeSessionController *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static LeSessionController_$1 *create_LeSessionController_$1_initWithLeSessionController_(LeSessionController *outer$);

@interface LeSessionController_$2 : NSObject < JavaLangRunnable > {
 @public
  LeSessionController *this$0_;
  Event *val$event_;
}

- (void)run;

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(LeSessionController_$2)

J2OBJC_FIELD_SETTER(LeSessionController_$2, this$0_, LeSessionController *)
J2OBJC_FIELD_SETTER(LeSessionController_$2, val$event_, Event *)

__attribute__((unused)) static void LeSessionController_$2_initWithLeSessionController_withEvent_(LeSessionController_$2 *self, LeSessionController *outer$, Event *capture$0);

__attribute__((unused)) static LeSessionController_$2 *new_LeSessionController_$2_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static LeSessionController_$2 *create_LeSessionController_$2_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0);

@interface LeSessionController_$3 : NSObject < JavaLangRunnable > {
 @public
  LeSessionController *this$0_;
  Event *val$event_;
}

- (void)run;

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(LeSessionController_$3)

J2OBJC_FIELD_SETTER(LeSessionController_$3, this$0_, LeSessionController *)
J2OBJC_FIELD_SETTER(LeSessionController_$3, val$event_, Event *)

__attribute__((unused)) static void LeSessionController_$3_initWithLeSessionController_withEvent_(LeSessionController_$3 *self, LeSessionController *outer$, Event *capture$0);

__attribute__((unused)) static LeSessionController_$3 *new_LeSessionController_$3_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static LeSessionController_$3 *create_LeSessionController_$3_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0);

@interface LeSessionController_$4 : NSObject < JavaLangRunnable > {
 @public
  LeSessionController *this$0_;
  id<LeRemoteDeviceListener> val$listener_;
  Event *val$event_;
}

- (void)run;

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                 withLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)capture$0
                                  withEvent:(Event *)capture$1;

@end

J2OBJC_EMPTY_STATIC_INIT(LeSessionController_$4)

J2OBJC_FIELD_SETTER(LeSessionController_$4, this$0_, LeSessionController *)
J2OBJC_FIELD_SETTER(LeSessionController_$4, val$listener_, id<LeRemoteDeviceListener>)
J2OBJC_FIELD_SETTER(LeSessionController_$4, val$event_, Event *)

__attribute__((unused)) static void LeSessionController_$4_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(LeSessionController_$4 *self, LeSessionController *outer$, id<LeRemoteDeviceListener> capture$0, Event *capture$1);

__attribute__((unused)) static LeSessionController_$4 *new_LeSessionController_$4_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(LeSessionController *outer$, id<LeRemoteDeviceListener> capture$0, Event *capture$1) NS_RETURNS_RETAINED;

__attribute__((unused)) static LeSessionController_$4 *create_LeSessionController_$4_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(LeSessionController *outer$, id<LeRemoteDeviceListener> capture$0, Event *capture$1);

@interface LeSessionController_$5 : NSObject < JavaLangRunnable > {
 @public
  LeSessionController *this$0_;
  Event *val$event_;
}

- (void)run;

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(LeSessionController_$5)

J2OBJC_FIELD_SETTER(LeSessionController_$5, this$0_, LeSessionController *)
J2OBJC_FIELD_SETTER(LeSessionController_$5, val$event_, Event *)

__attribute__((unused)) static void LeSessionController_$5_initWithLeSessionController_withEvent_(LeSessionController_$5 *self, LeSessionController *outer$, Event *capture$0);

__attribute__((unused)) static LeSessionController_$5 *new_LeSessionController_$5_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static LeSessionController_$5 *create_LeSessionController_$5_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0);

@interface LeSessionController_$6 : NSObject < JavaLangRunnable > {
 @public
  LeSessionController *this$0_;
  id<LeRemoteDeviceListener> val$listener_;
  Event *val$event_;
}

- (void)run;

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                 withLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)capture$0
                                  withEvent:(Event *)capture$1;

@end

J2OBJC_EMPTY_STATIC_INIT(LeSessionController_$6)

J2OBJC_FIELD_SETTER(LeSessionController_$6, this$0_, LeSessionController *)
J2OBJC_FIELD_SETTER(LeSessionController_$6, val$listener_, id<LeRemoteDeviceListener>)
J2OBJC_FIELD_SETTER(LeSessionController_$6, val$event_, Event *)

__attribute__((unused)) static void LeSessionController_$6_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(LeSessionController_$6 *self, LeSessionController *outer$, id<LeRemoteDeviceListener> capture$0, Event *capture$1);

__attribute__((unused)) static LeSessionController_$6 *new_LeSessionController_$6_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(LeSessionController *outer$, id<LeRemoteDeviceListener> capture$0, Event *capture$1) NS_RETURNS_RETAINED;

__attribute__((unused)) static LeSessionController_$6 *create_LeSessionController_$6_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(LeSessionController *outer$, id<LeRemoteDeviceListener> capture$0, Event *capture$1);

@interface LeSessionController_$7 : NSObject < JavaLangRunnable > {
 @public
  LeSessionController *this$0_;
  Event *val$event_;
}

- (void)run;

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(LeSessionController_$7)

J2OBJC_FIELD_SETTER(LeSessionController_$7, this$0_, LeSessionController *)
J2OBJC_FIELD_SETTER(LeSessionController_$7, val$event_, Event *)

__attribute__((unused)) static void LeSessionController_$7_initWithLeSessionController_withEvent_(LeSessionController_$7 *self, LeSessionController *outer$, Event *capture$0);

__attribute__((unused)) static LeSessionController_$7 *new_LeSessionController_$7_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static LeSessionController_$7 *create_LeSessionController_$7_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0);

@interface LeSessionController_$8 : NSObject < JavaLangRunnable > {
 @public
  LeSessionController *this$0_;
  id<LeRemoteDeviceListener> val$listener_;
  Event *val$event_;
}

- (void)run;

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                 withLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)capture$0
                                  withEvent:(Event *)capture$1;

@end

J2OBJC_EMPTY_STATIC_INIT(LeSessionController_$8)

J2OBJC_FIELD_SETTER(LeSessionController_$8, this$0_, LeSessionController *)
J2OBJC_FIELD_SETTER(LeSessionController_$8, val$listener_, id<LeRemoteDeviceListener>)
J2OBJC_FIELD_SETTER(LeSessionController_$8, val$event_, Event *)

__attribute__((unused)) static void LeSessionController_$8_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(LeSessionController_$8 *self, LeSessionController *outer$, id<LeRemoteDeviceListener> capture$0, Event *capture$1);

__attribute__((unused)) static LeSessionController_$8 *new_LeSessionController_$8_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(LeSessionController *outer$, id<LeRemoteDeviceListener> capture$0, Event *capture$1) NS_RETURNS_RETAINED;

__attribute__((unused)) static LeSessionController_$8 *create_LeSessionController_$8_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(LeSessionController *outer$, id<LeRemoteDeviceListener> capture$0, Event *capture$1);

@interface LeSessionController_$9 : NSObject < JavaLangRunnable > {
 @public
  LeSessionController *this$0_;
  Event *val$event_;
}

- (void)run;

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(LeSessionController_$9)

J2OBJC_FIELD_SETTER(LeSessionController_$9, this$0_, LeSessionController *)
J2OBJC_FIELD_SETTER(LeSessionController_$9, val$event_, Event *)

__attribute__((unused)) static void LeSessionController_$9_initWithLeSessionController_withEvent_(LeSessionController_$9 *self, LeSessionController *outer$, Event *capture$0);

__attribute__((unused)) static LeSessionController_$9 *new_LeSessionController_$9_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static LeSessionController_$9 *create_LeSessionController_$9_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0);

@interface LeSessionController_$10 : NSObject < JavaLangRunnable > {
 @public
  LeSessionController *this$0_;
  Event *val$event_;
  id<LeRemoteDeviceListener> val$listener_;
}

- (void)run;

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0
                 withLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)capture$1;

@end

J2OBJC_EMPTY_STATIC_INIT(LeSessionController_$10)

J2OBJC_FIELD_SETTER(LeSessionController_$10, this$0_, LeSessionController *)
J2OBJC_FIELD_SETTER(LeSessionController_$10, val$event_, Event *)
J2OBJC_FIELD_SETTER(LeSessionController_$10, val$listener_, id<LeRemoteDeviceListener>)

__attribute__((unused)) static void LeSessionController_$10_initWithLeSessionController_withEvent_withLeRemoteDeviceListener_(LeSessionController_$10 *self, LeSessionController *outer$, Event *capture$0, id<LeRemoteDeviceListener> capture$1);

__attribute__((unused)) static LeSessionController_$10 *new_LeSessionController_$10_initWithLeSessionController_withEvent_withLeRemoteDeviceListener_(LeSessionController *outer$, Event *capture$0, id<LeRemoteDeviceListener> capture$1) NS_RETURNS_RETAINED;

__attribute__((unused)) static LeSessionController_$10 *create_LeSessionController_$10_initWithLeSessionController_withEvent_withLeRemoteDeviceListener_(LeSessionController *outer$, Event *capture$0, id<LeRemoteDeviceListener> capture$1);

@interface LeSessionController_$11 : NSObject < JavaLangRunnable > {
 @public
  LeSessionController *this$0_;
  Event *val$event_;
}

- (void)run;

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(LeSessionController_$11)

J2OBJC_FIELD_SETTER(LeSessionController_$11, this$0_, LeSessionController *)
J2OBJC_FIELD_SETTER(LeSessionController_$11, val$event_, Event *)

__attribute__((unused)) static void LeSessionController_$11_initWithLeSessionController_withEvent_(LeSessionController_$11 *self, LeSessionController *outer$, Event *capture$0);

__attribute__((unused)) static LeSessionController_$11 *new_LeSessionController_$11_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static LeSessionController_$11 *create_LeSessionController_$11_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0);

@interface LeSessionController_$12 : NSObject < JavaLangRunnable > {
 @public
  LeSessionController *this$0_;
  Event *val$event_;
}

- (void)run;

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(LeSessionController_$12)

J2OBJC_FIELD_SETTER(LeSessionController_$12, this$0_, LeSessionController *)
J2OBJC_FIELD_SETTER(LeSessionController_$12, val$event_, Event *)

__attribute__((unused)) static void LeSessionController_$12_initWithLeSessionController_withEvent_(LeSessionController_$12 *self, LeSessionController *outer$, Event *capture$0);

__attribute__((unused)) static LeSessionController_$12 *new_LeSessionController_$12_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static LeSessionController_$12 *create_LeSessionController_$12_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0);

@interface LeSessionController_$13 : NSObject < JavaLangRunnable > {
 @public
  LeSessionController *this$0_;
  Event *val$event_;
  JavaUtilUUID *val$uuid_;
  id<LeGattCharacteristic> val$characteristic_;
}

- (void)run;

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0
                           withJavaUtilUUID:(JavaUtilUUID *)capture$1
                   withLeGattCharacteristic:(id<LeGattCharacteristic>)capture$2;

@end

J2OBJC_EMPTY_STATIC_INIT(LeSessionController_$13)

J2OBJC_FIELD_SETTER(LeSessionController_$13, this$0_, LeSessionController *)
J2OBJC_FIELD_SETTER(LeSessionController_$13, val$event_, Event *)
J2OBJC_FIELD_SETTER(LeSessionController_$13, val$uuid_, JavaUtilUUID *)
J2OBJC_FIELD_SETTER(LeSessionController_$13, val$characteristic_, id<LeGattCharacteristic>)

__attribute__((unused)) static void LeSessionController_$13_initWithLeSessionController_withEvent_withJavaUtilUUID_withLeGattCharacteristic_(LeSessionController_$13 *self, LeSessionController *outer$, Event *capture$0, JavaUtilUUID *capture$1, id<LeGattCharacteristic> capture$2);

__attribute__((unused)) static LeSessionController_$13 *new_LeSessionController_$13_initWithLeSessionController_withEvent_withJavaUtilUUID_withLeGattCharacteristic_(LeSessionController *outer$, Event *capture$0, JavaUtilUUID *capture$1, id<LeGattCharacteristic> capture$2) NS_RETURNS_RETAINED;

__attribute__((unused)) static LeSessionController_$13 *create_LeSessionController_$13_initWithLeSessionController_withEvent_withJavaUtilUUID_withLeGattCharacteristic_(LeSessionController *outer$, Event *capture$0, JavaUtilUUID *capture$1, id<LeGattCharacteristic> capture$2);

@interface LeSessionController_$14 : NSObject < JavaLangRunnable > {
 @public
  LeSessionController *this$0_;
  Event *val$event_;
}

- (void)run;

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(LeSessionController_$14)

J2OBJC_FIELD_SETTER(LeSessionController_$14, this$0_, LeSessionController *)
J2OBJC_FIELD_SETTER(LeSessionController_$14, val$event_, Event *)

__attribute__((unused)) static void LeSessionController_$14_initWithLeSessionController_withEvent_(LeSessionController_$14 *self, LeSessionController *outer$, Event *capture$0);

__attribute__((unused)) static LeSessionController_$14 *new_LeSessionController_$14_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static LeSessionController_$14 *create_LeSessionController_$14_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0);

@interface LeSessionController_$15 : NSObject < JavaLangRunnable > {
 @public
  LeSessionController *this$0_;
  Event *val$event_;
}

- (void)run;

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(LeSessionController_$15)

J2OBJC_FIELD_SETTER(LeSessionController_$15, this$0_, LeSessionController *)
J2OBJC_FIELD_SETTER(LeSessionController_$15, val$event_, Event *)

__attribute__((unused)) static void LeSessionController_$15_initWithLeSessionController_withEvent_(LeSessionController_$15 *self, LeSessionController *outer$, Event *capture$0);

__attribute__((unused)) static LeSessionController_$15 *new_LeSessionController_$15_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static LeSessionController_$15 *create_LeSessionController_$15_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0);

@interface LeSessionController_$16 : NSObject < JavaLangRunnable > {
 @public
  LeSessionController *this$0_;
  Event *val$event_;
  JavaUtilUUID *val$uuid2_;
  id<LeGattCharacteristic> val$characteristic2_;
}

- (void)run;

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0
                           withJavaUtilUUID:(JavaUtilUUID *)capture$1
                   withLeGattCharacteristic:(id<LeGattCharacteristic>)capture$2;

@end

J2OBJC_EMPTY_STATIC_INIT(LeSessionController_$16)

J2OBJC_FIELD_SETTER(LeSessionController_$16, this$0_, LeSessionController *)
J2OBJC_FIELD_SETTER(LeSessionController_$16, val$event_, Event *)
J2OBJC_FIELD_SETTER(LeSessionController_$16, val$uuid2_, JavaUtilUUID *)
J2OBJC_FIELD_SETTER(LeSessionController_$16, val$characteristic2_, id<LeGattCharacteristic>)

__attribute__((unused)) static void LeSessionController_$16_initWithLeSessionController_withEvent_withJavaUtilUUID_withLeGattCharacteristic_(LeSessionController_$16 *self, LeSessionController *outer$, Event *capture$0, JavaUtilUUID *capture$1, id<LeGattCharacteristic> capture$2);

__attribute__((unused)) static LeSessionController_$16 *new_LeSessionController_$16_initWithLeSessionController_withEvent_withJavaUtilUUID_withLeGattCharacteristic_(LeSessionController *outer$, Event *capture$0, JavaUtilUUID *capture$1, id<LeGattCharacteristic> capture$2) NS_RETURNS_RETAINED;

__attribute__((unused)) static LeSessionController_$16 *create_LeSessionController_$16_initWithLeSessionController_withEvent_withJavaUtilUUID_withLeGattCharacteristic_(LeSessionController *outer$, Event *capture$0, JavaUtilUUID *capture$1, id<LeGattCharacteristic> capture$2);

@interface LeSessionController_$17 : NSObject < JavaLangRunnable > {
 @public
  LeSessionController *this$0_;
  Event *val$event_;
}

- (void)run;

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(LeSessionController_$17)

J2OBJC_FIELD_SETTER(LeSessionController_$17, this$0_, LeSessionController *)
J2OBJC_FIELD_SETTER(LeSessionController_$17, val$event_, Event *)

__attribute__((unused)) static void LeSessionController_$17_initWithLeSessionController_withEvent_(LeSessionController_$17 *self, LeSessionController *outer$, Event *capture$0);

__attribute__((unused)) static LeSessionController_$17 *new_LeSessionController_$17_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static LeSessionController_$17 *create_LeSessionController_$17_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0);

NSString *LeSessionController_TAG = @"LeBlueController";

@implementation LeSessionController

+ (NSString *)TAG {
  return LeSessionController_TAG;
}

- (jboolean)shouldLog {
  return ![@"true" isEqual:JavaLangSystem_getPropertyWithNSString_(@"doNotLog")];
}

- (instancetype)initWithSession:(id<Session>)session {
  LeSessionController_initWithSession_(self, session);
  return self;
}

- (instancetype)initWithSession:(id<Session>)session
                    withBoolean:(jboolean)strict {
  LeSessionController_initWithSession_withBoolean_(self, session, strict);
  return self;
}

- (NSString *)eventValue {
  return [self eventValueWithInt:0];
}

- (NSString *)eventValueWithInt:(jint)seq {
  return IOSObjectArray_Get(nil_chk(values_), seq);
}

- (jint)eventIntValue {
  @try {
    return JavaLangInteger_parseIntWithNSString_(IOSObjectArray_Get(nil_chk(values_), 0));
  }
  @catch (JavaLangNumberFormatException *e) {
  }
  return 0;
}

- (jboolean)eventBooleanValue {
  return [self eventBooleanValueWithInt:0];
}

- (jboolean)eventBooleanValueWithInt:(jint)seq {
  return JavaLangBoolean_parseBooleanWithNSString_([self eventValueWithInt:seq]);
}

- (void)pointReachedWithNSString:(NSString *)point {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    JreStrongAssign(&self->point_, point);
    [((id<JavaUtilConcurrentLocksCondition>) nil_chk(condition_)) signalAll];
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)waitForPointOrEventWithNSString:(NSString *)point {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    waitingForEvent_ = true;
    [((id<JavaUtilConcurrentLocksCondition>) nil_chk(condition_)) signalAll];
    while (![((NSString *) nil_chk(point)) isEqual:self->point_] && sessionIsRunning_ && !stopSession_ && currentEvent_ != nil && currentEvent_->type_ == JreLoadEnum(LeEventType, mockWaitForPoint)) {
      [condition_ await];
    }
    waitingForEvent_ = false;
    [self updateCurrentEventWithEvent:nil];
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)updateCurrentEventWithEvent:(Event *)newCurrentEvent {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    JreStrongAssign(&currentEvent_, newCurrentEvent);
    [((id<JavaUtilConcurrentLocksCondition>) nil_chk(condition_)) signalAll];
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)checkPause {
  jlong current = JavaLangSystem_currentTimeMillis();
  while (current < executeNextEventAfter_ && !stopSession_) {
    @try {
      [((id<JavaUtilConcurrentLocksCondition>) nil_chk(self->condition_)) awaitWithLong:executeNextEventAfter_ - current withJavaUtilConcurrentTimeUnit:JreLoadEnum(JavaUtilConcurrentTimeUnit, MILLISECONDS)];
    }
    @catch (JavaLangInterruptedException *ignore) {
    }
    current = JavaLangSystem_currentTimeMillis();
  }
}

- (void)waitForPointWithNSString:(NSString *)point {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    while (![((NSString *) nil_chk(point)) isEqual:self->point_] && sessionIsRunning_ && !stopSession_) {
      @try {
        [((id<JavaUtilConcurrentLocksCondition>) nil_chk(condition_)) await];
      }
      @catch (JavaLangInterruptedException *ignore) {
      }
    }
  }
  @finally {
    [lock_ unlock];
  }
}

- (jboolean)waitTillSessionStarted {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    while (!waitingForEvent_ && !stopSession_) {
      @try {
        [((id<JavaUtilConcurrentLocksCondition>) nil_chk(condition_)) awaitWithLong:1000 withJavaUtilConcurrentTimeUnit:JreLoadEnum(JavaUtilConcurrentTimeUnit, MILLISECONDS)];
      }
      @catch (JavaLangInterruptedException *e) {
        [((JavaLangInterruptedException *) nil_chk(e)) printStackTrace];
      }
    }
    return waitingForEvent_;
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)waitForEventWithEvent:(Event *)event {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    while (currentEvent_ != nil && sessionIsRunning_ && !stopSession_) @try {
      [((id<JavaUtilConcurrentLocksCondition>) nil_chk(condition_)) await];
    }
    @catch (JavaLangInterruptedException *e) {
      [((JavaLangInterruptedException *) nil_chk(e)) printStackTrace];
    }
    [self updateCurrentEventWithEvent:event];
    [self checkPause];
    while (currentEvent_ == event && [((id<JavaUtilList>) nil_chk(JreLoadVolatileId(&mockedEvents_))) size] == 0 && sessionIsRunning_ && !stopSession_) @try {
      waitingForEvent_ = true;
      [((id<JavaUtilConcurrentLocksCondition>) nil_chk(condition_)) signalAll];
      [condition_ await];
    }
    @catch (JavaLangInterruptedException *e) {
      [((JavaLangInterruptedException *) nil_chk(e)) printStackTrace];
    }
    waitingForEvent_ = false;
    [((id<JavaUtilConcurrentLocksCondition>) nil_chk(condition_)) signalAll];
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)startDefaultSession {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    [self startSessionWithNSString:nil];
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)startSessionWithNSString:(NSString *)sessionName {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    [self stopSession];
    [self waitForFinishedSession];
    stopSession_ = false;
    JreStrongAssign(&self->sessionName_, sessionName);
    [((id<JavaUtilConcurrentLocksCondition>) nil_chk(condition_)) signalAll];
    [create_JavaLangThread_initWithJavaLangRunnable_(create_LeSessionController_$1_initWithLeSessionController_(self)) start];
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)runCurrentEventOnUiThreadWithJavaLangRunnable:(id<JavaLangRunnable>)runnable {
  LeSessionController_RunnableWrapper *wrapper = nil;
  wrapper = create_LeSessionController_RunnableWrapper_initWithLeSessionController_withJavaLangRunnable_(self, runnable);
  [(create_JavaLangThread_initWithJavaLangRunnable_withNSString_(wrapper, @"wrapper thread")) start];
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    while (!wrapper->started_) {
      [((id<JavaUtilConcurrentLocksCondition>) nil_chk(condition_)) await];
    }
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)startSessionInThread {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    [((id<JavaUtilMap>) nil_chk(characteristicsValues_)) clear];
    sessionIsRunning_ = true;
    JreStrongAssign(&sessionException_, nil);
    [((id<JavaUtilConcurrentLocksCondition>) nil_chk(condition_)) signalAll];
    id<EventSource> source = (sessionName_ == nil) ? [((id<Session>) nil_chk(session_)) getDefaultSource] : [((id<Session>) nil_chk(session_)) getNamedEventSourceWithNSString:sessionName_];
    [source reset];
    Event *event = nil;
    @try {
      while (!stopSession_ && ([source hasMoreEvent] || [((id<JavaUtilList>) nil_chk(JreLoadVolatileId(&mockedEvents_))) size] > 0 || JreLoadVolatileId(&stackedEvent_) != nil)) {
        if ([((id<JavaUtilList>) nil_chk(JreLoadVolatileId(&mockedEvents_))) size] > 0) {
          event = [((id<JavaUtilList>) nil_chk(JreLoadVolatileId(&mockedEvents_))) removeWithInt:0];
        }
        else if (JreLoadVolatileId(&stackedEvent_) != nil) {
          event = JreLoadVolatileId(&stackedEvent_);
          JreVolatileStrongAssign(&stackedEvent_, nil);
        }
        else {
          event = [source nextEvent];
        }
        if (stopSession_) {
          return;
        }
        [self workOnEventWithEvent:event];
      }
    }
    @catch (JavaLangException *e) {
      JreStrongAssign(&sessionException_, e);
      @throw create_JavaLangRuntimeException_initWithNSString_withNSException_(JreStrcat("$@", @"error processing session at event ", event), e);
    }
    @finally {
      sessionIsRunning_ = false;
      stopSession_ = true;
      [self updateCurrentEventWithEvent:nil];
    }
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)workOnEventWithEvent:(Event *)event {
  switch ([(LeEventType *) cast_chk(((Event *) nil_chk(event))->type_, [LeEventType class]) ordinal]) {
    case LeEventType_Enum_deviceAddListener:
    case LeEventType_Enum_deviceStartScanning:
    case LeEventType_Enum_deviceStopScanning:
    case LeEventType_Enum_serviceEnableCharacteristicNotification:
    case LeEventType_Enum_deviceRemoveListener:
    case LeEventType_Enum_deviceCheckBleHardwareAvailable:
    case LeEventType_Enum_deviceIsBtEnabled:
    case LeEventType_Enum_remoteDeviceGetAddress:
    case LeEventType_Enum_remoteDeviceGetName:
    case LeEventType_Enum_remoteDeviceAddListener:
    case LeEventType_Enum_remoteDeviceRemoveListener:
    case LeEventType_Enum_remoteDeviceConnect:
    case LeEventType_Enum_remoteDeviceClose:
    case LeEventType_Enum_remoteDeviceDisconnect:
    case LeEventType_Enum_remoteDeviceReadRssi:
    case LeEventType_Enum_remoteDeviceStartServiceDiscovery:
    case LeEventType_Enum_serviceGetUUID:
    case LeEventType_Enum_serviceGetCharacteristic:
    case LeEventType_Enum_characteristicGetValue:
    case LeEventType_Enum_characteristicGetIntValue:
    case LeEventType_Enum_remoteDeviceSetCharacteristicListener:
    case LeEventType_Enum_remoteDeviceSetCharacteristicWriteListener:
    case LeEventType_Enum_characteristicSetValue:
    case LeEventType_Enum_characteristicRead:
    [self waitForEventWithEvent:event];
    break;
    default:
    [self updateCurrentEventWithEvent:event];
    [self checkPause];
    {
      id<LeGattCharacteristic> characteristic;
      JavaUtilUUID *uuid;
      id<LeGattCharacteristic> characteristic2;
      JavaUtilUUID *uuid2;
      switch ([(LeEventType *) cast_chk(event->type_, [LeEventType class]) ordinal]) {
        case LeEventType_Enum_mockRemoteDeviceFound:
        [self runCurrentEventOnUiThreadWithJavaLangRunnable:create_LeSessionController_$2_initWithLeSessionController_withEvent_(self, event)];
        break;
        case LeEventType_Enum_remoteDeviceFound:
        [self runCurrentEventOnUiThreadWithJavaLangRunnable:create_LeSessionController_$3_initWithLeSessionController_withEvent_(self, event)];
        break;
        case LeEventType_Enum_mockRemoteDeviceConnected:
        {
          IOSObjectArray *a__ = [((id<Mocker>) nil_chk([((id<Session>) nil_chk(session_)) getRemoteDeviceMockerWithInt:event->source_])) getRemoteDeviceListenersWithLeMockController:self withInt:event->source_];
          id<LeRemoteDeviceListener> const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
          id<LeRemoteDeviceListener> const *e__ = b__ + a__->size_;
          while (b__ < e__) {
            id<LeRemoteDeviceListener> leRemoteListener = *b__++;
            id<LeRemoteDeviceListener> listener = leRemoteListener;
            [self runCurrentEventOnUiThreadWithJavaLangRunnable:create_LeSessionController_$4_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(self, listener, event)];
          }
        }
        break;
        case LeEventType_Enum_remoteDeviceConnected:
        [self runCurrentEventOnUiThreadWithJavaLangRunnable:create_LeSessionController_$5_initWithLeSessionController_withEvent_(self, event)];
        break;
        case LeEventType_Enum_mockRemoteDeviceDisconnected:
        {
          IOSObjectArray *a__ = [((id<Mocker>) nil_chk([((id<Session>) nil_chk(session_)) getRemoteDeviceMockerWithInt:event->source_])) getRemoteDeviceListenersWithLeMockController:self withInt:event->source_];
          id<LeRemoteDeviceListener> const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
          id<LeRemoteDeviceListener> const *e__ = b__ + a__->size_;
          while (b__ < e__) {
            id<LeRemoteDeviceListener> leRemoteListener = *b__++;
            id<LeRemoteDeviceListener> listener = leRemoteListener;
            [self runCurrentEventOnUiThreadWithJavaLangRunnable:create_LeSessionController_$6_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(self, listener, event)];
          }
        }
        break;
        case LeEventType_Enum_remoteDeviceDisconnected:
        [self runCurrentEventOnUiThreadWithJavaLangRunnable:create_LeSessionController_$7_initWithLeSessionController_withEvent_(self, event)];
        break;
        case LeEventType_Enum_mockRemoteDeviceClosed:
        {
          IOSObjectArray *a__ = [((id<Mocker>) nil_chk([((id<Session>) nil_chk(session_)) getRemoteDeviceMockerWithInt:event->source_])) getRemoteDeviceListenersWithLeMockController:self withInt:event->source_];
          id<LeRemoteDeviceListener> const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
          id<LeRemoteDeviceListener> const *e__ = b__ + a__->size_;
          while (b__ < e__) {
            id<LeRemoteDeviceListener> leRemoteListener = *b__++;
            id<LeRemoteDeviceListener> listener = leRemoteListener;
            [self runCurrentEventOnUiThreadWithJavaLangRunnable:create_LeSessionController_$8_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(self, listener, event)];
          }
        }
        break;
        case LeEventType_Enum_remoteDeviceClosed:
        [self runCurrentEventOnUiThreadWithJavaLangRunnable:create_LeSessionController_$9_initWithLeSessionController_withEvent_(self, event)];
        break;
        case LeEventType_Enum_mockRemoteDeviceServicesDiscovered:
        {
          IOSObjectArray *a__ = [((id<Mocker>) nil_chk([((id<Session>) nil_chk(session_)) getRemoteDeviceMockerWithInt:event->source_])) getRemoteDeviceListenersWithLeMockController:self withInt:event->source_];
          id<LeRemoteDeviceListener> const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
          id<LeRemoteDeviceListener> const *e__ = b__ + a__->size_;
          while (b__ < e__) {
            id<LeRemoteDeviceListener> leRemoteListener = *b__++;
            id<LeRemoteDeviceListener> listener = leRemoteListener;
            [self runCurrentEventOnUiThreadWithJavaLangRunnable:create_LeSessionController_$10_initWithLeSessionController_withEvent_withLeRemoteDeviceListener_(self, event, listener)];
          }
        }
        break;
        case LeEventType_Enum_remoteDeviceServicesDiscovered:
        [self runCurrentEventOnUiThreadWithJavaLangRunnable:create_LeSessionController_$11_initWithLeSessionController_withEvent_(self, event)];
        break;
        case LeEventType_Enum_remoteDeviceRssiRead:
        [self runCurrentEventOnUiThreadWithJavaLangRunnable:create_LeSessionController_$12_initWithLeSessionController_withEvent_(self, event)];
        break;
        case LeEventType_Enum_mockCharacteristicChangedWithMockedValue:
        [((id<JavaUtilMap>) nil_chk(characteristicsValues_)) putWithId:JavaLangInteger_valueOfWithNSString_(IOSObjectArray_Get(nil_chk(event->values_), 0)) withId:LeUtil_stringToBytesWithNSString_(IOSObjectArray_Get(nil_chk(event->values_), 1))];
        case LeEventType_Enum_mockCharacteristicChanged:
        characteristic = [self createOrReturnCharacteristicWithNSString:IOSObjectArray_Get(nil_chk(event->values_), 0)];
        uuid = JavaUtilUUID_fromStringWithNSString_([((id<Session>) nil_chk(session_)) getSourceIdentificationWithInt:[((JavaLangInteger *) nil_chk(JavaLangInteger_valueOfWithNSString_(IOSObjectArray_Get(nil_chk(event->values_), 0)))) intValue]]);
        [self runCurrentEventOnUiThreadWithJavaLangRunnable:create_LeSessionController_$13_initWithLeSessionController_withEvent_withJavaUtilUUID_withLeGattCharacteristic_(self, event, uuid, characteristic)];
        break;
        case LeEventType_Enum_characteristicChanged:
        [self runCurrentEventOnUiThreadWithJavaLangRunnable:create_LeSessionController_$14_initWithLeSessionController_withEvent_(self, event)];
        break;
        case LeEventType_Enum_characteristicWritten:
        [self runCurrentEventOnUiThreadWithJavaLangRunnable:create_LeSessionController_$15_initWithLeSessionController_withEvent_(self, event)];
        break;
        case LeEventType_Enum_mockCharacteristicNotificationChanged:
        characteristic2 = [self createOrReturnCharacteristicWithNSString:IOSObjectArray_Get(nil_chk(event->values_), 0)];
        uuid2 = JavaUtilUUID_fromStringWithNSString_([((id<Session>) nil_chk(session_)) getSourceIdentificationWithInt:[((JavaLangInteger *) nil_chk(JavaLangInteger_valueOfWithNSString_(IOSObjectArray_Get(nil_chk(event->values_), 0)))) intValue]]);
        [self runCurrentEventOnUiThreadWithJavaLangRunnable:create_LeSessionController_$16_initWithLeSessionController_withEvent_withJavaUtilUUID_withLeGattCharacteristic_(self, event, uuid2, characteristic2)];
        break;
        case LeEventType_Enum_characteristicNotificationChanged:
        [self runCurrentEventOnUiThreadWithJavaLangRunnable:create_LeSessionController_$17_initWithLeSessionController_withEvent_(self, event)];
        break;
        default:
        switch ([(LeEventType *) cast_chk(event->type_, [LeEventType class]) ordinal]) {
          case LeEventType_Enum_mockCharacteristicMockedValue:
          [((id<JavaUtilMap>) nil_chk(characteristicsValues_)) putWithId:JavaLangInteger_valueOfWithInt_(event->source_) withId:LeUtil_stringToBytesWithNSString_(IOSObjectArray_Get(nil_chk(event->values_), 0))];
          break;
          case LeEventType_Enum_mockCharacteristicClearMockedValue:
          [((id<JavaUtilMap>) nil_chk(characteristicsValues_)) removeWithId:JavaLangInteger_valueOfWithInt_(event->source_)];
          break;
          case LeEventType_Enum_mockWaitForPoint:
          [self waitForPointOrEventWithNSString:IOSObjectArray_Get(nil_chk(event->values_), 0)];
          break;
          case LeEventType_Enum_mockPointReached:
          [self pointReachedWithNSString:IOSObjectArray_Get(nil_chk(event->values_), 0)];
          break;
          default:
          @throw create_JavaLangRuntimeException_initWithNSString_(JreStrcat("$@", @"Unimplemented event type: ", event->type_));
        }
        [self updateCurrentEventWithEvent:nil];
      }
    }
  }
  executeNextEventAfter_ = JavaLangSystem_currentTimeMillis() + event->delay_;
}

- (void)waitForFinishedSession {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    while (sessionIsRunning_) @try {
      [((id<JavaUtilConcurrentLocksCondition>) nil_chk(condition_)) await];
    }
    @catch (JavaLangInterruptedException *ignored) {
    }
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)stopSession {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    stopSession_ = true;
    [((id<JavaUtilConcurrentLocksCondition>) nil_chk(condition_)) signalAll];
  }
  @finally {
    [lock_ unlock];
  }
}

- (JavaLangException *)getSessionException {
  return sessionException_;
}

- (jboolean)checkEventWithLeEventType:(LeEventType *)event
                     withLeDeviceMock:(LeDeviceMock *)source
                    withNSStringArray:(IOSObjectArray *)arguments {
  return [self checkEventWithSourceIdWithLeEventType:event withLeSessionController_SourceType:JreLoadEnum(LeSessionController_SourceType, device) withInt:[self getDeviceKeyWithLeDeviceMock:source] withNSStringArray:arguments];
}

- (jboolean)checkEventWithLeEventType:(LeEventType *)event
               withLeRemoteDeviceMock:(LeRemoteDeviceMock *)source
                    withNSStringArray:(IOSObjectArray *)arguments {
  return [self checkEventWithSourceIdWithLeEventType:event withLeSessionController_SourceType:JreLoadEnum(LeSessionController_SourceType, remoteDevice) withInt:[self getRemoteDeviceKeyWithLeRemoteDeviceMock:source] withNSStringArray:arguments];
}

- (jboolean)checkEventWithLeEventType:(LeEventType *)event
                withLeGattServiceMock:(LeGattServiceMock *)source
                    withNSStringArray:(IOSObjectArray *)arguments {
  return [self checkEventWithSourceIdWithLeEventType:event withLeSessionController_SourceType:JreLoadEnum(LeSessionController_SourceType, gattService) withInt:[self getGattServiceKeyWithLeGattServiceMock:source] withNSStringArray:arguments];
}

- (jboolean)checkEventWithLeEventType:(LeEventType *)event
         withLeGattCharacteristicMock:(LeGattCharacteristicMock *)source
                    withNSStringArray:(IOSObjectArray *)arguments {
  return [self checkEventWithSourceIdWithLeEventType:event withLeSessionController_SourceType:JreLoadEnum(LeSessionController_SourceType, gattCharacteristic) withInt:[self getCharacteristicKeyWithLeGattCharacteristicMock:source] withNSStringArray:arguments];
}

- (id<Session>)getSession {
  return session_;
}

- (jboolean)checkEventWithSourceIdWithLeEventType:(LeEventType *)eventType
               withLeSessionController_SourceType:(LeSessionController_SourceType *)sourceType
                                          withInt:(jint)source
                                withNSStringArray:(IOSObjectArray *)arguments {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    if (eventType == JreLoadEnum(LeEventType, characteristicGetValue)) {
      IOSByteArray *value = [((id<JavaUtilMap>) nil_chk(characteristicsValues_)) getWithId:JavaLangInteger_valueOfWithInt_(source)];
      if (value != nil) {
        JreStrongAssignAndConsume(&values_, [IOSObjectArray newArrayWithObjects:(id[]){ LeUtil_bytesToStringWithByteArray_(value) } count:1 type:NSString_class_()]);
        return true;
      }
    }
    if (eventType == JreLoadEnum(LeEventType, characteristicGetIntValue)) {
      IOSByteArray *value = [((id<JavaUtilMap>) nil_chk(characteristicsValues_)) getWithId:JavaLangInteger_valueOfWithInt_(source)];
      if (value != nil) {
        JreStrongAssignAndConsume(&values_, [IOSObjectArray newArrayWithObjects:(id[]){ JreStrcat("B", IOSByteArray_Get(value, 0)) } count:1 type:NSString_class_()]);
        return true;
      }
    }
    id<Mocker> mocker;
    switch ([sourceType ordinal]) {
      case LeSessionController_SourceType_Enum_device:
      mocker = [((id<Session>) nil_chk(session_)) getDeviceMockerWithInt:source];
      break;
      case LeSessionController_SourceType_Enum_remoteDevice:
      mocker = [((id<Session>) nil_chk(session_)) getRemoteDeviceMockerWithInt:source];
      break;
      case LeSessionController_SourceType_Enum_gattService:
      mocker = [((id<Session>) nil_chk(session_)) getGattServiceMockerWithInt:source];
      break;
      case LeSessionController_SourceType_Enum_gattCharacteristic:
      mocker = [((id<Session>) nil_chk(session_)) getGattCharacteristicMockerWithInt:source];
      break;
      default:
      mocker = nil;
      break;
    }
    if (mocker != nil) {
      id<MockedResponse> mockedResponse = [mocker mockWithLeMockController:self withLeEventType:eventType withInt:source withNSStringArray:arguments];
      if (mockedResponse != nil) {
        [((id<JavaUtilList>) nil_chk(JreLoadVolatileId(&mockedEvents_))) addAllWithJavaUtilCollection:JavaUtilArrays_asListWithNSObjectArray_([mockedResponse getNextMockedEvents])];
        JreStrongAssign(&values_, [mockedResponse getMockedResultValues]);
        if ([((id<JavaUtilList>) nil_chk(JreLoadVolatileId(&mockedEvents_))) size] > 0) {
          while (sessionIsRunning_ && currentEvent_ != nil && JreLoadVolatileId(&stackedEvent_) != nil) @try {
            [((id<JavaUtilConcurrentLocksCondition>) nil_chk(condition_)) await];
          }
          @catch (JavaLangInterruptedException *e) {
            [((JavaLangInterruptedException *) nil_chk(e)) printStackTrace];
          }
          if (currentEvent_ != nil) JreVolatileStrongAssign(&stackedEvent_, currentEvent_);
          [self updateCurrentEventWithEvent:nil];
          while (sessionIsRunning_ && (currentEvent_ == nil || [((id<JavaUtilList>) nil_chk(JreLoadVolatileId(&mockedEvents_))) size] > 0)) @try {
            [((id<JavaUtilConcurrentLocksCondition>) nil_chk(condition_)) await];
          }
          @catch (JavaLangInterruptedException *e) {
            [((JavaLangInterruptedException *) nil_chk(e)) printStackTrace];
          }
        }
        return true;
      }
    }
    while (!waitingForEvent_ && sessionIsRunning_) @try {
      [((id<JavaUtilConcurrentLocksCondition>) nil_chk(condition_)) await];
    }
    @catch (JavaLangInterruptedException *ignored) {
    }
    if (currentEvent_ != nil && eventType == currentEvent_->type_) {
      self->source_ = currentEvent_->source_;
      JreStrongAssign(&self->values_, currentEvent_->values_);
      [self updateCurrentEventWithEvent:nil];
      while (currentEvent_ == nil && sessionIsRunning_) @try {
        [((id<JavaUtilConcurrentLocksCondition>) nil_chk(condition_)) await];
      }
      @catch (JavaLangInterruptedException *ignored) {
      }
      if (self->source_ == source) {
        return true;
      }
      else {
        NSString *message = JreStrcat("$@$I$I", @"Mismatch source: For event ", eventType, @" source not correct: ", source, @" expected ", self->source_);
        if (strict_) @throw create_JavaLangRuntimeException_initWithNSString_(message);
        return false;
      }
    }
    NSString *message = JreStrcat("$@$@CI$Z$$$@", @"Mismatch, expected ", (currentEvent_ != nil ? currentEvent_->type_ : (id) @"nothing"), @" got :", eventType, '(', source, @") is happening (session running? :", sessionIsRunning_, @") with values", JavaUtilArrays_toStringWithNSObjectArray_(self->values_), @" full event: ", currentEvent_);
    if (strict_) @throw create_JavaLangRuntimeException_initWithNSString_(message);
    if ([self shouldLog]) [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$$$", LeSessionController_TAG, @": ", message)];
    return false;
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)deviceStartScanningWithLeDeviceMock:(LeDeviceMock *)leDeviceMock {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    [self checkEventWithLeEventType:JreLoadEnum(LeEventType, deviceStartScanning) withLeDeviceMock:leDeviceMock withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)deviceStartScanningWithLeDeviceMock:(LeDeviceMock *)leDeviceMock
                      withJavaUtilUUIDArray:(IOSObjectArray *)uuids {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    [self checkEventWithLeEventType:JreLoadEnum(LeEventType, deviceStartScanning) withLeDeviceMock:leDeviceMock withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)deviceStopScanningWithLeDeviceMock:(LeDeviceMock *)leDeviceMock {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    [self checkEventWithLeEventType:JreLoadEnum(LeEventType, deviceStopScanning) withLeDeviceMock:leDeviceMock withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)remoteDeviceConnectWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    [self checkEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceConnect) withLeRemoteDeviceMock:leRemoteDeviceMock withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)remoteDeviceStartServiceDiscoveryWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    [self checkEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceStartServiceDiscovery) withLeRemoteDeviceMock:leRemoteDeviceMock withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)remoteDeviceStartServiceDiscoveryWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock
                                          withJavaUtilUUIDArray:(IOSObjectArray *)uuids {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    [self checkEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceStartServiceDiscovery) withLeRemoteDeviceMock:leRemoteDeviceMock withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ JavaUtilArrays_toStringWithNSObjectArray_(uuids) } count:1 type:NSString_class_()]];
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)remoteDeviceCloseWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    [self checkEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceClose) withLeRemoteDeviceMock:leRemoteDeviceMock withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)remoteDeviceDisconnectWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    [self checkEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceDisconnect) withLeRemoteDeviceMock:leRemoteDeviceMock withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
  }
  @finally {
    [lock_ unlock];
  }
}

- (id<LeCharacteristicListener>)getCharacteristicListenerWithNSString:(NSString *)key {
  return [self getCharacteristicListenerWithInt:[((JavaLangInteger *) nil_chk(JavaLangInteger_valueOfWithNSString_(key))) intValue]];
}

- (id<LeCharacteristicListener>)getCharacteristicListenerWithInt:(jint)key {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    return [((id<JavaUtilMap>) nil_chk(characteristicListeners_)) getWithId:JavaLangInteger_valueOfWithInt_(key)];
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)remoteDeviceSetCharacteristicListenerWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock
                                       withLeCharacteristicListener:(id<LeCharacteristicListener>)listener
                                              withJavaUtilUUIDArray:(IOSObjectArray *)uuids {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    [self checkEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceSetCharacteristicListener) withLeRemoteDeviceMock:leRemoteDeviceMock withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ JavaUtilArrays_toStringWithNSObjectArray_(uuids) } count:1 type:NSString_class_()]];
    [((id<JavaUtilMap>) nil_chk(characteristicListeners_)) putWithId:JavaLangInteger_valueOfWithInt_([self eventIntValue]) withId:listener];
  }
  @finally {
    [lock_ unlock];
  }
}

- (id<LeCharacteristicWriteListener>)getCharacteristicWriteListenerWithNSString:(NSString *)key {
  return [self getCharacteristicWriteListenerWithInt:[((JavaLangInteger *) nil_chk(JavaLangInteger_valueOfWithNSString_(key))) intValue]];
}

- (id<LeCharacteristicWriteListener>)getCharacteristicWriteListenerWithInt:(jint)key {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    return [((id<JavaUtilMap>) nil_chk(characteristicWriteListeners_)) getWithId:JavaLangInteger_valueOfWithInt_(key)];
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)remoteDeviceSetCharacteristicWriteListenerWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock
                                       withLeCharacteristicWriteListener:(id<LeCharacteristicWriteListener>)listener
                                                   withJavaUtilUUIDArray:(IOSObjectArray *)uuids {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    [self checkEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceSetCharacteristicWriteListener) withLeRemoteDeviceMock:leRemoteDeviceMock withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ JavaUtilArrays_toStringWithNSObjectArray_(uuids) } count:1 type:NSString_class_()]];
    [((id<JavaUtilMap>) nil_chk(characteristicWriteListeners_)) putWithId:JavaLangInteger_valueOfWithInt_([self eventIntValue]) withId:listener];
  }
  @finally {
    [lock_ unlock];
  }
}

- (jboolean)serviceEnableCharacteristicNotificationWithLeGattServiceMock:(LeGattServiceMock *)leGattServiceMock
                                                        withJavaUtilUUID:(JavaUtilUUID *)characteristic {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    [self checkEventWithLeEventType:JreLoadEnum(LeEventType, serviceEnableCharacteristicNotification) withLeGattServiceMock:leGattServiceMock withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ [((JavaUtilUUID *) nil_chk(characteristic)) description] } count:1 type:NSString_class_()]];
    return true;
  }
  @finally {
    [lock_ unlock];
  }
}

- (LeDeviceMock *)getDeviceWithNSString:(NSString *)key {
  return [self getDeviceWithInt:JavaLangInteger_parseIntWithNSString_(key)];
}

- (LeDeviceMock *)getDeviceWithInt:(jint)key {
  return [((id<JavaUtilMap>) nil_chk(devices_)) getWithId:JavaLangInteger_valueOfWithInt_(key)];
}

- (jint)getDeviceKeyWithLeDeviceMock:(LeDeviceMock *)device {
  return [((JavaLangInteger *) nil_chk([((id<JavaUtilMap>) nil_chk(deviceKeys_)) getWithId:device])) intValue];
}

- (void)addDeviceWithInt:(jint)key
        withLeDeviceMock:(LeDeviceMock *)mock {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    [((id<JavaUtilMap>) nil_chk(devices_)) putWithId:JavaLangInteger_valueOfWithInt_(key) withId:mock];
    [((id<JavaUtilMap>) nil_chk(deviceKeys_)) putWithId:mock withId:JavaLangInteger_valueOfWithInt_(key)];
  }
  @finally {
    [lock_ unlock];
  }
}

- (LeRemoteDeviceMock *)createRemoteDeviceWithInt:(jint)key
                                 withLeDeviceMock:(LeDeviceMock *)deviceMock {
  [((id<JavaUtilMap>) nil_chk(remoteDevices_)) putWithId:JavaLangInteger_valueOfWithInt_(key) withId:create_LeRemoteDeviceMock_initWithInt_withLeMockController_withLeDeviceMock_(key, self, deviceMock)];
  [((id<JavaUtilMap>) nil_chk(remoteDeviceKeys_)) putWithId:[((id<JavaUtilMap>) nil_chk(remoteDevices_)) getWithId:JavaLangInteger_valueOfWithInt_(key)] withId:JavaLangInteger_valueOfWithInt_(key)];
  return [((id<JavaUtilMap>) nil_chk(remoteDevices_)) getWithId:JavaLangInteger_valueOfWithInt_(key)];
}

- (LeRemoteDeviceMock *)createOrReturnRemoteDeviceWithInt:(jint)key
                                         withLeDeviceMock:(LeDeviceMock *)deviceMock {
  LeRemoteDeviceMock *mock = [((id<JavaUtilMap>) nil_chk(remoteDevices_)) getWithId:JavaLangInteger_valueOfWithInt_(key)];
  return mock != nil ? mock : [self createRemoteDeviceWithInt:key withLeDeviceMock:deviceMock];
}

- (jint)getRemoteDeviceKeyWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock {
  return [((JavaLangInteger *) nil_chk([((id<JavaUtilMap>) nil_chk(remoteDeviceKeys_)) getWithId:leRemoteDeviceMock])) intValue];
}

- (LeRemoteDeviceMock *)getRemoteDeviceWithNSString:(NSString *)key {
  return [self getRemoteDeviceWithInt:JavaLangInteger_parseIntWithNSString_(key)];
}

- (LeRemoteDeviceMock *)getRemoteDeviceWithInt:(jint)key {
  return [((id<JavaUtilMap>) nil_chk(remoteDevices_)) getWithId:JavaLangInteger_valueOfWithInt_(key)];
}

- (LeGattServiceMock *)createGattServiceWithNSString:(NSString *)key {
  return [self createGattServiceWithInt:[((JavaLangInteger *) nil_chk(JavaLangInteger_valueOfWithNSString_(key))) intValue]];
}

- (LeGattServiceMock *)createGattServiceWithInt:(jint)key {
  [((id<JavaUtilMap>) nil_chk(gattServices_)) putWithId:JavaLangInteger_valueOfWithInt_(key) withId:create_LeGattServiceMock_initWithJavaLangInteger_withLeMockController_(JavaLangInteger_valueOfWithInt_(key), self)];
  [((id<JavaUtilMap>) nil_chk(gattServicesKeys_)) putWithId:[((id<JavaUtilMap>) nil_chk(gattServices_)) getWithId:JavaLangInteger_valueOfWithInt_(key)] withId:JavaLangInteger_valueOfWithInt_(key)];
  return [((id<JavaUtilMap>) nil_chk(gattServices_)) getWithId:JavaLangInteger_valueOfWithInt_(key)];
}

- (jint)getGattServiceKeyWithLeGattServiceMock:(LeGattServiceMock *)LeGattServiceMock {
  return [((JavaLangInteger *) nil_chk([((id<JavaUtilMap>) nil_chk(gattServicesKeys_)) getWithId:LeGattServiceMock])) intValue];
}

- (id<LeDeviceListener>)getDeviceListenerWithNSString:(NSString *)key {
  return [self getDeviceListenerWithInt:[((JavaLangInteger *) nil_chk(JavaLangInteger_valueOfWithNSString_(key))) intValue]];
}

- (void)addDeviceListenerWithInt:(jint)key
            withLeDeviceListener:(id<LeDeviceListener>)listener {
  [((id<JavaUtilMap>) nil_chk(deviceListeners_)) putWithId:JavaLangInteger_valueOfWithInt_(key) withId:listener];
  [((id<JavaUtilMap>) nil_chk(deviceListenerKeys_)) putWithId:listener withId:JavaLangInteger_valueOfWithInt_(key)];
}

- (id<LeDeviceListener>)getDeviceListenerWithInt:(jint)key {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    return [((id<JavaUtilMap>) nil_chk(deviceListeners_)) getWithId:JavaLangInteger_valueOfWithInt_(key)];
  }
  @finally {
    [lock_ unlock];
  }
}

- (jint)getDeviceListenerKeyWithLeDeviceListener:(id<LeDeviceListener>)deviceListener {
  return [((JavaLangInteger *) nil_chk([((id<JavaUtilMap>) nil_chk(deviceListenerKeys_)) getWithId:deviceListener])) intValue];
}

- (LeGattCharacteristicMock *)createOrReturnCharacteristicWithNSString:(NSString *)key {
  return [self createOrReturnCharacteristicWithInt:[((JavaLangInteger *) nil_chk(JavaLangInteger_valueOfWithNSString_(key))) intValue]];
}

- (LeGattCharacteristicMock *)createOrReturnCharacteristicWithInt:(jint)key {
  LeGattCharacteristicMock *mock = [((id<JavaUtilMap>) nil_chk(characteristics_)) getWithId:JavaLangInteger_valueOfWithInt_(key)];
  if (mock != nil) return mock;
  [((id<JavaUtilMap>) nil_chk(characteristics_)) putWithId:JavaLangInteger_valueOfWithInt_(key) withId:create_LeGattCharacteristicMock_initWithLeMockController_(self)];
  [((id<JavaUtilMap>) nil_chk(characteristicsKeys_)) putWithId:[((id<JavaUtilMap>) nil_chk(characteristics_)) getWithId:JavaLangInteger_valueOfWithInt_(key)] withId:JavaLangInteger_valueOfWithInt_(key)];
  return [((id<JavaUtilMap>) nil_chk(characteristics_)) getWithId:JavaLangInteger_valueOfWithInt_(key)];
}

- (jint)getCharacteristicKeyWithLeGattCharacteristicMock:(LeGattCharacteristicMock *)characteristic {
  return [((JavaLangInteger *) nil_chk([((id<JavaUtilMap>) nil_chk(characteristicsKeys_)) getWithId:characteristic])) intValue];
}

- (LeGattCharacteristicMock *)getCharacteristicWithNSString:(NSString *)key {
  return [self getCharacteristicWithInt:[((JavaLangInteger *) nil_chk(JavaLangInteger_valueOfWithNSString_(key))) intValue]];
}

- (LeGattCharacteristicMock *)getCharacteristicWithInt:(jint)key {
  return [((id<JavaUtilMap>) nil_chk(characteristics_)) getWithId:JavaLangInteger_valueOfWithInt_(key)];
}

- (id<LeGattCharacteristic>)serviceGetCharacteristicWithLeGattServiceMock:(LeGattServiceMock *)leGattServiceMock
                                                         withJavaUtilUUID:(JavaUtilUUID *)uuid {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    if ([self checkEventWithLeEventType:JreLoadEnum(LeEventType, serviceGetCharacteristic) withLeGattServiceMock:leGattServiceMock withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ [((JavaUtilUUID *) nil_chk(uuid)) description] } count:1 type:NSString_class_()]]) return [self createOrReturnCharacteristicWithInt:[self eventIntValue]];
    else return nil;
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)deviceAddListenerWithLeDeviceMock:(LeDeviceMock *)leDeviceMock
                     withLeDeviceListener:(id<LeDeviceListener>)listener {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    if ([self checkEventWithSourceIdWithLeEventType:JreLoadEnum(LeEventType, deviceAddListener) withLeSessionController_SourceType:JreLoadEnum(LeSessionController_SourceType, device) withInt:[self getDeviceKeyWithLeDeviceMock:leDeviceMock] withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]]) {
      [self addDeviceListenerWithInt:[self eventIntValue] withLeDeviceListener:listener];
    }
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)deviceRemoveListenerWithLeDeviceMock:(LeDeviceMock *)leDeviceMock
                        withLeDeviceListener:(id<LeDeviceListener>)listener {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    [self checkEventWithLeEventType:JreLoadEnum(LeEventType, deviceRemoveListener) withLeDeviceMock:leDeviceMock withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
  }
  @finally {
    [lock_ unlock];
  }
}

- (id<LeRemoteDeviceListener>)getRemoteDeviceListenerWithNSString:(NSString *)key {
  return [((id<JavaUtilMap>) nil_chk(remoteDeviceListeners_)) getWithId:JavaLangInteger_valueOfWithInt_(JavaLangInteger_parseIntWithNSString_(key))];
}

- (id<LeRemoteDeviceListener>)getRemoteDeviceListenerWithInt:(jint)key {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    return [((id<JavaUtilMap>) nil_chk(remoteDeviceListeners_)) getWithId:JavaLangInteger_valueOfWithInt_(key)];
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)remoteDeviceAddListenerWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock
                           withLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)listener {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    if ([self checkEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceAddListener) withLeRemoteDeviceMock:leRemoteDeviceMock withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]]) [((id<JavaUtilMap>) nil_chk(remoteDeviceListeners_)) putWithId:JavaLangInteger_valueOfWithInt_([self eventIntValue]) withId:listener];
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)remoteDeviceRemoveListenerWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock
                              withLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)listener {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    [self checkEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceRemoveListener) withLeRemoteDeviceMock:leRemoteDeviceMock withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
  }
  @finally {
    [lock_ unlock];
  }
}

- (jboolean)deviceCheckBleHardwareAvailableWithLeDeviceMock:(LeDeviceMock *)leDeviceMock {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    if ([self checkEventWithLeEventType:JreLoadEnum(LeEventType, deviceCheckBleHardwareAvailable) withLeDeviceMock:leDeviceMock withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]]) {
      return [self eventBooleanValue];
    }
    return true;
  }
  @finally {
    [lock_ unlock];
  }
}

- (jboolean)deviceIsBtEnabledWithLeDeviceMock:(LeDeviceMock *)leDeviceMock {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    [self checkEventWithLeEventType:JreLoadEnum(LeEventType, deviceIsBtEnabled) withLeDeviceMock:leDeviceMock withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
    return [self eventBooleanValue];
  }
  @finally {
    [lock_ unlock];
  }
}

- (NSString *)remoteDeviceGetAddressWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    if ([self checkEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceGetAddress) withLeRemoteDeviceMock:leRemoteDeviceMock withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]]) return [self eventValue];
    else return @"0:0:0:0";
  }
  @finally {
    [lock_ unlock];
  }
}

- (NSString *)remoteDeviceGetNameWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    [self checkEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceGetName) withLeRemoteDeviceMock:leRemoteDeviceMock withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
    return [self eventValue];
  }
  @finally {
    [lock_ unlock];
  }
}

- (JavaUtilUUID *)serviceGetUuidWithLeGattServiceMock:(LeGattServiceMock *)leGattServiceMock {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    return [self checkEventWithLeEventType:JreLoadEnum(LeEventType, serviceGetUUID) withLeGattServiceMock:leGattServiceMock withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]] ? JavaUtilUUID_fromStringWithNSString_([self eventValue]) : JavaUtilUUID_randomUUID();
  }
  @finally {
    [lock_ unlock];
  }
}

- (IOSByteArray *)characteristicGetValueWithLeGattCharacteristicMock:(LeGattCharacteristicMock *)leGattCharacteristicMock {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    [self checkEventWithLeEventType:JreLoadEnum(LeEventType, characteristicGetValue) withLeGattCharacteristicMock:leGattCharacteristicMock withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
    return LeUtil_stringToBytesWithNSString_([self eventValue]);
  }
  @finally {
    [lock_ unlock];
  }
}

- (jint)characteristicGetIntValueWithLeGattCharacteristicMock:(LeGattCharacteristicMock *)leGattCharacteristicMock
                                                 withLeFormat:(LeFormat *)format
                                                      withInt:(jint)index {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    [self checkEventWithLeEventType:JreLoadEnum(LeEventType, characteristicGetIntValue) withLeGattCharacteristicMock:leGattCharacteristicMock withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ [((LeFormat *) nil_chk(format)) description], JreStrcat("I", index) } count:2 type:NSString_class_()]];
    return [self eventIntValue];
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)characteristicSetValueWithLeGattCharacteristicMock:(LeGattCharacteristicMock *)leGattCharacteristicMock
                                             withByteArray:(IOSByteArray *)value {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    [self checkEventWithLeEventType:JreLoadEnum(LeEventType, characteristicSetValue) withLeGattCharacteristicMock:leGattCharacteristicMock withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ LeUtil_bytesToStringWithByteArray_(value) } count:1 type:NSString_class_()]];
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)characteristicSetValueWithLeGattCharacteristicMock:(LeGattCharacteristicMock *)leGattCharacteristicMock
                                             withByteArray:(IOSByteArray *)value
                                       withJavaLangBoolean:(JavaLangBoolean *)withResponse {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    [self checkEventWithLeEventType:JreLoadEnum(LeEventType, characteristicSetValue) withLeGattCharacteristicMock:leGattCharacteristicMock withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ LeUtil_bytesToStringWithByteArray_(value), [((JavaLangBoolean *) nil_chk(withResponse)) description] } count:2 type:NSString_class_()]];
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)remoteDeviceReadRssiWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    [self checkEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceReadRssi) withLeRemoteDeviceMock:leRemoteDeviceMock withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)characteristicReadWithLeGattCharacteristicMock:(LeGattCharacteristicMock *)leGattCharacteristicMock {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    [self checkEventWithLeEventType:JreLoadEnum(LeEventType, characteristicRead) withLeGattCharacteristicMock:leGattCharacteristicMock withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)__javaClone:(LeSessionController *)original {
  [super __javaClone:original];
  JreCloneVolatileStrong(&mockedEvents_, &original->mockedEvents_);
  JreCloneVolatileStrong(&stackedEvent_, &original->stackedEvent_);
}

- (void)dealloc {
  RELEASE_(lock_);
  RELEASE_(condition_);
  RELEASE_(values_);
  RELEASE_(point_);
  RELEASE_(currentEvent_);
  RELEASE_(sessionName_);
  RELEASE_(session_);
  JreReleaseVolatile(&mockedEvents_);
  JreReleaseVolatile(&stackedEvent_);
  RELEASE_(characteristicsValues_);
  RELEASE_(sessionException_);
  RELEASE_(characteristicListeners_);
  RELEASE_(characteristicWriteListeners_);
  RELEASE_(devices_);
  RELEASE_(deviceKeys_);
  RELEASE_(remoteDevices_);
  RELEASE_(remoteDeviceKeys_);
  RELEASE_(gattServices_);
  RELEASE_(gattServicesKeys_);
  RELEASE_(deviceListeners_);
  RELEASE_(deviceListenerKeys_);
  RELEASE_(characteristics_);
  RELEASE_(characteristicsKeys_);
  RELEASE_(remoteDeviceListeners_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "Z", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x4, 2, 3, -1, -1, -1, -1 },
    { NULL, "I", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x4, 4, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 7, 6, 8, -1, -1, -1 },
    { NULL, "V", 0x4, 9, 10, -1, -1, -1, -1 },
    { NULL, "V", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 11, 6, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 12, 10, 8, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 13, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 14, 15, 8, -1, -1, -1 },
    { NULL, "V", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 16, 10, 8, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaLangException;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x81, 17, 18, -1, -1, -1, -1 },
    { NULL, "Z", 0x81, 17, 19, -1, -1, -1, -1 },
    { NULL, "Z", 0x81, 17, 20, -1, -1, -1, -1 },
    { NULL, "Z", 0x81, 17, 21, -1, -1, -1, -1 },
    { NULL, "LSession;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x81, 22, 23, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 24, 25, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 24, 26, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 27, 25, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 28, 29, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 30, 29, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 30, 31, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 32, 29, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 33, 29, -1, -1, -1, -1 },
    { NULL, "LLeCharacteristicListener;", 0x4, 34, 6, -1, -1, -1, -1 },
    { NULL, "LLeCharacteristicListener;", 0x1, 34, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 35, 36, -1, -1, -1, -1 },
    { NULL, "LLeCharacteristicWriteListener;", 0x4, 37, 6, -1, -1, -1, -1 },
    { NULL, "LLeCharacteristicWriteListener;", 0x1, 37, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 38, 39, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 40, 41, -1, -1, -1, -1 },
    { NULL, "LLeDeviceMock;", 0x4, 42, 6, -1, -1, -1, -1 },
    { NULL, "LLeDeviceMock;", 0x4, 42, 3, -1, -1, -1, -1 },
    { NULL, "I", 0x4, 43, 25, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 44, 45, -1, -1, -1, -1 },
    { NULL, "LLeRemoteDeviceMock;", 0x4, 46, 45, -1, -1, -1, -1 },
    { NULL, "LLeRemoteDeviceMock;", 0x4, 47, 45, -1, -1, -1, -1 },
    { NULL, "I", 0x4, 48, 29, -1, -1, -1, -1 },
    { NULL, "LLeRemoteDeviceMock;", 0x4, 49, 6, -1, -1, -1, -1 },
    { NULL, "LLeRemoteDeviceMock;", 0x4, 49, 3, -1, -1, -1, -1 },
    { NULL, "LLeGattServiceMock;", 0x4, 50, 6, -1, -1, -1, -1 },
    { NULL, "LLeGattServiceMock;", 0x4, 50, 3, -1, -1, -1, -1 },
    { NULL, "I", 0x4, 51, 52, -1, -1, -1, -1 },
    { NULL, "LLeDeviceListener;", 0x4, 53, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 54, 55, -1, -1, -1, -1 },
    { NULL, "LLeDeviceListener;", 0x1, 53, 3, -1, -1, -1, -1 },
    { NULL, "I", 0x4, 56, 57, -1, -1, -1, -1 },
    { NULL, "LLeGattCharacteristicMock;", 0x4, 58, 6, -1, -1, -1, -1 },
    { NULL, "LLeGattCharacteristicMock;", 0x4, 58, 3, -1, -1, -1, -1 },
    { NULL, "I", 0x4, 59, 60, -1, -1, -1, -1 },
    { NULL, "LLeGattCharacteristicMock;", 0x4, 61, 6, -1, -1, -1, -1 },
    { NULL, "LLeGattCharacteristicMock;", 0x4, 61, 3, -1, -1, -1, -1 },
    { NULL, "LLeGattCharacteristic;", 0x1, 62, 41, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 63, 64, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 65, 64, -1, -1, -1, -1 },
    { NULL, "LLeRemoteDeviceListener;", 0x4, 66, 6, -1, -1, -1, -1 },
    { NULL, "LLeRemoteDeviceListener;", 0x1, 66, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 67, 68, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 69, 68, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 70, 25, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 71, 25, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 72, 29, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 73, 29, -1, -1, -1, -1 },
    { NULL, "LJavaUtilUUID;", 0x1, 74, 52, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, 75, 60, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 76, 77, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 78, 79, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 78, 80, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 81, 29, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 82, 60, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(shouldLog);
  methods[1].selector = @selector(initWithSession:);
  methods[2].selector = @selector(initWithSession:withBoolean:);
  methods[3].selector = @selector(eventValue);
  methods[4].selector = @selector(eventValueWithInt:);
  methods[5].selector = @selector(eventIntValue);
  methods[6].selector = @selector(eventBooleanValue);
  methods[7].selector = @selector(eventBooleanValueWithInt:);
  methods[8].selector = @selector(pointReachedWithNSString:);
  methods[9].selector = @selector(waitForPointOrEventWithNSString:);
  methods[10].selector = @selector(updateCurrentEventWithEvent:);
  methods[11].selector = @selector(checkPause);
  methods[12].selector = @selector(waitForPointWithNSString:);
  methods[13].selector = @selector(waitTillSessionStarted);
  methods[14].selector = @selector(waitForEventWithEvent:);
  methods[15].selector = @selector(startDefaultSession);
  methods[16].selector = @selector(startSessionWithNSString:);
  methods[17].selector = @selector(runCurrentEventOnUiThreadWithJavaLangRunnable:);
  methods[18].selector = @selector(startSessionInThread);
  methods[19].selector = @selector(workOnEventWithEvent:);
  methods[20].selector = @selector(waitForFinishedSession);
  methods[21].selector = @selector(stopSession);
  methods[22].selector = @selector(getSessionException);
  methods[23].selector = @selector(checkEventWithLeEventType:withLeDeviceMock:withNSStringArray:);
  methods[24].selector = @selector(checkEventWithLeEventType:withLeRemoteDeviceMock:withNSStringArray:);
  methods[25].selector = @selector(checkEventWithLeEventType:withLeGattServiceMock:withNSStringArray:);
  methods[26].selector = @selector(checkEventWithLeEventType:withLeGattCharacteristicMock:withNSStringArray:);
  methods[27].selector = @selector(getSession);
  methods[28].selector = @selector(checkEventWithSourceIdWithLeEventType:withLeSessionController_SourceType:withInt:withNSStringArray:);
  methods[29].selector = @selector(deviceStartScanningWithLeDeviceMock:);
  methods[30].selector = @selector(deviceStartScanningWithLeDeviceMock:withJavaUtilUUIDArray:);
  methods[31].selector = @selector(deviceStopScanningWithLeDeviceMock:);
  methods[32].selector = @selector(remoteDeviceConnectWithLeRemoteDeviceMock:);
  methods[33].selector = @selector(remoteDeviceStartServiceDiscoveryWithLeRemoteDeviceMock:);
  methods[34].selector = @selector(remoteDeviceStartServiceDiscoveryWithLeRemoteDeviceMock:withJavaUtilUUIDArray:);
  methods[35].selector = @selector(remoteDeviceCloseWithLeRemoteDeviceMock:);
  methods[36].selector = @selector(remoteDeviceDisconnectWithLeRemoteDeviceMock:);
  methods[37].selector = @selector(getCharacteristicListenerWithNSString:);
  methods[38].selector = @selector(getCharacteristicListenerWithInt:);
  methods[39].selector = @selector(remoteDeviceSetCharacteristicListenerWithLeRemoteDeviceMock:withLeCharacteristicListener:withJavaUtilUUIDArray:);
  methods[40].selector = @selector(getCharacteristicWriteListenerWithNSString:);
  methods[41].selector = @selector(getCharacteristicWriteListenerWithInt:);
  methods[42].selector = @selector(remoteDeviceSetCharacteristicWriteListenerWithLeRemoteDeviceMock:withLeCharacteristicWriteListener:withJavaUtilUUIDArray:);
  methods[43].selector = @selector(serviceEnableCharacteristicNotificationWithLeGattServiceMock:withJavaUtilUUID:);
  methods[44].selector = @selector(getDeviceWithNSString:);
  methods[45].selector = @selector(getDeviceWithInt:);
  methods[46].selector = @selector(getDeviceKeyWithLeDeviceMock:);
  methods[47].selector = @selector(addDeviceWithInt:withLeDeviceMock:);
  methods[48].selector = @selector(createRemoteDeviceWithInt:withLeDeviceMock:);
  methods[49].selector = @selector(createOrReturnRemoteDeviceWithInt:withLeDeviceMock:);
  methods[50].selector = @selector(getRemoteDeviceKeyWithLeRemoteDeviceMock:);
  methods[51].selector = @selector(getRemoteDeviceWithNSString:);
  methods[52].selector = @selector(getRemoteDeviceWithInt:);
  methods[53].selector = @selector(createGattServiceWithNSString:);
  methods[54].selector = @selector(createGattServiceWithInt:);
  methods[55].selector = @selector(getGattServiceKeyWithLeGattServiceMock:);
  methods[56].selector = @selector(getDeviceListenerWithNSString:);
  methods[57].selector = @selector(addDeviceListenerWithInt:withLeDeviceListener:);
  methods[58].selector = @selector(getDeviceListenerWithInt:);
  methods[59].selector = @selector(getDeviceListenerKeyWithLeDeviceListener:);
  methods[60].selector = @selector(createOrReturnCharacteristicWithNSString:);
  methods[61].selector = @selector(createOrReturnCharacteristicWithInt:);
  methods[62].selector = @selector(getCharacteristicKeyWithLeGattCharacteristicMock:);
  methods[63].selector = @selector(getCharacteristicWithNSString:);
  methods[64].selector = @selector(getCharacteristicWithInt:);
  methods[65].selector = @selector(serviceGetCharacteristicWithLeGattServiceMock:withJavaUtilUUID:);
  methods[66].selector = @selector(deviceAddListenerWithLeDeviceMock:withLeDeviceListener:);
  methods[67].selector = @selector(deviceRemoveListenerWithLeDeviceMock:withLeDeviceListener:);
  methods[68].selector = @selector(getRemoteDeviceListenerWithNSString:);
  methods[69].selector = @selector(getRemoteDeviceListenerWithInt:);
  methods[70].selector = @selector(remoteDeviceAddListenerWithLeRemoteDeviceMock:withLeRemoteDeviceListener:);
  methods[71].selector = @selector(remoteDeviceRemoveListenerWithLeRemoteDeviceMock:withLeRemoteDeviceListener:);
  methods[72].selector = @selector(deviceCheckBleHardwareAvailableWithLeDeviceMock:);
  methods[73].selector = @selector(deviceIsBtEnabledWithLeDeviceMock:);
  methods[74].selector = @selector(remoteDeviceGetAddressWithLeRemoteDeviceMock:);
  methods[75].selector = @selector(remoteDeviceGetNameWithLeRemoteDeviceMock:);
  methods[76].selector = @selector(serviceGetUuidWithLeGattServiceMock:);
  methods[77].selector = @selector(characteristicGetValueWithLeGattCharacteristicMock:);
  methods[78].selector = @selector(characteristicGetIntValueWithLeGattCharacteristicMock:withLeFormat:withInt:);
  methods[79].selector = @selector(characteristicSetValueWithLeGattCharacteristicMock:withByteArray:);
  methods[80].selector = @selector(characteristicSetValueWithLeGattCharacteristicMock:withByteArray:withJavaLangBoolean:);
  methods[81].selector = @selector(remoteDeviceReadRssiWithLeRemoteDeviceMock:);
  methods[82].selector = @selector(characteristicReadWithLeGattCharacteristicMock:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "TAG", "LNSString;", .constantValue.asLong = 0, 0x18, -1, 83, -1, -1 },
    { "counter_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "strict_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "lock_", "LJavaUtilConcurrentLocksReentrantLock;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "condition_", "LJavaUtilConcurrentLocksCondition;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "source_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "values_", "[LNSString;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "point_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "currentEvent_", "LEvent;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "waitingForEvent_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "sessionName_", "LNSString;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "session_", "LSession;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mockedEvents_", "LJavaUtilList;", .constantValue.asLong = 0, 0x40, -1, -1, 84, -1 },
    { "stackedEvent_", "LEvent;", .constantValue.asLong = 0, 0x40, -1, -1, -1, -1 },
    { "sessionIsRunning_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "stopSession_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "executeNextEventAfter_", "J", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "characteristicsValues_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x0, -1, -1, 85, -1 },
    { "sessionException_", "LJavaLangException;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "characteristicListeners_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x0, -1, -1, 86, -1 },
    { "characteristicWriteListeners_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x0, -1, -1, 87, -1 },
    { "devices_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x0, -1, -1, 88, -1 },
    { "deviceKeys_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x0, -1, -1, 89, -1 },
    { "remoteDevices_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x0, -1, -1, 90, -1 },
    { "remoteDeviceKeys_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x0, -1, -1, 91, -1 },
    { "gattServices_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x0, -1, -1, 92, -1 },
    { "gattServicesKeys_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x0, -1, -1, 93, -1 },
    { "deviceListeners_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x0, -1, -1, 94, -1 },
    { "deviceListenerKeys_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x0, -1, -1, 95, -1 },
    { "characteristics_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x0, -1, -1, 96, -1 },
    { "characteristicsKeys_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x0, -1, -1, 97, -1 },
    { "remoteDeviceListeners_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x0, -1, -1, 98, -1 },
  };
  static const void *ptrTable[] = { "LSession;", "LSession;Z", "eventValue", "I", "eventBooleanValue", "pointReached", "LNSString;", "waitForPointOrEvent", "LJavaLangInterruptedException;", "updateCurrentEvent", "LEvent;", "waitForPoint", "waitForEvent", "startSession", "runCurrentEventOnUiThread", "LJavaLangRunnable;", "workOnEvent", "checkEvent", "LLeEventType;LLeDeviceMock;[LNSString;", "LLeEventType;LLeRemoteDeviceMock;[LNSString;", "LLeEventType;LLeGattServiceMock;[LNSString;", "LLeEventType;LLeGattCharacteristicMock;[LNSString;", "checkEventWithSourceId", "LLeEventType;LLeSessionController_SourceType;I[LNSString;", "deviceStartScanning", "LLeDeviceMock;", "LLeDeviceMock;[LJavaUtilUUID;", "deviceStopScanning", "remoteDeviceConnect", "LLeRemoteDeviceMock;", "remoteDeviceStartServiceDiscovery", "LLeRemoteDeviceMock;[LJavaUtilUUID;", "remoteDeviceClose", "remoteDeviceDisconnect", "getCharacteristicListener", "remoteDeviceSetCharacteristicListener", "LLeRemoteDeviceMock;LLeCharacteristicListener;[LJavaUtilUUID;", "getCharacteristicWriteListener", "remoteDeviceSetCharacteristicWriteListener", "LLeRemoteDeviceMock;LLeCharacteristicWriteListener;[LJavaUtilUUID;", "serviceEnableCharacteristicNotification", "LLeGattServiceMock;LJavaUtilUUID;", "getDevice", "getDeviceKey", "addDevice", "ILLeDeviceMock;", "createRemoteDevice", "createOrReturnRemoteDevice", "getRemoteDeviceKey", "getRemoteDevice", "createGattService", "getGattServiceKey", "LLeGattServiceMock;", "getDeviceListener", "addDeviceListener", "ILLeDeviceListener;", "getDeviceListenerKey", "LLeDeviceListener;", "createOrReturnCharacteristic", "getCharacteristicKey", "LLeGattCharacteristicMock;", "getCharacteristic", "serviceGetCharacteristic", "deviceAddListener", "LLeDeviceMock;LLeDeviceListener;", "deviceRemoveListener", "getRemoteDeviceListener", "remoteDeviceAddListener", "LLeRemoteDeviceMock;LLeRemoteDeviceListener;", "remoteDeviceRemoveListener", "deviceCheckBleHardwareAvailable", "deviceIsBtEnabled", "remoteDeviceGetAddress", "remoteDeviceGetName", "serviceGetUuid", "characteristicGetValue", "characteristicGetIntValue", "LLeGattCharacteristicMock;LLeFormat;I", "characteristicSetValue", "LLeGattCharacteristicMock;[B", "LLeGattCharacteristicMock;[BLJavaLangBoolean;", "remoteDeviceReadRssi", "characteristicRead", &LeSessionController_TAG, "Ljava/util/List<Lhoutbecke/rs/le/session/Event;>;", "Ljava/util/Map<Ljava/lang/Integer;[LB;>;", "Ljava/util/Map<Ljava/lang/Integer;Lhoutbecke/rs/le/LeCharacteristicListener;>;", "Ljava/util/Map<Ljava/lang/Integer;Lhoutbecke/rs/le/LeCharacteristicWriteListener;>;", "Ljava/util/Map<Ljava/lang/Integer;Lhoutbecke/rs/le/mock/LeDeviceMock;>;", "Ljava/util/Map<Lhoutbecke/rs/le/mock/LeDeviceMock;Ljava/lang/Integer;>;", "Ljava/util/Map<Ljava/lang/Integer;Lhoutbecke/rs/le/mock/LeRemoteDeviceMock;>;", "Ljava/util/Map<Lhoutbecke/rs/le/mock/LeRemoteDeviceMock;Ljava/lang/Integer;>;", "Ljava/util/Map<Ljava/lang/Integer;Lhoutbecke/rs/le/mock/LeGattServiceMock;>;", "Ljava/util/Map<Lhoutbecke/rs/le/mock/LeGattServiceMock;Ljava/lang/Integer;>;", "Ljava/util/Map<Ljava/lang/Integer;Lhoutbecke/rs/le/LeDeviceListener;>;", "Ljava/util/Map<Lhoutbecke/rs/le/LeDeviceListener;Ljava/lang/Integer;>;", "Ljava/util/Map<Ljava/lang/Integer;Lhoutbecke/rs/le/mock/LeGattCharacteristicMock;>;", "Ljava/util/Map<Lhoutbecke/rs/le/mock/LeGattCharacteristicMock;Ljava/lang/Integer;>;", "Ljava/util/Map<Ljava/lang/Integer;Lhoutbecke/rs/le/LeRemoteDeviceListener;>;", "LLeSessionController_RunnableWrapper;LLeSessionController_SourceType;" };
  static const J2ObjcClassInfo _LeSessionController = { "LeSessionController", "houtbecke.rs.le.mock", ptrTable, methods, fields, 7, 0x1, 83, 32, -1, 99, -1, -1, -1 };
  return &_LeSessionController;
}

@end

void LeSessionController_initWithSession_(LeSessionController *self, id<Session> session) {
  LeSessionController_initWithSession_withBoolean_(self, session, false);
}

LeSessionController *new_LeSessionController_initWithSession_(id<Session> session) {
  J2OBJC_NEW_IMPL(LeSessionController, initWithSession_, session)
}

LeSessionController *create_LeSessionController_initWithSession_(id<Session> session) {
  J2OBJC_CREATE_IMPL(LeSessionController, initWithSession_, session)
}

void LeSessionController_initWithSession_withBoolean_(LeSessionController *self, id<Session> session, jboolean strict) {
  NSObject_init(self);
  self->counter_ = 0;
  JreStrongAssignAndConsume(&self->lock_, new_JavaUtilConcurrentLocksReentrantLock_initWithBoolean_(true));
  JreStrongAssign(&self->condition_, [self->lock_ newCondition]);
  JreStrongAssign(&self->point_, @"");
  self->waitingForEvent_ = false;
  JreStrongAssign(&self->sessionName_, nil);
  JreVolatileStrongAssignAndConsume(&self->mockedEvents_, new_JavaUtilArrayList_init());
  JreVolatileStrongAssign(&self->stackedEvent_, nil);
  self->sessionIsRunning_ = false;
  self->stopSession_ = false;
  self->executeNextEventAfter_ = 0;
  JreStrongAssignAndConsume(&self->characteristicsValues_, new_JavaUtilHashMap_init());
  JreStrongAssign(&self->sessionException_, nil);
  JreStrongAssignAndConsume(&self->characteristicListeners_, new_JavaUtilHashMap_init());
  JreStrongAssignAndConsume(&self->characteristicWriteListeners_, new_JavaUtilHashMap_init());
  JreStrongAssignAndConsume(&self->devices_, new_JavaUtilHashMap_init());
  JreStrongAssignAndConsume(&self->deviceKeys_, new_JavaUtilHashMap_init());
  JreStrongAssignAndConsume(&self->remoteDevices_, new_JavaUtilHashMap_init());
  JreStrongAssign(&self->remoteDeviceKeys_, JavaUtilCollections_synchronizedMapWithJavaUtilMap_(create_JavaUtilHashMap_init()));
  JreStrongAssignAndConsume(&self->gattServices_, new_JavaUtilHashMap_init());
  JreStrongAssignAndConsume(&self->gattServicesKeys_, new_JavaUtilHashMap_init());
  JreStrongAssignAndConsume(&self->deviceListeners_, new_JavaUtilHashMap_init());
  JreStrongAssignAndConsume(&self->deviceListenerKeys_, new_JavaUtilHashMap_init());
  JreStrongAssignAndConsume(&self->characteristics_, new_JavaUtilHashMap_init());
  JreStrongAssignAndConsume(&self->characteristicsKeys_, new_JavaUtilHashMap_init());
  JreStrongAssignAndConsume(&self->remoteDeviceListeners_, new_JavaUtilHashMap_init());
  self->strict_ = strict;
  JreStrongAssign(&self->session_, session);
}

LeSessionController *new_LeSessionController_initWithSession_withBoolean_(id<Session> session, jboolean strict) {
  J2OBJC_NEW_IMPL(LeSessionController, initWithSession_withBoolean_, session, strict)
}

LeSessionController *create_LeSessionController_initWithSession_withBoolean_(id<Session> session, jboolean strict) {
  J2OBJC_CREATE_IMPL(LeSessionController, initWithSession_withBoolean_, session, strict)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeSessionController)

@implementation LeSessionController_RunnableWrapper

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                       withJavaLangRunnable:(id<JavaLangRunnable>)runnable {
  LeSessionController_RunnableWrapper_initWithLeSessionController_withJavaLangRunnable_(self, outer$, runnable);
  return self;
}

- (void)run {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(this$0_->lock_)) lock];
  @try {
    started_ = true;
    [this$0_ updateCurrentEventWithEvent:nil];
    [((id<JavaUtilConcurrentLocksCondition>) nil_chk(this$0_->condition_)) signalAll];
    ;
  }
  @finally {
    [this$0_->lock_ unlock];
  }
  [((id<JavaLangRunnable>) nil_chk(runnable_)) run];
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(runnable_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithLeSessionController:withJavaLangRunnable:);
  methods[1].selector = @selector(run);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LLeSessionController;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "runnable_", "LJavaLangRunnable;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "started_", "Z", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LLeSessionController;LJavaLangRunnable;", "LLeSessionController;" };
  static const J2ObjcClassInfo _LeSessionController_RunnableWrapper = { "RunnableWrapper", "houtbecke.rs.le.mock", ptrTable, methods, fields, 7, 0x2, 2, 3, 1, -1, -1, -1, -1 };
  return &_LeSessionController_RunnableWrapper;
}

@end

void LeSessionController_RunnableWrapper_initWithLeSessionController_withJavaLangRunnable_(LeSessionController_RunnableWrapper *self, LeSessionController *outer$, id<JavaLangRunnable> runnable) {
  JreStrongAssign(&self->this$0_, outer$);
  NSObject_init(self);
  self->started_ = false;
  JreStrongAssign(&self->runnable_, runnable);
}

LeSessionController_RunnableWrapper *new_LeSessionController_RunnableWrapper_initWithLeSessionController_withJavaLangRunnable_(LeSessionController *outer$, id<JavaLangRunnable> runnable) {
  J2OBJC_NEW_IMPL(LeSessionController_RunnableWrapper, initWithLeSessionController_withJavaLangRunnable_, outer$, runnable)
}

LeSessionController_RunnableWrapper *create_LeSessionController_RunnableWrapper_initWithLeSessionController_withJavaLangRunnable_(LeSessionController *outer$, id<JavaLangRunnable> runnable) {
  J2OBJC_CREATE_IMPL(LeSessionController_RunnableWrapper, initWithLeSessionController_withJavaLangRunnable_, outer$, runnable)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeSessionController_RunnableWrapper)

J2OBJC_INITIALIZED_DEFN(LeSessionController_SourceType)

LeSessionController_SourceType *LeSessionController_SourceType_values_[4];

@implementation LeSessionController_SourceType

+ (LeSessionController_SourceType *)device {
  return JreEnum(LeSessionController_SourceType, device);
}

+ (LeSessionController_SourceType *)remoteDevice {
  return JreEnum(LeSessionController_SourceType, remoteDevice);
}

+ (LeSessionController_SourceType *)gattService {
  return JreEnum(LeSessionController_SourceType, gattService);
}

+ (LeSessionController_SourceType *)gattCharacteristic {
  return JreEnum(LeSessionController_SourceType, gattCharacteristic);
}

+ (IOSObjectArray *)values {
  return LeSessionController_SourceType_values();
}

+ (LeSessionController_SourceType *)valueOfWithNSString:(NSString *)name {
  return LeSessionController_SourceType_valueOfWithNSString_(name);
}

- (LeSessionController_SourceType_Enum)toNSEnum {
  return (LeSessionController_SourceType_Enum)[self ordinal];
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LLeSessionController_SourceType;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LLeSessionController_SourceType;", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(values);
  methods[1].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "device", "LLeSessionController_SourceType;", .constantValue.asLong = 0, 0x4019, -1, 2, -1, -1 },
    { "remoteDevice", "LLeSessionController_SourceType;", .constantValue.asLong = 0, 0x4019, -1, 3, -1, -1 },
    { "gattService", "LLeSessionController_SourceType;", .constantValue.asLong = 0, 0x4019, -1, 4, -1, -1 },
    { "gattCharacteristic", "LLeSessionController_SourceType;", .constantValue.asLong = 0, 0x4019, -1, 5, -1, -1 },
  };
  static const void *ptrTable[] = { "valueOf", "LNSString;", &JreEnum(LeSessionController_SourceType, device), &JreEnum(LeSessionController_SourceType, remoteDevice), &JreEnum(LeSessionController_SourceType, gattService), &JreEnum(LeSessionController_SourceType, gattCharacteristic), "LLeSessionController;", "Ljava/lang/Enum<Lhoutbecke/rs/le/mock/LeSessionController$SourceType;>;" };
  static const J2ObjcClassInfo _LeSessionController_SourceType = { "SourceType", "houtbecke.rs.le.mock", ptrTable, methods, fields, 7, 0x401c, 2, 4, 6, -1, -1, 7, -1 };
  return &_LeSessionController_SourceType;
}

+ (void)initialize {
  if (self == [LeSessionController_SourceType class]) {
    size_t objSize = class_getInstanceSize(self);
    size_t allocSize = 4 * objSize;
    uintptr_t ptr = (uintptr_t)calloc(allocSize, 1);
    id e;
    id names[] = {
      @"device", @"remoteDevice", @"gattService", @"gattCharacteristic",
    };
    for (jint i = 0; i < 4; i++) {
      (LeSessionController_SourceType_values_[i] = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
      LeSessionController_SourceType_initWithNSString_withInt_(e, names[i], i);
    }
    J2OBJC_SET_INITIALIZED(LeSessionController_SourceType)
  }
}

@end

void LeSessionController_SourceType_initWithNSString_withInt_(LeSessionController_SourceType *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

IOSObjectArray *LeSessionController_SourceType_values() {
  LeSessionController_SourceType_initialize();
  return [IOSObjectArray arrayWithObjects:LeSessionController_SourceType_values_ count:4 type:LeSessionController_SourceType_class_()];
}

LeSessionController_SourceType *LeSessionController_SourceType_valueOfWithNSString_(NSString *name) {
  LeSessionController_SourceType_initialize();
  for (int i = 0; i < 4; i++) {
    LeSessionController_SourceType *e = LeSessionController_SourceType_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

LeSessionController_SourceType *LeSessionController_SourceType_fromOrdinal(NSUInteger ordinal) {
  LeSessionController_SourceType_initialize();
  if (ordinal >= 4) {
    return nil;
  }
  return LeSessionController_SourceType_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeSessionController_SourceType)

@implementation LeSessionController_$1

- (void)run {
  [((JavaLangThread *) nil_chk(JavaLangThread_currentThread())) setNameWithNSString:@"LeSessionController"];
  [this$0_ startSessionInThread];
}

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$ {
  LeSessionController_$1_initWithLeSessionController_(self, outer$);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(run);
  methods[1].selector = @selector(initWithLeSessionController:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LLeSessionController;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LLeSessionController;", "startSessionWithNSString:" };
  static const J2ObjcClassInfo _LeSessionController_$1 = { "", "houtbecke.rs.le.mock", ptrTable, methods, fields, 7, 0x8008, 2, 1, 0, -1, 1, -1, -1 };
  return &_LeSessionController_$1;
}

@end

void LeSessionController_$1_initWithLeSessionController_(LeSessionController_$1 *self, LeSessionController *outer$) {
  JreStrongAssign(&self->this$0_, outer$);
  NSObject_init(self);
}

LeSessionController_$1 *new_LeSessionController_$1_initWithLeSessionController_(LeSessionController *outer$) {
  J2OBJC_NEW_IMPL(LeSessionController_$1, initWithLeSessionController_, outer$)
}

LeSessionController_$1 *create_LeSessionController_$1_initWithLeSessionController_(LeSessionController *outer$) {
  J2OBJC_CREATE_IMPL(LeSessionController_$1, initWithLeSessionController_, outer$)
}

@implementation LeSessionController_$2

- (void)run {
  {
    IOSObjectArray *a__ = [((id<Mocker>) nil_chk([((id<Session>) nil_chk(this$0_->session_)) getDeviceMockerWithInt:((Event *) nil_chk(val$event_))->source_])) getDeviceListenersWithLeMockController:this$0_ withInt:val$event_->source_];
    id<LeDeviceListener> const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    id<LeDeviceListener> const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      id<LeDeviceListener> leListener = *b__++;
      [((id<LeDeviceListener>) nil_chk(leListener)) leDeviceFoundWithLeDevice:[this$0_ getDeviceWithInt:val$event_->source_] withLeRemoteDevice:[this$0_ createOrReturnRemoteDeviceWithInt:[((JavaLangInteger *) nil_chk(JavaLangInteger_valueOfWithNSString_(IOSObjectArray_Get(nil_chk(val$event_->values_), 0)))) intValue] withLeDeviceMock:[this$0_ getDeviceWithInt:val$event_->source_]] withInt:[((JavaLangInteger *) nil_chk(JavaLangInteger_valueOfWithNSString_(IOSObjectArray_Get(nil_chk(val$event_->values_), 1)))) intValue] withLeScanRecord:LeUtil_parseLeScanRecordWithByteArray_(LeUtil_stringToBytesWithNSString_(IOSObjectArray_Get(nil_chk(val$event_->values_), 2)))];
    }
  }
}

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0 {
  LeSessionController_$2_initWithLeSessionController_withEvent_(self, outer$, capture$0);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$event_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(run);
  methods[1].selector = @selector(initWithLeSessionController:withEvent:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LLeSessionController;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$event_", "LEvent;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LLeSessionController;LEvent;", "LLeSessionController;", "workOnEventWithEvent:" };
  static const J2ObjcClassInfo _LeSessionController_$2 = { "", "houtbecke.rs.le.mock", ptrTable, methods, fields, 7, 0x8008, 2, 2, 1, -1, 2, -1, -1 };
  return &_LeSessionController_$2;
}

@end

void LeSessionController_$2_initWithLeSessionController_withEvent_(LeSessionController_$2 *self, LeSessionController *outer$, Event *capture$0) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$event_, capture$0);
  NSObject_init(self);
}

LeSessionController_$2 *new_LeSessionController_$2_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) {
  J2OBJC_NEW_IMPL(LeSessionController_$2, initWithLeSessionController_withEvent_, outer$, capture$0)
}

LeSessionController_$2 *create_LeSessionController_$2_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) {
  J2OBJC_CREATE_IMPL(LeSessionController_$2, initWithLeSessionController_withEvent_, outer$, capture$0)
}

@implementation LeSessionController_$3

- (void)run {
  [((id<LeDeviceListener>) nil_chk([this$0_ getDeviceListenerWithInt:((Event *) nil_chk(val$event_))->source_])) leDeviceFoundWithLeDevice:[this$0_ getDeviceWithNSString:IOSObjectArray_Get(nil_chk(val$event_->values_), 0)] withLeRemoteDevice:[this$0_ createOrReturnRemoteDeviceWithInt:[((JavaLangInteger *) nil_chk(JavaLangInteger_valueOfWithNSString_(IOSObjectArray_Get(nil_chk(val$event_->values_), 1)))) intValue] withLeDeviceMock:[this$0_ getDeviceWithInt:val$event_->source_]] withInt:[((JavaLangInteger *) nil_chk(JavaLangInteger_valueOfWithNSString_(IOSObjectArray_Get(nil_chk(val$event_->values_), 2)))) intValue] withLeScanRecord:LeUtil_parseLeScanRecordWithByteArray_(LeUtil_stringToBytesWithNSString_(IOSObjectArray_Get(nil_chk(val$event_->values_), 3)))];
}

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0 {
  LeSessionController_$3_initWithLeSessionController_withEvent_(self, outer$, capture$0);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$event_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(run);
  methods[1].selector = @selector(initWithLeSessionController:withEvent:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LLeSessionController;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$event_", "LEvent;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LLeSessionController;LEvent;", "LLeSessionController;", "workOnEventWithEvent:" };
  static const J2ObjcClassInfo _LeSessionController_$3 = { "", "houtbecke.rs.le.mock", ptrTable, methods, fields, 7, 0x8008, 2, 2, 1, -1, 2, -1, -1 };
  return &_LeSessionController_$3;
}

@end

void LeSessionController_$3_initWithLeSessionController_withEvent_(LeSessionController_$3 *self, LeSessionController *outer$, Event *capture$0) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$event_, capture$0);
  NSObject_init(self);
}

LeSessionController_$3 *new_LeSessionController_$3_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) {
  J2OBJC_NEW_IMPL(LeSessionController_$3, initWithLeSessionController_withEvent_, outer$, capture$0)
}

LeSessionController_$3 *create_LeSessionController_$3_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) {
  J2OBJC_CREATE_IMPL(LeSessionController_$3, initWithLeSessionController_withEvent_, outer$, capture$0)
}

@implementation LeSessionController_$4

- (void)run {
  [((id<LeRemoteDeviceListener>) nil_chk(val$listener_)) leDevicesConnectedWithLeDevice:[this$0_ getDeviceWithNSString:IOSObjectArray_Get(nil_chk(((Event *) nil_chk(val$event_))->values_), 0)] withLeRemoteDevice:[this$0_ getRemoteDeviceWithInt:val$event_->source_]];
}

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                 withLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)capture$0
                                  withEvent:(Event *)capture$1 {
  LeSessionController_$4_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(self, outer$, capture$0, capture$1);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$listener_);
  RELEASE_(val$event_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(run);
  methods[1].selector = @selector(initWithLeSessionController:withLeRemoteDeviceListener:withEvent:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LLeSessionController;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$listener_", "LLeRemoteDeviceListener;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$event_", "LEvent;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LLeSessionController;LLeRemoteDeviceListener;LEvent;", "LLeSessionController;", "workOnEventWithEvent:" };
  static const J2ObjcClassInfo _LeSessionController_$4 = { "", "houtbecke.rs.le.mock", ptrTable, methods, fields, 7, 0x8008, 2, 3, 1, -1, 2, -1, -1 };
  return &_LeSessionController_$4;
}

@end

void LeSessionController_$4_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(LeSessionController_$4 *self, LeSessionController *outer$, id<LeRemoteDeviceListener> capture$0, Event *capture$1) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$listener_, capture$0);
  JreStrongAssign(&self->val$event_, capture$1);
  NSObject_init(self);
}

LeSessionController_$4 *new_LeSessionController_$4_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(LeSessionController *outer$, id<LeRemoteDeviceListener> capture$0, Event *capture$1) {
  J2OBJC_NEW_IMPL(LeSessionController_$4, initWithLeSessionController_withLeRemoteDeviceListener_withEvent_, outer$, capture$0, capture$1)
}

LeSessionController_$4 *create_LeSessionController_$4_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(LeSessionController *outer$, id<LeRemoteDeviceListener> capture$0, Event *capture$1) {
  J2OBJC_CREATE_IMPL(LeSessionController_$4, initWithLeSessionController_withLeRemoteDeviceListener_withEvent_, outer$, capture$0, capture$1)
}

@implementation LeSessionController_$5

- (void)run {
  [((id<LeRemoteDeviceListener>) nil_chk([this$0_ getRemoteDeviceListenerWithInt:((Event *) nil_chk(val$event_))->source_])) leDevicesConnectedWithLeDevice:[this$0_ getDeviceWithNSString:IOSObjectArray_Get(nil_chk(val$event_->values_), 0)] withLeRemoteDevice:[this$0_ getRemoteDeviceWithNSString:IOSObjectArray_Get(nil_chk(val$event_->values_), 1)]];
}

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0 {
  LeSessionController_$5_initWithLeSessionController_withEvent_(self, outer$, capture$0);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$event_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(run);
  methods[1].selector = @selector(initWithLeSessionController:withEvent:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LLeSessionController;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$event_", "LEvent;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LLeSessionController;LEvent;", "LLeSessionController;", "workOnEventWithEvent:" };
  static const J2ObjcClassInfo _LeSessionController_$5 = { "", "houtbecke.rs.le.mock", ptrTable, methods, fields, 7, 0x8008, 2, 2, 1, -1, 2, -1, -1 };
  return &_LeSessionController_$5;
}

@end

void LeSessionController_$5_initWithLeSessionController_withEvent_(LeSessionController_$5 *self, LeSessionController *outer$, Event *capture$0) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$event_, capture$0);
  NSObject_init(self);
}

LeSessionController_$5 *new_LeSessionController_$5_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) {
  J2OBJC_NEW_IMPL(LeSessionController_$5, initWithLeSessionController_withEvent_, outer$, capture$0)
}

LeSessionController_$5 *create_LeSessionController_$5_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) {
  J2OBJC_CREATE_IMPL(LeSessionController_$5, initWithLeSessionController_withEvent_, outer$, capture$0)
}

@implementation LeSessionController_$6

- (void)run {
  [((id<LeRemoteDeviceListener>) nil_chk(val$listener_)) leDevicesDisconnectedWithLeDevice:[this$0_ getDeviceWithNSString:IOSObjectArray_Get(nil_chk(((Event *) nil_chk(val$event_))->values_), 0)] withLeRemoteDevice:[this$0_ getRemoteDeviceWithInt:val$event_->source_]];
}

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                 withLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)capture$0
                                  withEvent:(Event *)capture$1 {
  LeSessionController_$6_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(self, outer$, capture$0, capture$1);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$listener_);
  RELEASE_(val$event_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(run);
  methods[1].selector = @selector(initWithLeSessionController:withLeRemoteDeviceListener:withEvent:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LLeSessionController;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$listener_", "LLeRemoteDeviceListener;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$event_", "LEvent;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LLeSessionController;LLeRemoteDeviceListener;LEvent;", "LLeSessionController;", "workOnEventWithEvent:" };
  static const J2ObjcClassInfo _LeSessionController_$6 = { "", "houtbecke.rs.le.mock", ptrTable, methods, fields, 7, 0x8008, 2, 3, 1, -1, 2, -1, -1 };
  return &_LeSessionController_$6;
}

@end

void LeSessionController_$6_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(LeSessionController_$6 *self, LeSessionController *outer$, id<LeRemoteDeviceListener> capture$0, Event *capture$1) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$listener_, capture$0);
  JreStrongAssign(&self->val$event_, capture$1);
  NSObject_init(self);
}

LeSessionController_$6 *new_LeSessionController_$6_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(LeSessionController *outer$, id<LeRemoteDeviceListener> capture$0, Event *capture$1) {
  J2OBJC_NEW_IMPL(LeSessionController_$6, initWithLeSessionController_withLeRemoteDeviceListener_withEvent_, outer$, capture$0, capture$1)
}

LeSessionController_$6 *create_LeSessionController_$6_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(LeSessionController *outer$, id<LeRemoteDeviceListener> capture$0, Event *capture$1) {
  J2OBJC_CREATE_IMPL(LeSessionController_$6, initWithLeSessionController_withLeRemoteDeviceListener_withEvent_, outer$, capture$0, capture$1)
}

@implementation LeSessionController_$7

- (void)run {
  [((id<LeRemoteDeviceListener>) nil_chk([this$0_ getRemoteDeviceListenerWithInt:((Event *) nil_chk(val$event_))->source_])) leDevicesDisconnectedWithLeDevice:[this$0_ getDeviceWithNSString:IOSObjectArray_Get(nil_chk(val$event_->values_), 0)] withLeRemoteDevice:[this$0_ getRemoteDeviceWithNSString:IOSObjectArray_Get(nil_chk(val$event_->values_), 1)]];
}

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0 {
  LeSessionController_$7_initWithLeSessionController_withEvent_(self, outer$, capture$0);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$event_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(run);
  methods[1].selector = @selector(initWithLeSessionController:withEvent:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LLeSessionController;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$event_", "LEvent;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LLeSessionController;LEvent;", "LLeSessionController;", "workOnEventWithEvent:" };
  static const J2ObjcClassInfo _LeSessionController_$7 = { "", "houtbecke.rs.le.mock", ptrTable, methods, fields, 7, 0x8008, 2, 2, 1, -1, 2, -1, -1 };
  return &_LeSessionController_$7;
}

@end

void LeSessionController_$7_initWithLeSessionController_withEvent_(LeSessionController_$7 *self, LeSessionController *outer$, Event *capture$0) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$event_, capture$0);
  NSObject_init(self);
}

LeSessionController_$7 *new_LeSessionController_$7_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) {
  J2OBJC_NEW_IMPL(LeSessionController_$7, initWithLeSessionController_withEvent_, outer$, capture$0)
}

LeSessionController_$7 *create_LeSessionController_$7_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) {
  J2OBJC_CREATE_IMPL(LeSessionController_$7, initWithLeSessionController_withEvent_, outer$, capture$0)
}

@implementation LeSessionController_$8

- (void)run {
  [((id<LeRemoteDeviceListener>) nil_chk(val$listener_)) leDevicesClosedWithLeDevice:[this$0_ getDeviceWithNSString:IOSObjectArray_Get(nil_chk(((Event *) nil_chk(val$event_))->values_), 0)] withLeRemoteDevice:[this$0_ getRemoteDeviceWithInt:val$event_->source_]];
}

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                 withLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)capture$0
                                  withEvent:(Event *)capture$1 {
  LeSessionController_$8_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(self, outer$, capture$0, capture$1);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$listener_);
  RELEASE_(val$event_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(run);
  methods[1].selector = @selector(initWithLeSessionController:withLeRemoteDeviceListener:withEvent:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LLeSessionController;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$listener_", "LLeRemoteDeviceListener;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$event_", "LEvent;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LLeSessionController;LLeRemoteDeviceListener;LEvent;", "LLeSessionController;", "workOnEventWithEvent:" };
  static const J2ObjcClassInfo _LeSessionController_$8 = { "", "houtbecke.rs.le.mock", ptrTable, methods, fields, 7, 0x8008, 2, 3, 1, -1, 2, -1, -1 };
  return &_LeSessionController_$8;
}

@end

void LeSessionController_$8_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(LeSessionController_$8 *self, LeSessionController *outer$, id<LeRemoteDeviceListener> capture$0, Event *capture$1) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$listener_, capture$0);
  JreStrongAssign(&self->val$event_, capture$1);
  NSObject_init(self);
}

LeSessionController_$8 *new_LeSessionController_$8_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(LeSessionController *outer$, id<LeRemoteDeviceListener> capture$0, Event *capture$1) {
  J2OBJC_NEW_IMPL(LeSessionController_$8, initWithLeSessionController_withLeRemoteDeviceListener_withEvent_, outer$, capture$0, capture$1)
}

LeSessionController_$8 *create_LeSessionController_$8_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(LeSessionController *outer$, id<LeRemoteDeviceListener> capture$0, Event *capture$1) {
  J2OBJC_CREATE_IMPL(LeSessionController_$8, initWithLeSessionController_withLeRemoteDeviceListener_withEvent_, outer$, capture$0, capture$1)
}

@implementation LeSessionController_$9

- (void)run {
  [((id<LeRemoteDeviceListener>) nil_chk([this$0_ getRemoteDeviceListenerWithInt:((Event *) nil_chk(val$event_))->source_])) leDevicesClosedWithLeDevice:[this$0_ getDeviceWithNSString:IOSObjectArray_Get(nil_chk(val$event_->values_), 0)] withLeRemoteDevice:[this$0_ getRemoteDeviceWithNSString:IOSObjectArray_Get(nil_chk(val$event_->values_), 1)]];
}

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0 {
  LeSessionController_$9_initWithLeSessionController_withEvent_(self, outer$, capture$0);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$event_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(run);
  methods[1].selector = @selector(initWithLeSessionController:withEvent:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LLeSessionController;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$event_", "LEvent;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LLeSessionController;LEvent;", "LLeSessionController;", "workOnEventWithEvent:" };
  static const J2ObjcClassInfo _LeSessionController_$9 = { "", "houtbecke.rs.le.mock", ptrTable, methods, fields, 7, 0x8008, 2, 2, 1, -1, 2, -1, -1 };
  return &_LeSessionController_$9;
}

@end

void LeSessionController_$9_initWithLeSessionController_withEvent_(LeSessionController_$9 *self, LeSessionController *outer$, Event *capture$0) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$event_, capture$0);
  NSObject_init(self);
}

LeSessionController_$9 *new_LeSessionController_$9_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) {
  J2OBJC_NEW_IMPL(LeSessionController_$9, initWithLeSessionController_withEvent_, outer$, capture$0)
}

LeSessionController_$9 *create_LeSessionController_$9_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) {
  J2OBJC_CREATE_IMPL(LeSessionController_$9, initWithLeSessionController_withEvent_, outer$, capture$0)
}

@implementation LeSessionController_$10

- (void)run {
  IOSObjectArray *services = [IOSObjectArray arrayWithLength:((IOSObjectArray *) nil_chk(((Event *) nil_chk(val$event_))->values_))->size_ - 2 type:LeGattServiceMock_class_()];
  for (jint k = 0; k < services->size_; k++) IOSObjectArray_Set(services, k, [this$0_ createGattServiceWithNSString:IOSObjectArray_Get(nil_chk(val$event_->values_), k + 2)]);
  [((id<LeRemoteDeviceListener>) nil_chk(val$listener_)) serviceDiscoveredWithLeDevice:[this$0_ getDeviceWithNSString:IOSObjectArray_Get(nil_chk(val$event_->values_), 0)] withLeRemoteDevice:[this$0_ getRemoteDeviceWithInt:val$event_->source_] withLeGattStatus:LeGattStatus_fromStringWithNSString_(IOSObjectArray_Get(nil_chk(val$event_->values_), 1)) withLeGattServiceArray:services];
}

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0
                 withLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)capture$1 {
  LeSessionController_$10_initWithLeSessionController_withEvent_withLeRemoteDeviceListener_(self, outer$, capture$0, capture$1);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$event_);
  RELEASE_(val$listener_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(run);
  methods[1].selector = @selector(initWithLeSessionController:withEvent:withLeRemoteDeviceListener:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LLeSessionController;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$event_", "LEvent;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$listener_", "LLeRemoteDeviceListener;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LLeSessionController;LEvent;LLeRemoteDeviceListener;", "LLeSessionController;", "workOnEventWithEvent:" };
  static const J2ObjcClassInfo _LeSessionController_$10 = { "", "houtbecke.rs.le.mock", ptrTable, methods, fields, 7, 0x8008, 2, 3, 1, -1, 2, -1, -1 };
  return &_LeSessionController_$10;
}

@end

void LeSessionController_$10_initWithLeSessionController_withEvent_withLeRemoteDeviceListener_(LeSessionController_$10 *self, LeSessionController *outer$, Event *capture$0, id<LeRemoteDeviceListener> capture$1) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$event_, capture$0);
  JreStrongAssign(&self->val$listener_, capture$1);
  NSObject_init(self);
}

LeSessionController_$10 *new_LeSessionController_$10_initWithLeSessionController_withEvent_withLeRemoteDeviceListener_(LeSessionController *outer$, Event *capture$0, id<LeRemoteDeviceListener> capture$1) {
  J2OBJC_NEW_IMPL(LeSessionController_$10, initWithLeSessionController_withEvent_withLeRemoteDeviceListener_, outer$, capture$0, capture$1)
}

LeSessionController_$10 *create_LeSessionController_$10_initWithLeSessionController_withEvent_withLeRemoteDeviceListener_(LeSessionController *outer$, Event *capture$0, id<LeRemoteDeviceListener> capture$1) {
  J2OBJC_CREATE_IMPL(LeSessionController_$10, initWithLeSessionController_withEvent_withLeRemoteDeviceListener_, outer$, capture$0, capture$1)
}

@implementation LeSessionController_$11

- (void)run {
  IOSObjectArray *services = [IOSObjectArray arrayWithLength:((IOSObjectArray *) nil_chk(((Event *) nil_chk(val$event_))->values_))->size_ - 3 type:LeGattServiceMock_class_()];
  for (jint k = 0; k < services->size_; k++) IOSObjectArray_Set(services, k, [this$0_ createGattServiceWithNSString:IOSObjectArray_Get(nil_chk(val$event_->values_), k + 3)]);
  [((id<LeRemoteDeviceListener>) nil_chk([this$0_ getRemoteDeviceListenerWithInt:val$event_->source_])) serviceDiscoveredWithLeDevice:[this$0_ getDeviceWithNSString:IOSObjectArray_Get(nil_chk(val$event_->values_), 0)] withLeRemoteDevice:[this$0_ getRemoteDeviceWithNSString:IOSObjectArray_Get(nil_chk(val$event_->values_), 1)] withLeGattStatus:LeGattStatus_fromStringWithNSString_(IOSObjectArray_Get(nil_chk(val$event_->values_), 2)) withLeGattServiceArray:services];
}

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0 {
  LeSessionController_$11_initWithLeSessionController_withEvent_(self, outer$, capture$0);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$event_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(run);
  methods[1].selector = @selector(initWithLeSessionController:withEvent:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LLeSessionController;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$event_", "LEvent;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LLeSessionController;LEvent;", "LLeSessionController;", "workOnEventWithEvent:" };
  static const J2ObjcClassInfo _LeSessionController_$11 = { "", "houtbecke.rs.le.mock", ptrTable, methods, fields, 7, 0x8008, 2, 2, 1, -1, 2, -1, -1 };
  return &_LeSessionController_$11;
}

@end

void LeSessionController_$11_initWithLeSessionController_withEvent_(LeSessionController_$11 *self, LeSessionController *outer$, Event *capture$0) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$event_, capture$0);
  NSObject_init(self);
}

LeSessionController_$11 *new_LeSessionController_$11_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) {
  J2OBJC_NEW_IMPL(LeSessionController_$11, initWithLeSessionController_withEvent_, outer$, capture$0)
}

LeSessionController_$11 *create_LeSessionController_$11_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) {
  J2OBJC_CREATE_IMPL(LeSessionController_$11, initWithLeSessionController_withEvent_, outer$, capture$0)
}

@implementation LeSessionController_$12

- (void)run {
  [((id<LeRemoteDeviceListener>) nil_chk([this$0_ getRemoteDeviceListenerWithInt:((Event *) nil_chk(val$event_))->source_])) rssiReadWithLeDevice:[this$0_ getDeviceWithNSString:IOSObjectArray_Get(nil_chk(val$event_->values_), 0)] withLeRemoteDevice:[this$0_ getRemoteDeviceWithNSString:IOSObjectArray_Get(nil_chk(val$event_->values_), 1)] withInt:[((JavaLangInteger *) nil_chk(JavaLangInteger_valueOfWithNSString_(IOSObjectArray_Get(nil_chk(val$event_->values_), 2)))) intValue]];
}

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0 {
  LeSessionController_$12_initWithLeSessionController_withEvent_(self, outer$, capture$0);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$event_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(run);
  methods[1].selector = @selector(initWithLeSessionController:withEvent:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LLeSessionController;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$event_", "LEvent;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LLeSessionController;LEvent;", "LLeSessionController;", "workOnEventWithEvent:" };
  static const J2ObjcClassInfo _LeSessionController_$12 = { "", "houtbecke.rs.le.mock", ptrTable, methods, fields, 7, 0x8008, 2, 2, 1, -1, 2, -1, -1 };
  return &_LeSessionController_$12;
}

@end

void LeSessionController_$12_initWithLeSessionController_withEvent_(LeSessionController_$12 *self, LeSessionController *outer$, Event *capture$0) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$event_, capture$0);
  NSObject_init(self);
}

LeSessionController_$12 *new_LeSessionController_$12_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) {
  J2OBJC_NEW_IMPL(LeSessionController_$12, initWithLeSessionController_withEvent_, outer$, capture$0)
}

LeSessionController_$12 *create_LeSessionController_$12_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) {
  J2OBJC_CREATE_IMPL(LeSessionController_$12, initWithLeSessionController_withEvent_, outer$, capture$0)
}

@implementation LeSessionController_$13

- (void)run {
  {
    IOSObjectArray *a__ = [((id<Mocker>) nil_chk([((id<Session>) nil_chk(this$0_->session_)) getRemoteDeviceMockerWithInt:((Event *) nil_chk(val$event_))->source_])) getCharacteristicListenersWithLeMockController:this$0_ withInt:val$event_->source_];
    id<LeCharacteristicListener> const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    id<LeCharacteristicListener> const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      id<LeCharacteristicListener> leCharacteristicListener = *b__++;
      [((id<LeCharacteristicListener>) nil_chk(leCharacteristicListener)) leCharacteristicChangedWithJavaUtilUUID:val$uuid_ withLeRemoteDevice:[this$0_ getRemoteDeviceWithInt:val$event_->source_] withLeGattCharacteristic:val$characteristic_];
    }
  }
}

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0
                           withJavaUtilUUID:(JavaUtilUUID *)capture$1
                   withLeGattCharacteristic:(id<LeGattCharacteristic>)capture$2 {
  LeSessionController_$13_initWithLeSessionController_withEvent_withJavaUtilUUID_withLeGattCharacteristic_(self, outer$, capture$0, capture$1, capture$2);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$event_);
  RELEASE_(val$uuid_);
  RELEASE_(val$characteristic_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(run);
  methods[1].selector = @selector(initWithLeSessionController:withEvent:withJavaUtilUUID:withLeGattCharacteristic:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LLeSessionController;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$event_", "LEvent;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$uuid_", "LJavaUtilUUID;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$characteristic_", "LLeGattCharacteristic;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LLeSessionController;LEvent;LJavaUtilUUID;LLeGattCharacteristic;", "LLeSessionController;", "workOnEventWithEvent:" };
  static const J2ObjcClassInfo _LeSessionController_$13 = { "", "houtbecke.rs.le.mock", ptrTable, methods, fields, 7, 0x8008, 2, 4, 1, -1, 2, -1, -1 };
  return &_LeSessionController_$13;
}

@end

void LeSessionController_$13_initWithLeSessionController_withEvent_withJavaUtilUUID_withLeGattCharacteristic_(LeSessionController_$13 *self, LeSessionController *outer$, Event *capture$0, JavaUtilUUID *capture$1, id<LeGattCharacteristic> capture$2) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$event_, capture$0);
  JreStrongAssign(&self->val$uuid_, capture$1);
  JreStrongAssign(&self->val$characteristic_, capture$2);
  NSObject_init(self);
}

LeSessionController_$13 *new_LeSessionController_$13_initWithLeSessionController_withEvent_withJavaUtilUUID_withLeGattCharacteristic_(LeSessionController *outer$, Event *capture$0, JavaUtilUUID *capture$1, id<LeGattCharacteristic> capture$2) {
  J2OBJC_NEW_IMPL(LeSessionController_$13, initWithLeSessionController_withEvent_withJavaUtilUUID_withLeGattCharacteristic_, outer$, capture$0, capture$1, capture$2)
}

LeSessionController_$13 *create_LeSessionController_$13_initWithLeSessionController_withEvent_withJavaUtilUUID_withLeGattCharacteristic_(LeSessionController *outer$, Event *capture$0, JavaUtilUUID *capture$1, id<LeGattCharacteristic> capture$2) {
  J2OBJC_CREATE_IMPL(LeSessionController_$13, initWithLeSessionController_withEvent_withJavaUtilUUID_withLeGattCharacteristic_, outer$, capture$0, capture$1, capture$2)
}

@implementation LeSessionController_$14

- (void)run {
  JavaUtilUUID *uuid = nil;
  if (IOSObjectArray_Get(nil_chk(((Event *) nil_chk(val$event_))->values_), 0) != nil && ![((NSString *) nil_chk(IOSObjectArray_Get(val$event_->values_, 0))) isEqual:@"null"]) uuid = JavaUtilUUID_fromStringWithNSString_(IOSObjectArray_Get(nil_chk(val$event_->values_), 0));
  [((id<LeCharacteristicListener>) nil_chk([this$0_ getCharacteristicListenerWithInt:val$event_->source_])) leCharacteristicChangedWithJavaUtilUUID:uuid withLeRemoteDevice:[this$0_ getRemoteDeviceWithNSString:IOSObjectArray_Get(nil_chk(val$event_->values_), 1)] withLeGattCharacteristic:[this$0_ getCharacteristicWithNSString:IOSObjectArray_Get(nil_chk(val$event_->values_), 2)]];
}

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0 {
  LeSessionController_$14_initWithLeSessionController_withEvent_(self, outer$, capture$0);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$event_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(run);
  methods[1].selector = @selector(initWithLeSessionController:withEvent:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LLeSessionController;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$event_", "LEvent;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LLeSessionController;LEvent;", "LLeSessionController;", "workOnEventWithEvent:" };
  static const J2ObjcClassInfo _LeSessionController_$14 = { "", "houtbecke.rs.le.mock", ptrTable, methods, fields, 7, 0x8008, 2, 2, 1, -1, 2, -1, -1 };
  return &_LeSessionController_$14;
}

@end

void LeSessionController_$14_initWithLeSessionController_withEvent_(LeSessionController_$14 *self, LeSessionController *outer$, Event *capture$0) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$event_, capture$0);
  NSObject_init(self);
}

LeSessionController_$14 *new_LeSessionController_$14_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) {
  J2OBJC_NEW_IMPL(LeSessionController_$14, initWithLeSessionController_withEvent_, outer$, capture$0)
}

LeSessionController_$14 *create_LeSessionController_$14_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) {
  J2OBJC_CREATE_IMPL(LeSessionController_$14, initWithLeSessionController_withEvent_, outer$, capture$0)
}

@implementation LeSessionController_$15

- (void)run {
  JavaUtilUUID *uuid = nil;
  if (IOSObjectArray_Get(nil_chk(((Event *) nil_chk(val$event_))->values_), 0) != nil && ![((NSString *) nil_chk(IOSObjectArray_Get(val$event_->values_, 0))) isEqual:@"null"]) uuid = JavaUtilUUID_fromStringWithNSString_(IOSObjectArray_Get(nil_chk(val$event_->values_), 0));
  id<LeCharacteristicWriteListener> characteristicWriteListener = [this$0_ getCharacteristicWriteListenerWithInt:val$event_->source_];
  [((id<LeCharacteristicWriteListener>) nil_chk(characteristicWriteListener)) leCharacteristicWrittenWithJavaUtilUUID:uuid withLeRemoteDevice:[this$0_ getRemoteDeviceWithNSString:IOSObjectArray_Get(nil_chk(val$event_->values_), 1)] withLeGattCharacteristic:[this$0_ getCharacteristicWithNSString:IOSObjectArray_Get(nil_chk(val$event_->values_), 2)] withBoolean:true];
}

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0 {
  LeSessionController_$15_initWithLeSessionController_withEvent_(self, outer$, capture$0);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$event_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(run);
  methods[1].selector = @selector(initWithLeSessionController:withEvent:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LLeSessionController;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$event_", "LEvent;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LLeSessionController;LEvent;", "LLeSessionController;", "workOnEventWithEvent:" };
  static const J2ObjcClassInfo _LeSessionController_$15 = { "", "houtbecke.rs.le.mock", ptrTable, methods, fields, 7, 0x8008, 2, 2, 1, -1, 2, -1, -1 };
  return &_LeSessionController_$15;
}

@end

void LeSessionController_$15_initWithLeSessionController_withEvent_(LeSessionController_$15 *self, LeSessionController *outer$, Event *capture$0) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$event_, capture$0);
  NSObject_init(self);
}

LeSessionController_$15 *new_LeSessionController_$15_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) {
  J2OBJC_NEW_IMPL(LeSessionController_$15, initWithLeSessionController_withEvent_, outer$, capture$0)
}

LeSessionController_$15 *create_LeSessionController_$15_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) {
  J2OBJC_CREATE_IMPL(LeSessionController_$15, initWithLeSessionController_withEvent_, outer$, capture$0)
}

@implementation LeSessionController_$16

- (void)run {
  {
    IOSObjectArray *a__ = [((id<Mocker>) nil_chk([((id<Session>) nil_chk(this$0_->session_)) getRemoteDeviceMockerWithInt:[((JavaLangInteger *) nil_chk(JavaLangInteger_valueOfWithNSString_(IOSObjectArray_Get(nil_chk(((Event *) nil_chk(val$event_))->values_), 2)))) intValue]])) getCharacteristicListenersWithLeMockController:this$0_ withInt:[((JavaLangInteger *) nil_chk(JavaLangInteger_valueOfWithNSString_(IOSObjectArray_Get(nil_chk(val$event_->values_), 2)))) intValue]];
    id<LeCharacteristicListener> const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    id<LeCharacteristicListener> const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      id<LeCharacteristicListener> leCharacteristicListener = *b__++;
      [((id<LeCharacteristicListener>) nil_chk(leCharacteristicListener)) leCharacteristicNotificationChangedWithJavaUtilUUID:val$uuid2_ withLeRemoteDevice:[this$0_ getRemoteDeviceWithNSString:IOSObjectArray_Get(nil_chk(val$event_->values_), 2)] withLeGattCharacteristic:val$characteristic2_ withBoolean:JavaLangBoolean_parseBooleanWithNSString_(IOSObjectArray_Get(nil_chk(val$event_->values_), 3))];
    }
  }
}

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0
                           withJavaUtilUUID:(JavaUtilUUID *)capture$1
                   withLeGattCharacteristic:(id<LeGattCharacteristic>)capture$2 {
  LeSessionController_$16_initWithLeSessionController_withEvent_withJavaUtilUUID_withLeGattCharacteristic_(self, outer$, capture$0, capture$1, capture$2);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$event_);
  RELEASE_(val$uuid2_);
  RELEASE_(val$characteristic2_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(run);
  methods[1].selector = @selector(initWithLeSessionController:withEvent:withJavaUtilUUID:withLeGattCharacteristic:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LLeSessionController;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$event_", "LEvent;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$uuid2_", "LJavaUtilUUID;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$characteristic2_", "LLeGattCharacteristic;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LLeSessionController;LEvent;LJavaUtilUUID;LLeGattCharacteristic;", "LLeSessionController;", "workOnEventWithEvent:" };
  static const J2ObjcClassInfo _LeSessionController_$16 = { "", "houtbecke.rs.le.mock", ptrTable, methods, fields, 7, 0x8008, 2, 4, 1, -1, 2, -1, -1 };
  return &_LeSessionController_$16;
}

@end

void LeSessionController_$16_initWithLeSessionController_withEvent_withJavaUtilUUID_withLeGattCharacteristic_(LeSessionController_$16 *self, LeSessionController *outer$, Event *capture$0, JavaUtilUUID *capture$1, id<LeGattCharacteristic> capture$2) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$event_, capture$0);
  JreStrongAssign(&self->val$uuid2_, capture$1);
  JreStrongAssign(&self->val$characteristic2_, capture$2);
  NSObject_init(self);
}

LeSessionController_$16 *new_LeSessionController_$16_initWithLeSessionController_withEvent_withJavaUtilUUID_withLeGattCharacteristic_(LeSessionController *outer$, Event *capture$0, JavaUtilUUID *capture$1, id<LeGattCharacteristic> capture$2) {
  J2OBJC_NEW_IMPL(LeSessionController_$16, initWithLeSessionController_withEvent_withJavaUtilUUID_withLeGattCharacteristic_, outer$, capture$0, capture$1, capture$2)
}

LeSessionController_$16 *create_LeSessionController_$16_initWithLeSessionController_withEvent_withJavaUtilUUID_withLeGattCharacteristic_(LeSessionController *outer$, Event *capture$0, JavaUtilUUID *capture$1, id<LeGattCharacteristic> capture$2) {
  J2OBJC_CREATE_IMPL(LeSessionController_$16, initWithLeSessionController_withEvent_withJavaUtilUUID_withLeGattCharacteristic_, outer$, capture$0, capture$1, capture$2)
}

@implementation LeSessionController_$17

- (void)run {
  JavaUtilUUID *uuid = nil;
  if (IOSObjectArray_Get(nil_chk(((Event *) nil_chk(val$event_))->values_), 0) != nil && ![((NSString *) nil_chk(IOSObjectArray_Get(val$event_->values_, 0))) isEqual:@"null"]) uuid = JavaUtilUUID_fromStringWithNSString_(IOSObjectArray_Get(nil_chk(val$event_->values_), 0));
  [((id<LeCharacteristicListener>) nil_chk([this$0_ getCharacteristicListenerWithInt:val$event_->source_])) leCharacteristicNotificationChangedWithJavaUtilUUID:uuid withLeRemoteDevice:[this$0_ getRemoteDeviceWithNSString:IOSObjectArray_Get(nil_chk(val$event_->values_), 1)] withLeGattCharacteristic:[this$0_ getCharacteristicWithNSString:IOSObjectArray_Get(nil_chk(val$event_->values_), 2)] withBoolean:JavaLangBoolean_parseBooleanWithNSString_(IOSObjectArray_Get(nil_chk(val$event_->values_), 3))];
}

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0 {
  LeSessionController_$17_initWithLeSessionController_withEvent_(self, outer$, capture$0);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$event_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(run);
  methods[1].selector = @selector(initWithLeSessionController:withEvent:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LLeSessionController;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$event_", "LEvent;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LLeSessionController;LEvent;", "LLeSessionController;", "workOnEventWithEvent:" };
  static const J2ObjcClassInfo _LeSessionController_$17 = { "", "houtbecke.rs.le.mock", ptrTable, methods, fields, 7, 0x8008, 2, 2, 1, -1, 2, -1, -1 };
  return &_LeSessionController_$17;
}

@end

void LeSessionController_$17_initWithLeSessionController_withEvent_(LeSessionController_$17 *self, LeSessionController *outer$, Event *capture$0) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$event_, capture$0);
  NSObject_init(self);
}

LeSessionController_$17 *new_LeSessionController_$17_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) {
  J2OBJC_NEW_IMPL(LeSessionController_$17, initWithLeSessionController_withEvent_, outer$, capture$0)
}

LeSessionController_$17 *create_LeSessionController_$17_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) {
  J2OBJC_CREATE_IMPL(LeSessionController_$17, initWithLeSessionController_withEvent_, outer$, capture$0)
}
