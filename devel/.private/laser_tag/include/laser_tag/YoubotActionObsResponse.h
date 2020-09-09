// Generated by gencpp from file laser_tag/YoubotActionObsResponse.msg
// DO NOT EDIT!


#ifndef LASER_TAG_MESSAGE_YOUBOTACTIONOBSRESPONSE_H
#define LASER_TAG_MESSAGE_YOUBOTACTIONOBSRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace laser_tag
{
template <class ContainerAllocator>
struct YoubotActionObsResponse_
{
  typedef YoubotActionObsResponse_<ContainerAllocator> Type;

  YoubotActionObsResponse_()
    : laser_readings()  {
    }
  YoubotActionObsResponse_(const ContainerAllocator& _alloc)
    : laser_readings(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<int32_t, typename ContainerAllocator::template rebind<int32_t>::other >  _laser_readings_type;
  _laser_readings_type laser_readings;





  typedef boost::shared_ptr< ::laser_tag::YoubotActionObsResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::laser_tag::YoubotActionObsResponse_<ContainerAllocator> const> ConstPtr;

}; // struct YoubotActionObsResponse_

typedef ::laser_tag::YoubotActionObsResponse_<std::allocator<void> > YoubotActionObsResponse;

typedef boost::shared_ptr< ::laser_tag::YoubotActionObsResponse > YoubotActionObsResponsePtr;
typedef boost::shared_ptr< ::laser_tag::YoubotActionObsResponse const> YoubotActionObsResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::laser_tag::YoubotActionObsResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::laser_tag::YoubotActionObsResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::laser_tag::YoubotActionObsResponse_<ContainerAllocator1> & lhs, const ::laser_tag::YoubotActionObsResponse_<ContainerAllocator2> & rhs)
{
  return lhs.laser_readings == rhs.laser_readings;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::laser_tag::YoubotActionObsResponse_<ContainerAllocator1> & lhs, const ::laser_tag::YoubotActionObsResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace laser_tag

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::laser_tag::YoubotActionObsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::laser_tag::YoubotActionObsResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::laser_tag::YoubotActionObsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::laser_tag::YoubotActionObsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::laser_tag::YoubotActionObsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::laser_tag::YoubotActionObsResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::laser_tag::YoubotActionObsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0a6f44a90806d0605d87d2bd0f4d69d2";
  }

  static const char* value(const ::laser_tag::YoubotActionObsResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0a6f44a90806d060ULL;
  static const uint64_t static_value2 = 0x5d87d2bd0f4d69d2ULL;
};

template<class ContainerAllocator>
struct DataType< ::laser_tag::YoubotActionObsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "laser_tag/YoubotActionObsResponse";
  }

  static const char* value(const ::laser_tag::YoubotActionObsResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::laser_tag::YoubotActionObsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32[] laser_readings\n"
"\n"
;
  }

  static const char* value(const ::laser_tag::YoubotActionObsResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::laser_tag::YoubotActionObsResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.laser_readings);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct YoubotActionObsResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::laser_tag::YoubotActionObsResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::laser_tag::YoubotActionObsResponse_<ContainerAllocator>& v)
  {
    s << indent << "laser_readings[]" << std::endl;
    for (size_t i = 0; i < v.laser_readings.size(); ++i)
    {
      s << indent << "  laser_readings[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.laser_readings[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // LASER_TAG_MESSAGE_YOUBOTACTIONOBSRESPONSE_H
