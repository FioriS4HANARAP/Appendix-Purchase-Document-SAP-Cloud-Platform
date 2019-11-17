namespace fiori.purchasedocumentscp;
// Declare Main Entities for the App
entity PurchaseDocument{
	key PurchaseDocument	: Integer @(title: '{i18n>PurchaseDocument}');
	description				: String @(title: '{i18n>PurchaseDocumentDescription}');
	status			    	: String @(title: '{i18n>Status}');
	purchasingOrganization	:String @(title: '{i18n>OrgUnit}');
	PurchaseDocPriority		: Association to Priorities 	@( title: '{i18n>Priority}',
															   Common: {
																	 Text: {$value: PurchaseDocPriority.name, "@UI.TextArrangement": #TextOnly},
																	 ValueList: {entity: 'Priorities', type: #fixed},
																	 ValueListWithFixedValues});
	PurchaseDocumentItem	:Association to many PurchaseDocumentItems on PurchaseDocumentItem.PurchaseDocument = $self; 
}

entity PurchaseDocumentItems{
	key PurchaseDocument		: Association to PurchaseDocument;
    key PurchaseDocumentItem	: Integer;
    description					: String;
    price						: Decimal(10,2) not null		@( title: '{i18n>price}',
																	Measures.ISOCurrency: currency);
    currency					: Currency not null 			@( title: '{i18n>currency}',
																	Common.ValueList: {entity: 'Currencies', type: #fixed});
    quantity					:Decimal(10,2)					@( title: '{i18n>quantity}',
																	Measures.Unit: QuantityUnit_code);
    QuantityUnit				:Association to QuantityUnits  @( title: '{i18n>quantityUnit}',
																  Common: { Text: {$value: QuantityUnit.name, "@UI.TextArrangement": #TextOnly},
																			ValueList: {entity: 'QuantityUnits', type: #fixed},
																			ValueListWithFixedValues}); 
}

// Declare Custom Types
type Currency			 : String(3) @title: '{i18n>currencyCode}' @ValueList.entity: Currencies;
type QuantityUnit		 : String(3) @title: '{i18n>quantityUnitCode}' @ValueList.entity: QuantityUnits;
type PurchaseDocPriority : String(1) @title: '{i18n>priority}' @ValueList.entity: Priorities;
// Declare Custom Type Entities
entity Currencies {
  key code : Currency;
	  name : String;
}
entity QuantityUnits {
  key code : QuantityUnit;
	  name : String;
}
entity Priorities {
  key code : PurchaseDocPriority;
	  name : String;
}
