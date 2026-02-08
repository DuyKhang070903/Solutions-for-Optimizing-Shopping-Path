// Auto-generated. Do not edit!

// (in-package robot_update.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class updateFWSignalRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.FW_name = null;
    }
    else {
      if (initObj.hasOwnProperty('FW_name')) {
        this.FW_name = initObj.FW_name
      }
      else {
        this.FW_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type updateFWSignalRequest
    // Serialize message field [FW_name]
    bufferOffset = _serializer.string(obj.FW_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type updateFWSignalRequest
    let len;
    let data = new updateFWSignalRequest(null);
    // Deserialize message field [FW_name]
    data.FW_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.FW_name);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_update/updateFWSignalRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f3fb21c13fb0cf19067695d456c52e20';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Request: FW name
    string FW_name
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new updateFWSignalRequest(null);
    if (msg.FW_name !== undefined) {
      resolved.FW_name = msg.FW_name;
    }
    else {
      resolved.FW_name = ''
    }

    return resolved;
    }
};

class updateFWSignalResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.signalSuccess = null;
    }
    else {
      if (initObj.hasOwnProperty('signalSuccess')) {
        this.signalSuccess = initObj.signalSuccess
      }
      else {
        this.signalSuccess = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type updateFWSignalResponse
    // Serialize message field [signalSuccess]
    bufferOffset = _serializer.bool(obj.signalSuccess, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type updateFWSignalResponse
    let len;
    let data = new updateFWSignalResponse(null);
    // Deserialize message field [signalSuccess]
    data.signalSuccess = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_update/updateFWSignalResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '29b721cc9130c4edef310b7dcc8f7731';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Response: Signal 
    bool signalSuccess
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new updateFWSignalResponse(null);
    if (msg.signalSuccess !== undefined) {
      resolved.signalSuccess = msg.signalSuccess;
    }
    else {
      resolved.signalSuccess = false
    }

    return resolved;
    }
};

module.exports = {
  Request: updateFWSignalRequest,
  Response: updateFWSignalResponse,
  md5sum() { return '9c5eee2d22e1212d864abfe1f867776b'; },
  datatype() { return 'robot_update/updateFWSignal'; }
};
