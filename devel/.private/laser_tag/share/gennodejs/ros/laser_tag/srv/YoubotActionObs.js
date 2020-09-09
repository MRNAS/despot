// Auto-generated. Do not edit!

// (in-package laser_tag.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class YoubotActionObsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.direction = null;
    }
    else {
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type YoubotActionObsRequest
    // Serialize message field [direction]
    bufferOffset = _serializer.string(obj.direction, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type YoubotActionObsRequest
    let len;
    let data = new YoubotActionObsRequest(null);
    // Deserialize message field [direction]
    data.direction = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.direction.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'laser_tag/YoubotActionObsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '326e9417def5db9a05a2704a4d8de15e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # directions 
    # North - NORTH     
    # East  - EAST     
    # South - SOUTH    
    # West  - WEST     
    # NE    - NORTHEAST
    # SE    - SOUTHEAST
    # SW    - SOUTHWEST
    # NW    - NORTHWEST
    
    string direction
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new YoubotActionObsRequest(null);
    if (msg.direction !== undefined) {
      resolved.direction = msg.direction;
    }
    else {
      resolved.direction = ''
    }

    return resolved;
    }
};

class YoubotActionObsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.laser_readings = null;
    }
    else {
      if (initObj.hasOwnProperty('laser_readings')) {
        this.laser_readings = initObj.laser_readings
      }
      else {
        this.laser_readings = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type YoubotActionObsResponse
    // Serialize message field [laser_readings]
    bufferOffset = _arraySerializer.int32(obj.laser_readings, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type YoubotActionObsResponse
    let len;
    let data = new YoubotActionObsResponse(null);
    // Deserialize message field [laser_readings]
    data.laser_readings = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.laser_readings.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'laser_tag/YoubotActionObsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0a6f44a90806d0605d87d2bd0f4d69d2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] laser_readings
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new YoubotActionObsResponse(null);
    if (msg.laser_readings !== undefined) {
      resolved.laser_readings = msg.laser_readings;
    }
    else {
      resolved.laser_readings = []
    }

    return resolved;
    }
};

module.exports = {
  Request: YoubotActionObsRequest,
  Response: YoubotActionObsResponse,
  md5sum() { return 'a51480b466976e5076b2241b78665302'; },
  datatype() { return 'laser_tag/YoubotActionObs'; }
};
