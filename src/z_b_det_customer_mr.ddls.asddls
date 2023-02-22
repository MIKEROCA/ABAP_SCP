@AbapCatalog.sqlViewName: 'ZV_DET_CUSTL_MR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Detail customer'
@Metadata.allowExtensions: true
define view z_b_det_customer_mr
  as select from zrent_custom_mr
{
  key doc_id    as ID,
  key matricula as Matricula,
      nombres   as Nombre,
      apellidos as Apellidos,
      email     as Correo,
      cntr_type as TipoContrato
}
