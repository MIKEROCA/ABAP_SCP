@AbapCatalog.sqlViewName: 'ZV_RENTL_MR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Renting'
@Metadata.allowExtensions: true
define view z_i_renting_mr
  as select from z_b_cars_mr as Cars
  association [1]    to z_b_rem_days_mr     as _RemDays     on Cars.Matricula = _RemDays.Matricula
  association [0..*] to Z_B_BRANDS_MR       as _Brands      on Cars.Marca = _Brands.Marca
  association [0..*] to z_b_det_customer_mr as _DetCustomer on Cars.Matricula = _DetCustomer.Matricula
{
  key Matricula,
      Marca,
      Modelo,
      Color,
      Motor,
      Potencia,
      Undidad,
      Combustible,
      Consumo,
      FechaFabricacion,
      Puertas,
      Precio,
      Moneda,
      Alquilado,
      Desde,
      Hasta,
      case
        when _RemDays.Dias <= 0 then 0                  //0 neutral  grey
        when _RemDays.Dias between 1 and 30 then 1      //1 negative red
        when _RemDays.Dias between 31 and 100 then 2    //2 critical  yellow
        when _RemDays.Dias > 100 then 3                 //3 positive  green
        else 0
      end as TiempoRenta,
      ''  as Estado,
      _Brands.Imagen,
      _DetCustomer
}
