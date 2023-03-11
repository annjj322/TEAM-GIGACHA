# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ublox_msgs/CfgRATE.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class CfgRATE(genpy.Message):
  _md5sum = "13e27469d3f7d85353464015f687d6b2"
  _type = "ublox_msgs/CfgRATE"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# CFG-RATE (0x06 0x08)
# Navigation/Measurement Rate Settings
#
# This message allows the user to alter the rate at which navigation solutions 
# (and the measurements that they depend on) are generated by the receiver. The 
# calculation of the navigation solution will always be aligned to the top of a 
# second zero (first second of the week) of the configured reference time 
# system. For protocol version 18 and later the navigation period is an integer 
# multiple of the measurement period.
#  - Each measurement triggers the measurements generation and raw data output.
#  - The navRate value defines that every nth measurement triggers a navigation 
#    epoch.
#  - The update rate has a direct influence on the power consumption. The more 
#    fixes that are required, the more CPU power and communication resources 
#    are required.
#  - For most applications a 1 Hz update rate would be sufficient.
#  - When using Power Save Mode, measurement and navigation rate can differ from
#    the values configured here

uint8 CLASS_ID = 6
uint8 MESSAGE_ID = 8

uint16 measRate           # Measurement Rate, GPS measurements are
                          # taken every measRate milliseconds [ms]
uint16 navRate            # Navigation Rate, in number of measurement
                          # cycles. On u-blox 5 and u-blox 6, this parameter
                          # cannot be changed, and always equals 1.
uint16 timeRef            # The time system to which measurements are aligned
uint16 TIME_REF_UTC = 0
uint16 TIME_REF_GPS = 1
uint16 TIME_REF_GLONASS = 2   # not supported in protocol versions less than 18
uint16 TIME_REF_BEIDOU = 3    # not supported in protocol versions less than 18
uint16 TIME_REF_GALILEO = 4   # not supported in protocol versions less than 18
"""
  # Pseudo-constants
  CLASS_ID = 6
  MESSAGE_ID = 8
  TIME_REF_UTC = 0
  TIME_REF_GPS = 1
  TIME_REF_GLONASS = 2
  TIME_REF_BEIDOU = 3
  TIME_REF_GALILEO = 4

  __slots__ = ['measRate','navRate','timeRef']
  _slot_types = ['uint16','uint16','uint16']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       measRate,navRate,timeRef

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(CfgRATE, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.measRate is None:
        self.measRate = 0
      if self.navRate is None:
        self.navRate = 0
      if self.timeRef is None:
        self.timeRef = 0
    else:
      self.measRate = 0
      self.navRate = 0
      self.timeRef = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3H().pack(_x.measRate, _x.navRate, _x.timeRef))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 6
      (_x.measRate, _x.navRate, _x.timeRef,) = _get_struct_3H().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3H().pack(_x.measRate, _x.navRate, _x.timeRef))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 6
      (_x.measRate, _x.navRate, _x.timeRef,) = _get_struct_3H().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3H = None
def _get_struct_3H():
    global _struct_3H
    if _struct_3H is None:
        _struct_3H = struct.Struct("<3H")
    return _struct_3H