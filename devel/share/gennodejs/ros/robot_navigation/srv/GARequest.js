// Auto-generated. Do not edit!

// (in-package robot_navigation.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GARequestRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start = null;
      this.destinations = null;
    }
    else {
      if (initObj.hasOwnProperty('start')) {
        this.start = initObj.start
      }
      else {
        this.start = '';
      }
      if (initObj.hasOwnProperty('destinations')) {
        this.destinations = initObj.destinations
      }
      else {
        this.destinations = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GARequestRequest
    // Serialize message field [start]
    bufferOffset = _serializer.string(obj.start, buffer, bufferOffset);
    // Serialize message field [destinations]
    bufferOffset = _arraySerializer.string(obj.destinations, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GARequestRequest
    let len;
    let data = new GARequestRequest(null);
    // Deserialize message field [start]
    data.start = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [destinations]
    data.destinations = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.start);
    object.destinations.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_navigation/GARequestRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a12a89f1d77ce56f8af171362a3a2bd7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Request: An array of strings
    string start
    string[] destinations
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GARequestRequest(null);
    if (msg.start !== undefined) {
      resolved.start = msg.start;
    }
    else {
      resolved.start = ''
    }

    if (msg.destinations !== undefined) {
      resolved.destinations = msg.destinations;
    }
    else {
      resolved.destinations = []
    }

    return resolved;
    }
};

class GARequestResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.GA_result = null;
      this.Products = null;
      this.Products_indices = null;
    }
    else {
      if (initObj.hasOwnProperty('GA_result')) {
        this.GA_result = initObj.GA_result
      }
      else {
        this.GA_result = [];
      }
      if (initObj.hasOwnProperty('Products')) {
        this.Products = initObj.Products
      }
      else {
        this.Products = [];
      }
      if (initObj.hasOwnProperty('Products_indices')) {
        this.Products_indices = initObj.Products_indices
      }
      else {
        this.Products_indices = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GARequestResponse
    // Serialize message field [GA_result]
    bufferOffset = _arraySerializer.string(obj.GA_result, buffer, bufferOffset, null);
    // Serialize message field [Products]
    bufferOffset = _arraySerializer.string(obj.Products, buffer, bufferOffset, null);
    // Serialize message field [Products_indices]
    bufferOffset = _arraySerializer.int32(obj.Products_indices, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GARequestResponse
    let len;
    let data = new GARequestResponse(null);
    // Deserialize message field [GA_result]
    data.GA_result = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [Products]
    data.Products = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [Products_indices]
    data.Products_indices = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.GA_result.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.Products.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 4 * object.Products_indices.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_navigation/GARequestResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ee303d60ffabb936581bf507956c6387';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Response: An array of strings
    string[] GA_result
    string[] Products
    int32[] Products_indices
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GARequestResponse(null);
    if (msg.GA_result !== undefined) {
      resolved.GA_result = msg.GA_result;
    }
    else {
      resolved.GA_result = []
    }

    if (msg.Products !== undefined) {
      resolved.Products = msg.Products;
    }
    else {
      resolved.Products = []
    }

    if (msg.Products_indices !== undefined) {
      resolved.Products_indices = msg.Products_indices;
    }
    else {
      resolved.Products_indices = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GARequestRequest,
  Response: GARequestResponse,
  md5sum() { return '51c6edeb2019aac92d28d0824470756f'; },
  datatype() { return 'robot_navigation/GARequest'; }
};
