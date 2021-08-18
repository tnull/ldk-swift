import LDKHeaders

public class Result_TxCreationKeysDecodeErrorZ {

	private static var instanceCounter: UInt = 0
	internal let instanceNumber: UInt
	internal private(set) var dangling = false

    public internal(set) var cOpaqueStruct: LDKCResult_TxCreationKeysDecodeErrorZ?;

	/* DEFAULT_CONSTRUCTOR_START */

				public init() {
					Self.instanceCounter += 1
					self.instanceNumber = Self.instanceCounter
        			self.cOpaqueStruct = LDKCResult_TxCreationKeysDecodeErrorZ(contents: LDKCResult_TxCreationKeysDecodeErrorZPtr(), result_ok: true)
				}
			
    /* DEFAULT_CONSTRUCTOR_END */

    public init(pointer: LDKCResult_TxCreationKeysDecodeErrorZ){
    	Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter
		self.cOpaqueStruct = pointer
	}

	public func isOk() -> Bool {
		return self.cOpaqueStruct?.result_ok == true
	}

    /* RESULT_METHODS_START */

			public func getError() -> DecodeError? {
				if self.cOpaqueStruct?.result_ok == false {
					return DecodeError(pointer: self.cOpaqueStruct!.contents.err.pointee)
				}
				return nil
			}
			
			public func getValue() -> TxCreationKeys? {
				if self.cOpaqueStruct?.result_ok == true {
					return TxCreationKeys(pointer: self.cOpaqueStruct!.contents.result.pointee)
				}
				return nil
			}
			
    public class func ok(o: TxCreationKeys) -> Result_TxCreationKeysDecodeErrorZ {
    	
        return Result_TxCreationKeysDecodeErrorZ(pointer: CResult_TxCreationKeysDecodeErrorZ_ok(o.danglingClone().cOpaqueStruct!));
    }

    public class func err(e: DecodeError) -> Result_TxCreationKeysDecodeErrorZ {
    	
        return Result_TxCreationKeysDecodeErrorZ(pointer: CResult_TxCreationKeysDecodeErrorZ_err(e.danglingClone().cOpaqueStruct!));
    }

    internal func free() -> Void {
    	
        return CResult_TxCreationKeysDecodeErrorZ_free(self.cOpaqueStruct!);
    }

					internal func dangle() -> Result_TxCreationKeysDecodeErrorZ {
        				self.dangling = true
						return self
					}
					
					deinit {
						if !self.dangling {
							self.free()
						}
					}
				

    public func clone() -> Result_TxCreationKeysDecodeErrorZ {
    	
        return Result_TxCreationKeysDecodeErrorZ(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (origPointer: UnsafePointer<LDKCResult_TxCreationKeysDecodeErrorZ>) in
CResult_TxCreationKeysDecodeErrorZ_clone(origPointer)
});
    }

					internal func danglingClone() -> Result_TxCreationKeysDecodeErrorZ {
        				let dangledClone = self.clone()
						dangledClone.dangling = true
						return dangledClone
					}
				

    /* RESULT_METHODS_END */

}
