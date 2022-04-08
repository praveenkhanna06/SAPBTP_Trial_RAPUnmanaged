@EndUserText.label: 'Travel Data'
@AccessControl.authorizationCheck: #CHECK
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity ZC_RAP_Travel_U_R611 as projection on ZI_RAP_Travel_U_R611

 {
    key TravelID,
    @Search.defaultSearchElement: true
    @Consumption.valueHelpDefinition: [ { entity: { name: '/DMO/I_Agency', element: 'AgencyID' } } ]
    AgencyID,
    @Search.defaultSearchElement: true
    @Consumption.valueHelpDefault.display: true
    CustomerID,
    BeginDate,
    EndDate,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    BookingFee,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    TotalPrice,
    @Consumption.valueHelpDefinition: [ { entity: { name: 'I_Currency', element: 'Currency' } } ]
    CurrencyCode,
    Description,
    Status,
    Createdby,
    Createdat,
    Lastchangedby,
    Lastchangedat,
    /* Associations */
    _Agency,
    _Booking : redirected to composition child ZC_RAP_BOOKING_U_R611,
    _Currency,
    _Customer
}
