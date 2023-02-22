CLASS zcl_delete_table_mr DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_delete_table_mr IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DELETE FROM zrent_brands_mr.
    IF sy-subrc EQ 0.
      out->write( 'All data deleted' ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
