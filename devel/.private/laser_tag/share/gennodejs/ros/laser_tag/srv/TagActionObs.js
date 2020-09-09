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

class TagActionObsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action = null;
    }
    else {
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TagActionObsRequest
    // Serialize message field [action]
    bufferOffset = _serializer.int32(obj.action, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TagActionObsRequest
    let len;
    let data = new TagActionObsRequest(null);
    // Deserialize message field [action]
    data.action = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'laser_tag/TagActionObsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b028501ac85c840a01d50342b4cc9b6e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 0 - NORTH     
    # 1 - EAST     
    # 2 - SOUTH    
    # 3 - WEST     
    # 4 - TAG
    
    int32 action
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TagActionObsRequest(null);
    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = 0
    }

    return resolved;
    }
};

class TagActionObsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.observations = null;
      this.tag_success = null;
    }
    else {
      if (initObj.hasOwnProperty('observations')) {
        this.observations = initObj.observations
      }
      else {
        this.observations = [];
      }
      if (initObj.hasOwnProperty('tag_success')) {
        this.tag_success = initObj.tag_success
      }
      else {
        this.tag_success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TagActionObsResponse
    // Serialize message field [observations]
    bufferOffset = _arraySerializer.int32(obj.observations, buffer, bufferOffset, null);
    // Serialize message field [tag_success]
    bufferOffset = _serializer.bool(obj.tag_success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TagActionObsResponse
    let len;
    let data = new TagActionObsResponse(null);
    // Deserialize message field [observations]
    data.observations = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [tag_success]
    data.tag_success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.observations.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'laser_tag/TagActionObsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6c2efacbd043e599c296a1af1272be32';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] observations 
    bool tag_success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TagActionObsResponse(null);
    if (msg.observations !== undefined) {
      resolved.observations = msg.observations;
    }
    else {
      resolved.observations = []
    }

    if (msg.tag_success !== undefined) {
      resolved.tag_success = msg.tag_success;
    }
    else {
      resolved.tag_success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: TagActionObsRequest,
  Response: TagActionObsResponse,
  md5sum() { return '9cc4003dacca40d6dbafb218ad5c59fe'; },
  datatype() { return 'laser_tag/TagActionObs'; }
};
