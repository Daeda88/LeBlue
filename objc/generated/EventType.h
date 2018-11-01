
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_EventType")
#ifdef RESTRICT_EventType
#define INCLUDE_ALL_EventType 0
#else
#define INCLUDE_ALL_EventType 1
#endif
#undef RESTRICT_EventType

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (EventType_) && (INCLUDE_ALL_EventType || defined(INCLUDE_EventType))
#define EventType_

@protocol EventType < JavaObject >

@end

J2OBJC_EMPTY_STATIC_INIT(EventType)

J2OBJC_TYPE_LITERAL_HEADER(EventType)

#define HoutbeckeRsLeSessionEventType EventType

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_EventType")
