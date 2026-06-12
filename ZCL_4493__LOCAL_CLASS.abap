CLASS zcl_4493__local_class DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_4493__local_class IMPLEMENTATION.



  METHOD if_oo_adt_classrun~main.


  DATA connection TYPE REF TO lcl_connection.
  DATA connections TYPE TABLE OF REF TO lcl_connection.


   connection = NEW #( ).

   connection->carrier_id = 'LH'.
   connection->connection_id = '0400'.

   APPEND connection TO connections.
   connection = NEW #(  ).

    connection->carrier_id    = 'AA'.
    connection->connection_id = '0017'.

    APPEND connection TO connections.

    connection = NEW #(  ).

    connection->carrier_id    = 'SQ'.
    connection->connection_id = '0001'.

    APPEND connection TO connections.

    LOOP AT connections INTO connection.

      out->write( connection->carrier_id ).
      out->write( connection->connection_id ).

    ENDLOOP.

  out->write( connection->carrier_id ).
  out->write( connection->connection_id ).




  ENDMETHOD.

ENDCLASS.



*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
class lcl_connection definition.

  public section.

   DATA carrier_id    TYPE /dmo/carrier_id.
   DATA connection_id TYPE /dmo/connection_id.

   CLASS-DATA conn_counter TYPE i.

  protected section.
  private section.

endclass.

class lcl_connection implementation.

endclass.
