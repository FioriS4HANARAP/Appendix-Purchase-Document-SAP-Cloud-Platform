using fiori.purchasedocumentscp from '../db/data-model';

service PurchaseService {
  entity PurchaseDocument		@readonly as projection on purchasedocumentscp.PurchaseDocument;
  entity PurchaseDocumentItems  @readonly as projection on purchasedocumentscp.PurchaseDocumentItems;
  entity Priorities 			@readonly as projection on purchasedocumentscp.Priorities;
  entity Currencies 			@readonly as projection on purchasedocumentscp.Currencies;
  entity QuantityUnits  		@readonly as projection on purchasedocumentscp.QuantityUnits;
}