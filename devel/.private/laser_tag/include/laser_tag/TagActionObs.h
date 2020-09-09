// Generated by gencpp from file laser_tag/TagActionObs.msg
// DO NOT EDIT!


#ifndef LASER_TAG_MESSAGE_TAGACTIONOBS_H
#define LASER_TAG_MESSAGE_TAGACTIONOBS_H

#include <ros/service_traits.h>


#include <laser_tag/TagActionObsRequest.h>
#include <laser_tag/TagActionObsResponse.h>


namespace laser_tag
{

struct TagActionObs
{

typedef TagActionObsRequest Request;
typedef TagActionObsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct TagActionObs
} // namespace laser_tag


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::laser_tag::TagActionObs > {
  static const char* value()
  {
    return "9cc4003dacca40d6dbafb218ad5c59fe";
  }

  static const char* value(const ::laser_tag::TagActionObs&) { return value(); }
};

template<>
struct DataType< ::laser_tag::TagActionObs > {
  static const char* value()
  {
    return "laser_tag/TagActionObs";
  }

  static const char* value(const ::laser_tag::TagActionObs&) { return value(); }
};


// service_traits::MD5Sum< ::laser_tag::TagActionObsRequest> should match
// service_traits::MD5Sum< ::laser_tag::TagActionObs >
template<>
struct MD5Sum< ::laser_tag::TagActionObsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::laser_tag::TagActionObs >::value();
  }
  static const char* value(const ::laser_tag::TagActionObsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::laser_tag::TagActionObsRequest> should match
// service_traits::DataType< ::laser_tag::TagActionObs >
template<>
struct DataType< ::laser_tag::TagActionObsRequest>
{
  static const char* value()
  {
    return DataType< ::laser_tag::TagActionObs >::value();
  }
  static const char* value(const ::laser_tag::TagActionObsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::laser_tag::TagActionObsResponse> should match
// service_traits::MD5Sum< ::laser_tag::TagActionObs >
template<>
struct MD5Sum< ::laser_tag::TagActionObsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::laser_tag::TagActionObs >::value();
  }
  static const char* value(const ::laser_tag::TagActionObsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::laser_tag::TagActionObsResponse> should match
// service_traits::DataType< ::laser_tag::TagActionObs >
template<>
struct DataType< ::laser_tag::TagActionObsResponse>
{
  static const char* value()
  {
    return DataType< ::laser_tag::TagActionObs >::value();
  }
  static const char* value(const ::laser_tag::TagActionObsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // LASER_TAG_MESSAGE_TAGACTIONOBS_H
