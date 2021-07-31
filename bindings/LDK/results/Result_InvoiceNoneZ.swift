public class Result_InvoiceNoneZ {

    public internal(set) var cOpaqueStruct: LDKCResult_InvoiceNoneZ?;

	/* DEFAULT_CONSTRUCTOR_START */

				public init() {
        			self.cOpaqueStruct = LDKCResult_InvoiceNoneZ(contents: LDKCResult_InvoiceNoneZPtr(), result_ok: true)
				}
			
    /* DEFAULT_CONSTRUCTOR_END */

    public init(pointer: LDKCResult_InvoiceNoneZ){
		self.cOpaqueStruct = pointer
	}

	public func isOk() -> Bool {
		return self.cOpaqueStruct?.result_ok == true
	}

    /* RESULT_METHODS_START */

			public func getValue() -> Invoice? {
				if self.cOpaqueStruct?.result_ok == true {
					return Invoice(pointer: self.cOpaqueStruct!.contents.result.pointee)
				}
				return nil
			}
			
    public class func ok(o: Invoice) -> Result_InvoiceNoneZ {
    	
        return Result_InvoiceNoneZ(pointer: CResult_InvoiceNoneZ_ok(o.clone().cOpaqueStruct!));
    }

    public class func err() -> Result_InvoiceNoneZ {
    	
        return Result_InvoiceNoneZ(pointer: CResult_InvoiceNoneZ_err());
    }

    public func free() -> Void {
    	
        return CResult_InvoiceNoneZ_free(self.clone().cOpaqueStruct!);
    }

    public func clone() -> Result_InvoiceNoneZ {
    	
        return Result_InvoiceNoneZ(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (origPointer: UnsafePointer<LDKCResult_InvoiceNoneZ>) in
CResult_InvoiceNoneZ_clone(origPointer)
});
    }

    /* RESULT_METHODS_END */

}
