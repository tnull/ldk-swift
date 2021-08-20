public class RouteHintHop {

	private static var instanceCounter: UInt = 0
	internal let instanceNumber: UInt
	internal private(set) var dangling = false

    public internal(set) var cOpaqueStruct: LDKRouteHintHop?;


	/* DEFAULT_CONSTRUCTOR_START */
    public init(src_node_id_arg: [UInt8], short_channel_id_arg: UInt64, fees_arg: RoutingFees, cltv_expiry_delta_arg: UInt16, htlc_minimum_msat_arg: Option_u64Z, htlc_maximum_msat_arg: Option_u64Z) {
    	Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter
    	
        self.cOpaqueStruct = RouteHintHop_new(Bindings.new_LDKPublicKey(array: src_node_id_arg), short_channel_id_arg, fees_arg.danglingClone().cOpaqueStruct!, cltv_expiry_delta_arg, htlc_minimum_msat_arg.danglingClone().cOpaqueStruct!, htlc_maximum_msat_arg.danglingClone().cOpaqueStruct!)
    }
    /* DEFAULT_CONSTRUCTOR_END */

    public init(pointer: LDKRouteHintHop){
    	Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter
		self.cOpaqueStruct = pointer
	}

    /* STRUCT_METHODS_START */

    public func get_src_node_id() -> [UInt8] {
    	
        return Bindings.LDKPublicKey_to_array(nativeType: withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKRouteHintHop>) in
RouteHintHop_get_src_node_id(this_ptrPointer)
});
    }

    public func set_src_node_id(val: [UInt8]) -> Void {
    	
							let this_ptrPointer = UnsafeMutablePointer<LDKRouteHintHop>.allocate(capacity: 1)
							this_ptrPointer.initialize(to: self.cOpaqueStruct!)
						
        return RouteHintHop_set_src_node_id(this_ptrPointer, Bindings.new_LDKPublicKey(array: val));
    }

    public func get_short_channel_id() -> UInt64 {
    	
        return withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKRouteHintHop>) in
RouteHintHop_get_short_channel_id(this_ptrPointer)
};
    }

    public func set_short_channel_id(val: UInt64) -> Void {
    	
							let this_ptrPointer = UnsafeMutablePointer<LDKRouteHintHop>.allocate(capacity: 1)
							this_ptrPointer.initialize(to: self.cOpaqueStruct!)
						
        return RouteHintHop_set_short_channel_id(this_ptrPointer, val);
    }

    public func get_fees() -> RoutingFees {
    	
        return RoutingFees(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKRouteHintHop>) in
RouteHintHop_get_fees(this_ptrPointer)
});
    }

    public func set_fees(val: RoutingFees) -> Void {
    	
							let this_ptrPointer = UnsafeMutablePointer<LDKRouteHintHop>.allocate(capacity: 1)
							this_ptrPointer.initialize(to: self.cOpaqueStruct!)
						
        return RouteHintHop_set_fees(this_ptrPointer, val.danglingClone().cOpaqueStruct!);
    }

    public func get_cltv_expiry_delta() -> UInt16 {
    	
        return withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKRouteHintHop>) in
RouteHintHop_get_cltv_expiry_delta(this_ptrPointer)
};
    }

    public func set_cltv_expiry_delta(val: UInt16) -> Void {
    	
							let this_ptrPointer = UnsafeMutablePointer<LDKRouteHintHop>.allocate(capacity: 1)
							this_ptrPointer.initialize(to: self.cOpaqueStruct!)
						
        return RouteHintHop_set_cltv_expiry_delta(this_ptrPointer, val);
    }

    public func get_htlc_minimum_msat() -> Option_u64Z {
    	
        return Option_u64Z(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKRouteHintHop>) in
RouteHintHop_get_htlc_minimum_msat(this_ptrPointer)
});
    }

    public func set_htlc_minimum_msat(val: Option_u64Z) -> Void {
    	
							let this_ptrPointer = UnsafeMutablePointer<LDKRouteHintHop>.allocate(capacity: 1)
							this_ptrPointer.initialize(to: self.cOpaqueStruct!)
						
        return RouteHintHop_set_htlc_minimum_msat(this_ptrPointer, val.danglingClone().cOpaqueStruct!);
    }

    public func get_htlc_maximum_msat() -> Option_u64Z {
    	
        return Option_u64Z(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKRouteHintHop>) in
RouteHintHop_get_htlc_maximum_msat(this_ptrPointer)
});
    }

    public func set_htlc_maximum_msat(val: Option_u64Z) -> Void {
    	
							let this_ptrPointer = UnsafeMutablePointer<LDKRouteHintHop>.allocate(capacity: 1)
							this_ptrPointer.initialize(to: self.cOpaqueStruct!)
						
        return RouteHintHop_set_htlc_maximum_msat(this_ptrPointer, val.danglingClone().cOpaqueStruct!);
    }

    public class func eq(a: RouteHintHop, b: RouteHintHop) -> Bool {
    	
        return withUnsafePointer(to: a.cOpaqueStruct!) { (aPointer: UnsafePointer<LDKRouteHintHop>) in
withUnsafePointer(to: b.cOpaqueStruct!) { (bPointer: UnsafePointer<LDKRouteHintHop>) in
RouteHintHop_eq(aPointer, bPointer)
}
};
    }

    public func clone() -> RouteHintHop {
    	
        return RouteHintHop(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (origPointer: UnsafePointer<LDKRouteHintHop>) in
RouteHintHop_clone(origPointer)
});
    }

					internal func danglingClone() -> RouteHintHop {
        				let dangledClone = self.clone()
						dangledClone.dangling = true
						return dangledClone
					}
				

    internal func free() -> Void {
    	
        return RouteHintHop_free(self.cOpaqueStruct!);
    }

					internal func dangle() -> RouteHintHop {
        				self.dangling = true
						return self
					}
					
					deinit {
						if !self.dangling {
							print("Freeing RouteHintHop \(self.instanceNumber).")
							self.free()
						} else {
							print("Not freeing RouteHintHop \(self.instanceNumber) due to dangle.")
						}
					}
				

    /* STRUCT_METHODS_END */

}
