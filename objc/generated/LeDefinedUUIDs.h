
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_LeDefinedUUIDs")
#ifdef RESTRICT_LeDefinedUUIDs
#define INCLUDE_ALL_LeDefinedUUIDs 0
#else
#define INCLUDE_ALL_LeDefinedUUIDs 1
#endif
#undef RESTRICT_LeDefinedUUIDs

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (LeDefinedUUIDs_) && (INCLUDE_ALL_LeDefinedUUIDs || defined(INCLUDE_LeDefinedUUIDs))
#define LeDefinedUUIDs_

@interface LeDefinedUUIDs : NSObject

#pragma mark Public

- (instancetype __nonnull)init;

@end

J2OBJC_EMPTY_STATIC_INIT(LeDefinedUUIDs)

FOUNDATION_EXPORT void LeDefinedUUIDs_init(LeDefinedUUIDs *self);

FOUNDATION_EXPORT LeDefinedUUIDs *new_LeDefinedUUIDs_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT LeDefinedUUIDs *create_LeDefinedUUIDs_init(void);

J2OBJC_TYPE_LITERAL_HEADER(LeDefinedUUIDs)

@compatibility_alias HoutbeckeRsLeLeDefinedUUIDs LeDefinedUUIDs;

#endif

#if !defined (LeDefinedUUIDs_Service_) && (INCLUDE_ALL_LeDefinedUUIDs || defined(INCLUDE_LeDefinedUUIDs_Service))
#define LeDefinedUUIDs_Service_

@class JavaUtilUUID;

@interface LeDefinedUUIDs_Service : NSObject

+ (JavaUtilUUID *)HEART_RATE;

+ (JavaUtilUUID *)CYCLING_POWER;

+ (JavaUtilUUID *)CYCLING_SPEED_AND_CADENCE;

+ (JavaUtilUUID *)RUNNING_SPEED_AND_CADENCE;

+ (JavaUtilUUID *)FITNESS_MACHINE;

+ (JavaUtilUUID *)BATTERY;

+ (JavaUtilUUID *)DEVICE_INFORMATION;

+ (JavaUtilUUID *)GENERIC_ATTRIBUTE;

#pragma mark Public

- (instancetype __nonnull)init;

@end

J2OBJC_STATIC_INIT(LeDefinedUUIDs_Service)

inline JavaUtilUUID *LeDefinedUUIDs_Service_get_HEART_RATE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilUUID *LeDefinedUUIDs_Service_HEART_RATE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(LeDefinedUUIDs_Service, HEART_RATE, JavaUtilUUID *)

inline JavaUtilUUID *LeDefinedUUIDs_Service_get_CYCLING_POWER(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilUUID *LeDefinedUUIDs_Service_CYCLING_POWER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(LeDefinedUUIDs_Service, CYCLING_POWER, JavaUtilUUID *)

inline JavaUtilUUID *LeDefinedUUIDs_Service_get_CYCLING_SPEED_AND_CADENCE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilUUID *LeDefinedUUIDs_Service_CYCLING_SPEED_AND_CADENCE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(LeDefinedUUIDs_Service, CYCLING_SPEED_AND_CADENCE, JavaUtilUUID *)

inline JavaUtilUUID *LeDefinedUUIDs_Service_get_RUNNING_SPEED_AND_CADENCE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilUUID *LeDefinedUUIDs_Service_RUNNING_SPEED_AND_CADENCE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(LeDefinedUUIDs_Service, RUNNING_SPEED_AND_CADENCE, JavaUtilUUID *)

inline JavaUtilUUID *LeDefinedUUIDs_Service_get_FITNESS_MACHINE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilUUID *LeDefinedUUIDs_Service_FITNESS_MACHINE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(LeDefinedUUIDs_Service, FITNESS_MACHINE, JavaUtilUUID *)

inline JavaUtilUUID *LeDefinedUUIDs_Service_get_BATTERY(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilUUID *LeDefinedUUIDs_Service_BATTERY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(LeDefinedUUIDs_Service, BATTERY, JavaUtilUUID *)

inline JavaUtilUUID *LeDefinedUUIDs_Service_get_DEVICE_INFORMATION(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilUUID *LeDefinedUUIDs_Service_DEVICE_INFORMATION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(LeDefinedUUIDs_Service, DEVICE_INFORMATION, JavaUtilUUID *)

inline JavaUtilUUID *LeDefinedUUIDs_Service_get_GENERIC_ATTRIBUTE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilUUID *LeDefinedUUIDs_Service_GENERIC_ATTRIBUTE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(LeDefinedUUIDs_Service, GENERIC_ATTRIBUTE, JavaUtilUUID *)

FOUNDATION_EXPORT void LeDefinedUUIDs_Service_init(LeDefinedUUIDs_Service *self);

FOUNDATION_EXPORT LeDefinedUUIDs_Service *new_LeDefinedUUIDs_Service_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT LeDefinedUUIDs_Service *create_LeDefinedUUIDs_Service_init(void);

J2OBJC_TYPE_LITERAL_HEADER(LeDefinedUUIDs_Service)

#endif

#if !defined (LeDefinedUUIDs_Characteristic_) && (INCLUDE_ALL_LeDefinedUUIDs || defined(INCLUDE_LeDefinedUUIDs_Characteristic))
#define LeDefinedUUIDs_Characteristic_

@class JavaUtilUUID;

@interface LeDefinedUUIDs_Characteristic : NSObject

+ (JavaUtilUUID *)HEART_RATE_MEASUREMENT;

+ (JavaUtilUUID *)MANUFACTURER_STRING;

+ (JavaUtilUUID *)MODEL_NUMBER_STRING;

+ (JavaUtilUUID *)SERIAL_NUMBER_STRING;

+ (JavaUtilUUID *)FIRMWARE_REVISION_STRING;

+ (JavaUtilUUID *)HARDWARE_REVISION_STRING;

+ (JavaUtilUUID *)APPEARANCE;

+ (JavaUtilUUID *)BODY_SENSOR_LOCATION;

+ (JavaUtilUUID *)BATTERY_LEVEL;

+ (JavaUtilUUID *)SENSOR_LOCATION;

+ (JavaUtilUUID *)CYCLING_POWER_MEASUREMENT;

+ (JavaUtilUUID *)CYCLING_POWER_VECTOR;

+ (JavaUtilUUID *)CYCLING_POWER_FEATURE;

+ (JavaUtilUUID *)CYCLING_POWER_CONTROL_POINT;

+ (JavaUtilUUID *)CSC_MEASUREMENT;

+ (JavaUtilUUID *)SERVICE_CHANGED;

+ (JavaUtilUUID *)FITNESS_MACHINE_FEATURE;

+ (JavaUtilUUID *)INDOOR_BIKE_DATA;

+ (JavaUtilUUID *)TRAINING_STATUS;

+ (JavaUtilUUID *)SUPPORTED_SPEED_RANGE;

+ (JavaUtilUUID *)SUPPORTED_INCLINATION_RANGE;

+ (JavaUtilUUID *)SUPPORTED_RESISTANCE_LEVEL_RANGE;

+ (JavaUtilUUID *)SUPPORTED_HEART_RATE_RANGE;

+ (JavaUtilUUID *)SUPPORTED_POWER_RANGE;

+ (JavaUtilUUID *)FITNESS_MACHINE_CONTROL_POINT;

+ (JavaUtilUUID *)FITNESS_MACHINE_STATUS;

#pragma mark Public

- (instancetype __nonnull)init;

@end

J2OBJC_STATIC_INIT(LeDefinedUUIDs_Characteristic)

inline JavaUtilUUID *LeDefinedUUIDs_Characteristic_get_HEART_RATE_MEASUREMENT(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilUUID *LeDefinedUUIDs_Characteristic_HEART_RATE_MEASUREMENT;
J2OBJC_STATIC_FIELD_OBJ_FINAL(LeDefinedUUIDs_Characteristic, HEART_RATE_MEASUREMENT, JavaUtilUUID *)

inline JavaUtilUUID *LeDefinedUUIDs_Characteristic_get_MANUFACTURER_STRING(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilUUID *LeDefinedUUIDs_Characteristic_MANUFACTURER_STRING;
J2OBJC_STATIC_FIELD_OBJ_FINAL(LeDefinedUUIDs_Characteristic, MANUFACTURER_STRING, JavaUtilUUID *)

inline JavaUtilUUID *LeDefinedUUIDs_Characteristic_get_MODEL_NUMBER_STRING(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilUUID *LeDefinedUUIDs_Characteristic_MODEL_NUMBER_STRING;
J2OBJC_STATIC_FIELD_OBJ_FINAL(LeDefinedUUIDs_Characteristic, MODEL_NUMBER_STRING, JavaUtilUUID *)

inline JavaUtilUUID *LeDefinedUUIDs_Characteristic_get_SERIAL_NUMBER_STRING(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilUUID *LeDefinedUUIDs_Characteristic_SERIAL_NUMBER_STRING;
J2OBJC_STATIC_FIELD_OBJ_FINAL(LeDefinedUUIDs_Characteristic, SERIAL_NUMBER_STRING, JavaUtilUUID *)

inline JavaUtilUUID *LeDefinedUUIDs_Characteristic_get_FIRMWARE_REVISION_STRING(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilUUID *LeDefinedUUIDs_Characteristic_FIRMWARE_REVISION_STRING;
J2OBJC_STATIC_FIELD_OBJ_FINAL(LeDefinedUUIDs_Characteristic, FIRMWARE_REVISION_STRING, JavaUtilUUID *)

inline JavaUtilUUID *LeDefinedUUIDs_Characteristic_get_HARDWARE_REVISION_STRING(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilUUID *LeDefinedUUIDs_Characteristic_HARDWARE_REVISION_STRING;
J2OBJC_STATIC_FIELD_OBJ_FINAL(LeDefinedUUIDs_Characteristic, HARDWARE_REVISION_STRING, JavaUtilUUID *)

inline JavaUtilUUID *LeDefinedUUIDs_Characteristic_get_APPEARANCE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilUUID *LeDefinedUUIDs_Characteristic_APPEARANCE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(LeDefinedUUIDs_Characteristic, APPEARANCE, JavaUtilUUID *)

inline JavaUtilUUID *LeDefinedUUIDs_Characteristic_get_BODY_SENSOR_LOCATION(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilUUID *LeDefinedUUIDs_Characteristic_BODY_SENSOR_LOCATION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(LeDefinedUUIDs_Characteristic, BODY_SENSOR_LOCATION, JavaUtilUUID *)

inline JavaUtilUUID *LeDefinedUUIDs_Characteristic_get_BATTERY_LEVEL(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilUUID *LeDefinedUUIDs_Characteristic_BATTERY_LEVEL;
J2OBJC_STATIC_FIELD_OBJ_FINAL(LeDefinedUUIDs_Characteristic, BATTERY_LEVEL, JavaUtilUUID *)

inline JavaUtilUUID *LeDefinedUUIDs_Characteristic_get_SENSOR_LOCATION(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilUUID *LeDefinedUUIDs_Characteristic_SENSOR_LOCATION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(LeDefinedUUIDs_Characteristic, SENSOR_LOCATION, JavaUtilUUID *)

inline JavaUtilUUID *LeDefinedUUIDs_Characteristic_get_CYCLING_POWER_MEASUREMENT(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilUUID *LeDefinedUUIDs_Characteristic_CYCLING_POWER_MEASUREMENT;
J2OBJC_STATIC_FIELD_OBJ_FINAL(LeDefinedUUIDs_Characteristic, CYCLING_POWER_MEASUREMENT, JavaUtilUUID *)

inline JavaUtilUUID *LeDefinedUUIDs_Characteristic_get_CYCLING_POWER_VECTOR(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilUUID *LeDefinedUUIDs_Characteristic_CYCLING_POWER_VECTOR;
J2OBJC_STATIC_FIELD_OBJ_FINAL(LeDefinedUUIDs_Characteristic, CYCLING_POWER_VECTOR, JavaUtilUUID *)

inline JavaUtilUUID *LeDefinedUUIDs_Characteristic_get_CYCLING_POWER_FEATURE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilUUID *LeDefinedUUIDs_Characteristic_CYCLING_POWER_FEATURE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(LeDefinedUUIDs_Characteristic, CYCLING_POWER_FEATURE, JavaUtilUUID *)

inline JavaUtilUUID *LeDefinedUUIDs_Characteristic_get_CYCLING_POWER_CONTROL_POINT(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilUUID *LeDefinedUUIDs_Characteristic_CYCLING_POWER_CONTROL_POINT;
J2OBJC_STATIC_FIELD_OBJ_FINAL(LeDefinedUUIDs_Characteristic, CYCLING_POWER_CONTROL_POINT, JavaUtilUUID *)

inline JavaUtilUUID *LeDefinedUUIDs_Characteristic_get_CSC_MEASUREMENT(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilUUID *LeDefinedUUIDs_Characteristic_CSC_MEASUREMENT;
J2OBJC_STATIC_FIELD_OBJ_FINAL(LeDefinedUUIDs_Characteristic, CSC_MEASUREMENT, JavaUtilUUID *)

inline JavaUtilUUID *LeDefinedUUIDs_Characteristic_get_SERVICE_CHANGED(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilUUID *LeDefinedUUIDs_Characteristic_SERVICE_CHANGED;
J2OBJC_STATIC_FIELD_OBJ_FINAL(LeDefinedUUIDs_Characteristic, SERVICE_CHANGED, JavaUtilUUID *)

inline JavaUtilUUID *LeDefinedUUIDs_Characteristic_get_FITNESS_MACHINE_FEATURE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilUUID *LeDefinedUUIDs_Characteristic_FITNESS_MACHINE_FEATURE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(LeDefinedUUIDs_Characteristic, FITNESS_MACHINE_FEATURE, JavaUtilUUID *)

inline JavaUtilUUID *LeDefinedUUIDs_Characteristic_get_INDOOR_BIKE_DATA(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilUUID *LeDefinedUUIDs_Characteristic_INDOOR_BIKE_DATA;
J2OBJC_STATIC_FIELD_OBJ_FINAL(LeDefinedUUIDs_Characteristic, INDOOR_BIKE_DATA, JavaUtilUUID *)

inline JavaUtilUUID *LeDefinedUUIDs_Characteristic_get_TRAINING_STATUS(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilUUID *LeDefinedUUIDs_Characteristic_TRAINING_STATUS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(LeDefinedUUIDs_Characteristic, TRAINING_STATUS, JavaUtilUUID *)

inline JavaUtilUUID *LeDefinedUUIDs_Characteristic_get_SUPPORTED_SPEED_RANGE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilUUID *LeDefinedUUIDs_Characteristic_SUPPORTED_SPEED_RANGE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(LeDefinedUUIDs_Characteristic, SUPPORTED_SPEED_RANGE, JavaUtilUUID *)

inline JavaUtilUUID *LeDefinedUUIDs_Characteristic_get_SUPPORTED_INCLINATION_RANGE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilUUID *LeDefinedUUIDs_Characteristic_SUPPORTED_INCLINATION_RANGE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(LeDefinedUUIDs_Characteristic, SUPPORTED_INCLINATION_RANGE, JavaUtilUUID *)

inline JavaUtilUUID *LeDefinedUUIDs_Characteristic_get_SUPPORTED_RESISTANCE_LEVEL_RANGE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilUUID *LeDefinedUUIDs_Characteristic_SUPPORTED_RESISTANCE_LEVEL_RANGE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(LeDefinedUUIDs_Characteristic, SUPPORTED_RESISTANCE_LEVEL_RANGE, JavaUtilUUID *)

inline JavaUtilUUID *LeDefinedUUIDs_Characteristic_get_SUPPORTED_HEART_RATE_RANGE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilUUID *LeDefinedUUIDs_Characteristic_SUPPORTED_HEART_RATE_RANGE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(LeDefinedUUIDs_Characteristic, SUPPORTED_HEART_RATE_RANGE, JavaUtilUUID *)

inline JavaUtilUUID *LeDefinedUUIDs_Characteristic_get_SUPPORTED_POWER_RANGE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilUUID *LeDefinedUUIDs_Characteristic_SUPPORTED_POWER_RANGE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(LeDefinedUUIDs_Characteristic, SUPPORTED_POWER_RANGE, JavaUtilUUID *)

inline JavaUtilUUID *LeDefinedUUIDs_Characteristic_get_FITNESS_MACHINE_CONTROL_POINT(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilUUID *LeDefinedUUIDs_Characteristic_FITNESS_MACHINE_CONTROL_POINT;
J2OBJC_STATIC_FIELD_OBJ_FINAL(LeDefinedUUIDs_Characteristic, FITNESS_MACHINE_CONTROL_POINT, JavaUtilUUID *)

inline JavaUtilUUID *LeDefinedUUIDs_Characteristic_get_FITNESS_MACHINE_STATUS(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilUUID *LeDefinedUUIDs_Characteristic_FITNESS_MACHINE_STATUS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(LeDefinedUUIDs_Characteristic, FITNESS_MACHINE_STATUS, JavaUtilUUID *)

FOUNDATION_EXPORT void LeDefinedUUIDs_Characteristic_init(LeDefinedUUIDs_Characteristic *self);

FOUNDATION_EXPORT LeDefinedUUIDs_Characteristic *new_LeDefinedUUIDs_Characteristic_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT LeDefinedUUIDs_Characteristic *create_LeDefinedUUIDs_Characteristic_init(void);

J2OBJC_TYPE_LITERAL_HEADER(LeDefinedUUIDs_Characteristic)

#endif

#if !defined (LeDefinedUUIDs_Descriptor_) && (INCLUDE_ALL_LeDefinedUUIDs || defined(INCLUDE_LeDefinedUUIDs_Descriptor))
#define LeDefinedUUIDs_Descriptor_

@class JavaUtilUUID;

@interface LeDefinedUUIDs_Descriptor : NSObject

+ (JavaUtilUUID *)CHAR_CLIENT_CONFIG;

#pragma mark Public

- (instancetype __nonnull)init;

@end

J2OBJC_STATIC_INIT(LeDefinedUUIDs_Descriptor)

inline JavaUtilUUID *LeDefinedUUIDs_Descriptor_get_CHAR_CLIENT_CONFIG(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilUUID *LeDefinedUUIDs_Descriptor_CHAR_CLIENT_CONFIG;
J2OBJC_STATIC_FIELD_OBJ_FINAL(LeDefinedUUIDs_Descriptor, CHAR_CLIENT_CONFIG, JavaUtilUUID *)

FOUNDATION_EXPORT void LeDefinedUUIDs_Descriptor_init(LeDefinedUUIDs_Descriptor *self);

FOUNDATION_EXPORT LeDefinedUUIDs_Descriptor *new_LeDefinedUUIDs_Descriptor_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT LeDefinedUUIDs_Descriptor *create_LeDefinedUUIDs_Descriptor_init(void);

J2OBJC_TYPE_LITERAL_HEADER(LeDefinedUUIDs_Descriptor)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_LeDefinedUUIDs")
