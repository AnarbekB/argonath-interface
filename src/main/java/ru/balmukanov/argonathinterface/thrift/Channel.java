/**
 * Autogenerated by Thrift Compiler (0.13.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
package ru.balmukanov.argonathinterface.thrift;


@javax.annotation.Generated(value = "Autogenerated by Thrift Compiler (0.13.0)", date = "2021-01-21")
public enum Channel implements org.apache.thrift.TEnum {
  WEB(1),
  MOBILE(2),
  ATM(3);

  private final int value;

  private Channel(int value) {
    this.value = value;
  }

  /**
   * Get the integer value of this enum value, as defined in the Thrift IDL.
   */
  public int getValue() {
    return value;
  }

  /**
   * Find a the enum type by its integer value, as defined in the Thrift IDL.
   * @return null if the value is not found.
   */
  @org.apache.thrift.annotation.Nullable
  public static Channel findByValue(int value) { 
    switch (value) {
      case 1:
        return WEB;
      case 2:
        return MOBILE;
      case 3:
        return ATM;
      default:
        return null;
    }
  }
}
