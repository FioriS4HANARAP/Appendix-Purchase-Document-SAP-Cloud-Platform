using PurchaseService from './purch-service';
annotate PurchaseService.PurchaseDocument with @( 
//List Report Page Filter field level annotations
	UI: {
	    SelectionFields: [ PurchaseDocument, status, purchasingOrganization, PurchaseDocPriority_code ],
//List Report Page Table level annotations
		LineItem: [	{$Type: 'UI.DataField',Value: PurchaseDocument},
	        		{$Type: 'UI.DataField',Value: description},
	        		{$Type: 'UI.DataField',Value: status},
	        		{$Type: 'UI.DataField',Value: purchasingOrganization},
	        		{$Type: 'UI.DataField',Value: PurchaseDocPriority_code }]},
//Object Page header level annotations
	UI: {
		HeaderInfo: {
			TypeName: '{i18n>PurchaseDocument}',
			TypeNamePlural: '{i18n>PurchaseDocuments}',
			Title: { Value: PurchaseDocument },
			Description: { Value: description}},
		HeaderFacets: [
		{$Type: 'UI.ReferenceFacet', Label: '{i18n>generalInformation}', Target: '@UI.FieldGroup#GeneralInformation', "@UI.Importance": #High }],
//Object Page Field Group level annotations
		FieldGroup#GeneralInformation: {
			Data: [
				{$Type: 'UI.DataField',Label: '{i18n>PurchaseDocumentDescription}', Value: description},
				{$Type: 'UI.DataField',Label: '{i18n>Priority}', Value: PurchaseDocPriority.name},
				{$Type: 'UI.DataField',Label: '{i18n>Status}', Value: status }]} },
//Linking to PurchaseDocumentItem entity
	UI.Facets: [
		{$Type:'UI.ReferenceFacet',Label:'{i18n>PurchaseDocumentItems}',Target:'PurchaseDocumentItem/@UI.LineItem' }]);
		
annotate PurchaseService.PurchaseDocumentItems with @( 
//List Report Page Table level annotations
	UI: { LineItem: [	{$Type: 'UI.DataField',Value: PurchaseDocumentItem},
	        			{$Type: 'UI.DataField',Value: description},
	        			{$Type: 'UI.DataField',Value: price},
	        			{$Type: 'UI.DataField',Value: currency},
	        			{$Type: 'UI.DataField',Value: quantity }]},
//Object Page header level annotations
	UI: {
		HeaderInfo: {
			TypeName: '{i18n>PurchaseDocumentItem}',
			TypeNamePlural: '{i18n>PurchaseDocumentItems}',
			Title: { Value: PurchaseDocumentItem },
			Description: { Value: description}},
		HeaderFacets: [
			{$Type: 'UI.ReferenceFacet', Label: '{i18n>generalInformationItem}', Target: '@UI.FieldGroup#GeneralInformation', "@UI.Importance": #High }],
//Object Page Field Group level annotations
		FieldGroup#GeneralInformation: {
			Data: [	{$Type: 'UI.DataField',Label: '{i18n>PurchaseDocumentItemDescription}', Value: description},
					{$Type: 'UI.DataField',Label: '{i18n>quantity}', Value: quantity},
					{$Type: 'UI.DataField',Label: '{i18n>price}', Value: price},
					{$Type: 'UI.DataField',Label: '{i18n>currency}', Value: currency }]} 
		});
		
//Hide ValueHelp Entities from Filter bar
annotate PurchaseService.Priorities { 
	code @UI.HiddenFilter;
	name @UI.HiddenFilter;
}
annotate PurchaseService.Currencies { 
	code @UI.HiddenFilter;
	name @UI.HiddenFilter;
}
annotate PurchaseService.QuantityUnits { 
	code @UI.HiddenFilter;
	name @UI.HiddenFilter;
}

