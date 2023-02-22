@AbapCatalog.sqlViewName: 'ZV_BRANDSL_MR'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Brands'
define view Z_B_BRANDS_MR
  as select from zrent_brands_mr
{
  key marca as Marca,
  @UI.hidden: true
      url   as Imagen
}
