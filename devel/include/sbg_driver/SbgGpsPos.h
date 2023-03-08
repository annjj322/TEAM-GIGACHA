// Generated by gencpp from file sbg_driver/SbgGpsPos.msg
// DO NOT EDIT!


#ifndef SBG_DRIVER_MESSAGE_SBGGPSPOS_H
#define SBG_DRIVER_MESSAGE_SBGGPSPOS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <sbg_driver/SbgGpsPosStatus.h>
#include <geometry_msgs/Vector3.h>

namespace sbg_driver
{
template <class ContainerAllocator>
struct SbgGpsPos_
{
  typedef SbgGpsPos_<ContainerAllocator> Type;

  SbgGpsPos_()
    : header()
    , time_stamp(0)
    , status()
    , gps_tow(0)
    , latitude(0.0)
    , longitude(0.0)
    , altitude(0.0)
    , undulation(0.0)
    , position_accuracy()
    , num_sv_used(0)
    , base_station_id(0)
    , diff_age(0)  {
    }
  SbgGpsPos_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , time_stamp(0)
    , status(_alloc)
    , gps_tow(0)
    , latitude(0.0)
    , longitude(0.0)
    , altitude(0.0)
    , undulation(0.0)
    , position_accuracy(_alloc)
    , num_sv_used(0)
    , base_station_id(0)
    , diff_age(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint32_t _time_stamp_type;
  _time_stamp_type time_stamp;

   typedef  ::sbg_driver::SbgGpsPosStatus_<ContainerAllocator>  _status_type;
  _status_type status;

   typedef uint32_t _gps_tow_type;
  _gps_tow_type gps_tow;

   typedef double _latitude_type;
  _latitude_type latitude;

   typedef double _longitude_type;
  _longitude_type longitude;

   typedef double _altitude_type;
  _altitude_type altitude;

   typedef float _undulation_type;
  _undulation_type undulation;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _position_accuracy_type;
  _position_accuracy_type position_accuracy;

   typedef uint8_t _num_sv_used_type;
  _num_sv_used_type num_sv_used;

   typedef uint16_t _base_station_id_type;
  _base_station_id_type base_station_id;

   typedef uint16_t _diff_age_type;
  _diff_age_type diff_age;





  typedef boost::shared_ptr< ::sbg_driver::SbgGpsPos_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::sbg_driver::SbgGpsPos_<ContainerAllocator> const> ConstPtr;

}; // struct SbgGpsPos_

typedef ::sbg_driver::SbgGpsPos_<std::allocator<void> > SbgGpsPos;

typedef boost::shared_ptr< ::sbg_driver::SbgGpsPos > SbgGpsPosPtr;
typedef boost::shared_ptr< ::sbg_driver::SbgGpsPos const> SbgGpsPosConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::sbg_driver::SbgGpsPos_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::sbg_driver::SbgGpsPos_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::sbg_driver::SbgGpsPos_<ContainerAllocator1> & lhs, const ::sbg_driver::SbgGpsPos_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.time_stamp == rhs.time_stamp &&
    lhs.status == rhs.status &&
    lhs.gps_tow == rhs.gps_tow &&
    lhs.latitude == rhs.latitude &&
    lhs.longitude == rhs.longitude &&
    lhs.altitude == rhs.altitude &&
    lhs.undulation == rhs.undulation &&
    lhs.position_accuracy == rhs.position_accuracy &&
    lhs.num_sv_used == rhs.num_sv_used &&
    lhs.base_station_id == rhs.base_station_id &&
    lhs.diff_age == rhs.diff_age;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::sbg_driver::SbgGpsPos_<ContainerAllocator1> & lhs, const ::sbg_driver::SbgGpsPos_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace sbg_driver

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::sbg_driver::SbgGpsPos_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sbg_driver::SbgGpsPos_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sbg_driver::SbgGpsPos_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sbg_driver::SbgGpsPos_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sbg_driver::SbgGpsPos_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sbg_driver::SbgGpsPos_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::sbg_driver::SbgGpsPos_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6b214c87825603003c01f4e03d945a32";
  }

  static const char* value(const ::sbg_driver::SbgGpsPos_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6b214c8782560300ULL;
  static const uint64_t static_value2 = 0x3c01f4e03d945a32ULL;
};

template<class ContainerAllocator>
struct DataType< ::sbg_driver::SbgGpsPos_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sbg_driver/SbgGpsPos";
  }

  static const char* value(const ::sbg_driver::SbgGpsPos_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::sbg_driver::SbgGpsPos_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# SBG Ellipse Messages\n"
"Header header\n"
"\n"
"#  Time since sensor is powered up us \n"
"uint32 time_stamp\n"
"\n"
"# GPS position fix and status bitmask\n"
"SbgGpsPosStatus status\n"
"\n"
"# GPS Time of Week ms\n"
"uint32 gps_tow\n"
"\n"
"# Latitude [degrees]; Positive is north of equator; negative is south\n"
"float64 latitude\n"
"\n"
"# Longitude [degrees]; Positive is east of prime meridian; negative is west\n"
"float64 longitude\n"
"\n"
"# Altitude [m]; Positive is above Mean Sea Level in meters\n"
"float64 altitude\n"
"\n"
"# Altitude difference between the geoid and the Ellipsoid (WGS-84 Altitude - MSL Altitude)\n"
"# (Height above Ellipsoid = altitude + undulation)\n"
"float32 undulation\n"
"\n"
"# Position accuracy (1 sigma) [m].\n"
"# In NED convention:\n"
"#   x: North\n"
"#   y: East\n"
"#   z: Vertical\n"
"# In ENU convention:\n"
"#   x: East\n"
"#   y: North\n"
"#   z: Vertical\n"
"geometry_msgs/Vector3 position_accuracy\n"
"\n"
"# Number of space vehicles used in GNSS solution\n"
"uint8 num_sv_used\n"
"\n"
"# ID of the DGPS/RTK base station in use\n"
"uint16 base_station_id\n"
"\n"
"# Differential data age 0.01 s\n"
"uint16 diff_age\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: sbg_driver/SbgGpsPosStatus\n"
"# SBG Ellipse Messages\n"
"# Submessage\n"
"\n"
"\n"
"# The raw GPS position status\n"
"# 0 SOL_COMPUTED		A valid solution has been computed.\n"
"# 1 INSUFFICIENT_OBS 	Not enough valid SV to compute a solution.\n"
"# 2 INTERNAL_ERROR 		An internal error has occurred.\n"
"# 3 HEIGHT_LIMIT 		The height limit has been exceeded.\n"
"uint8 status\n"
"\n"
"# The raw GPS position type\n"
"# 0 NO_SOLUTION		No valid solution available.\n"
"# 1 UNKNOWN_TYPE	An unknown solution type has been computed.\n"
"# 2 SINGLE			Single point solution position.\n"
"# 3 PSRDIFF			Standard Pseudorange Differential Solution (DGPS).\n"
"# 4 SBAS			SBAS satellite used for differential corrections.\n"
"# 5 OMNISTAR		Omnistar VBS Position (L1 sub-meter).\n"
"# 6 RTK_FLOAT		Floating RTK ambiguity solution (20 cms RTK).\n"
"# 7 RTK_INT			Integer RTK ambiguity solution (2 cms RTK).\n"
"# 8 PPP_FLOAT		Precise Point Positioning with float ambiguities\n"
"# 9 PPP_INT			Precise Point Positioning with fixed ambiguities\n"
"# 10 FIXED			Fixed location solution position\n"
"uint8 type\n"
"\n"
"# True if GPS L1 is used in the solution\n"
"bool gps_l1_used\n"
"\n"
"# True if GPS L2 is used in the solution\n"
"bool gps_l2_used\n"
"\n"
"# True if GPS L5 is used in the solution\n"
"bool gps_l5_used\n"
"\n"
"# True if GLONASS L1 is used in the solution\n"
"bool glo_l1_used\n"
"\n"
"# True if GLONASS L2 is used in the solution\n"
"bool glo_l2_used\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::sbg_driver::SbgGpsPos_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::sbg_driver::SbgGpsPos_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.time_stamp);
      stream.next(m.status);
      stream.next(m.gps_tow);
      stream.next(m.latitude);
      stream.next(m.longitude);
      stream.next(m.altitude);
      stream.next(m.undulation);
      stream.next(m.position_accuracy);
      stream.next(m.num_sv_used);
      stream.next(m.base_station_id);
      stream.next(m.diff_age);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SbgGpsPos_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::sbg_driver::SbgGpsPos_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::sbg_driver::SbgGpsPos_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "time_stamp: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.time_stamp);
    s << indent << "status: ";
    s << std::endl;
    Printer< ::sbg_driver::SbgGpsPosStatus_<ContainerAllocator> >::stream(s, indent + "  ", v.status);
    s << indent << "gps_tow: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.gps_tow);
    s << indent << "latitude: ";
    Printer<double>::stream(s, indent + "  ", v.latitude);
    s << indent << "longitude: ";
    Printer<double>::stream(s, indent + "  ", v.longitude);
    s << indent << "altitude: ";
    Printer<double>::stream(s, indent + "  ", v.altitude);
    s << indent << "undulation: ";
    Printer<float>::stream(s, indent + "  ", v.undulation);
    s << indent << "position_accuracy: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.position_accuracy);
    s << indent << "num_sv_used: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.num_sv_used);
    s << indent << "base_station_id: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.base_station_id);
    s << indent << "diff_age: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.diff_age);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SBG_DRIVER_MESSAGE_SBGGPSPOS_H
