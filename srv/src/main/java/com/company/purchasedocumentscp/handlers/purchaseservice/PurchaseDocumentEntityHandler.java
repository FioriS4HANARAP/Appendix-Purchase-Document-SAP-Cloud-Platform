package  com.company.purchasedocumentscp.handlers.purchaseservice; 

import com.sap.cloud.sdk.service.prov.api.*;
import com.sap.cloud.sdk.service.prov.api.annotations.*;
import com.sap.cloud.sdk.service.prov.api.exits.*;
import com.sap.cloud.sdk.service.prov.api.request.*;
import com.sap.cloud.sdk.service.prov.api.response.*;
import java.util.List;
import java.util.ArrayList;

public class PurchaseDocumentEntityHandler {

	@AfterRead(entity = "PurchaseDocument", serviceName = "PurchaseService")
	public ReadResponse afterReadPurchaseDocument(ReadRequest req, ReadResponseAccessor res, ExtensionHelper helper) {
		EntityData data = res.getEntityData();
        EntityData modifiedData = EntityData.getBuilder(data).addElement("comments", "Cloud Foundry Says Hello").buildEntityData("PurchaseDocument");
        return ReadResponse.setSuccess().setData(modifiedData).response();}
	
	@AfterQuery(entity = "PurchaseDocument", serviceName = "PurchaseService")
	public QueryResponse afterQueryPurchaseDocument(QueryRequest req, QueryResponseAccessor res, ExtensionHelper helper) {
		List<EntityData> dataList = res.getEntityDataList(); 
        List<EntityData> modifiedList = new ArrayList<EntityData>(dataList.size());
    	for(EntityData data : dataList){ 
		  EntityData modifiedData = EntityData.getBuilder(data).addElement("comments", "Cloud Foundry Says Hello").buildEntityData("PurchaseDocument");
		  modifiedList.add(modifiedData);}
    	return QueryResponse.setSuccess().setData(modifiedList).response();}
}


//	@BeforeRead(entity = "PurchaseDocument", serviceName = "PurchaseService")
//	public BeforeReadResponse beforeReadPurchaseDocument(ReadRequest req, ExtensionHelper helper) {
//		//TODO: add your custom logic / validations here...
//
//		return BeforeReadResponse.setSuccess().response(); //use this API if validation checks are successful.
//		//return BeforeReadResponse.setError(ErrorResponse.getBuilder().setMessage("You are not authorized to read this item").response()); //use this API if your validation checks fail
//	}

//	@BeforeQuery(entity = "PurchaseDocument", serviceName = "PurchaseService")
//	public BeforeQueryResponse beforeQueryPurchaseDocument(QueryRequest req, ExtensionHelper helper) {
//		//TODO: add your custom logic / validations here...
//
//		return BeforeQueryResponse.setSuccess().response(); //use this API if validation checks are successful.
//		//return BeforeQueryResponse.setError(ErrorResponse.getBuilder().setMessage("You are not authorized to query this entity").response()); //use this API if any validation checks fail.
//	}

//	@BeforeCreate(entity = "PurchaseDocument", serviceName = "PurchaseService")
//	public BeforeCreateResponse beforeCreatePurchaseDocument(CreateRequest req, ExtensionHelper helper) {
//		EntityData data = req.getData();
//		//TODO: add your custom logic / validations here...
//
//		return BeforeCreateResponse.setSuccess().response(); //use this API if the payload has not been modified.
//		//return BeforeCreateResponse.setSuccess().setEntityData(data).response(); //use this API if the payload is modified.
//		//return BeforeCreateResponse.setError(ErrorResponse.getBuilder().setMessage("You are not authorized to add items.").response()); //use this API if any validation checks fail.
//	}

//	@AfterCreate(entity = "PurchaseDocument", serviceName = "PurchaseService")
//	public CreateResponse afterCreatePurchaseDocument(CreateRequest req, CreateResponseAccessor res, ExtensionHelper helper) {
//		//TODO: add your custom logic / validations here...
//
//		return res.getOriginalResponse(); //use this API if operation succeeded and payload has not been modified.
//		//return CreateResponse.setError(ErrorResponse.getBuilder().setMessage("Create Operation Failed").response()); //use this API if should return error response.
//	}

//	@BeforeUpdate(entity = "PurchaseDocument", serviceName = "PurchaseService")
//	public BeforeUpdateResponse beforeUpdatePurchaseDocument(UpdateRequest req, ExtensionHelper helper) {
//		EntityData data = req.getData();
//		//TODO: add your custom logic / validations here...
//
//		return BeforeUpdateResponse.setSuccess().response(); //use this API if the payload has not been modified.
//		//return BeforeUpdateResponse.setSuccess().setEntityData(data).response(); //use this API if the payload is modified.
//		//return BeforeUpdateResponse.setError(ErrorResponse.getBuilder().setMessage("You are not authorized to update this item.").response()); //use this API if any validation checks fail.
//	}

//	@AfterUpdate(entity = "PurchaseDocument", serviceName = "PurchaseService")
//	public UpdateResponse afterUpdatePurchaseDocument(UpdateRequest req, UpdateResponseAccessor res, ExtensionHelper helper) {
//		//TODO: add your custom logic / validations here...
//
//		return res.getOriginalResponse(); //use this API if operation succeeded and payload has not been modified.
//		//return UpdateResponse.setError(ErrorResponse.getBuilder().setMessage("Update Operation Failed").response()); //use this API if should return error response.
//	}

//	@BeforeDelete(entity = "PurchaseDocument", serviceName = "PurchaseService")
//	public BeforeDeleteResponse beforeDeletePurchaseDocument(DeleteRequest req, ExtensionHelper helper) {
//		//TODO: add your custom logic / validations here...
//
//		return BeforeDeleteResponse.setSuccess().response(); //use this API if validation checks are successful.
//		//return BeforeDeleteResponse.setError(ErrorResponse.getBuilder().setMessage("You are not authorized to delete this item.").response()); //use this API if your validation checks fail
//	}

//	@AfterDelete(entity = "PurchaseDocument", serviceName = "PurchaseService")
//	public DeleteResponse afterDeletePurchaseDocument(DeleteRequest req, DeleteResponseAccessor res, ExtensionHelper helper) {
//		//TODO: add your custom logic / validations here...
//
//		return res.getOriginalResponse(); //use this API if operation succeeded and payload has not been modified.
//		//return DeleteResponse.setError(ErrorResponse.getBuilder().setMessage("Delete Operation Failed").response()); //use this API if should return error response.
//	}

