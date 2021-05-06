public class ChannelHandshakeLimits {

    var cOpaqueStruct: LDKChannelHandshakeLimits?;

	/* DEFAULT_CONSTRUCTOR_START */
    public init() {
    	
        self.cOpaqueStruct = ChannelHandshakeLimits_default()
    }
    /* DEFAULT_CONSTRUCTOR_END */

    public init(pointer: LDKChannelHandshakeLimits){
		self.cOpaqueStruct = pointer
	}

    /* STRUCT_METHODS_START */

    public func get_min_funding_satoshis() -> UInt64 {
    	/* NATIVE_CALL_PREP */
        return withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKChannelHandshakeLimits>) in
ChannelHandshakeLimits_get_min_funding_satoshis(this_ptrPointer)
};
    }

    public func set_min_funding_satoshis(val: UInt64) -> Void {
    	/* NATIVE_CALL_PREP */
        return withUnsafeMutablePointer(to: &self.cOpaqueStruct!) { (this_ptrPointer: UnsafeMutablePointer<LDKChannelHandshakeLimits>) in
ChannelHandshakeLimits_set_min_funding_satoshis(this_ptrPointer, val)
};
    }

    public func get_max_htlc_minimum_msat() -> UInt64 {
    	/* NATIVE_CALL_PREP */
        return withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKChannelHandshakeLimits>) in
ChannelHandshakeLimits_get_max_htlc_minimum_msat(this_ptrPointer)
};
    }

    public func set_max_htlc_minimum_msat(val: UInt64) -> Void {
    	/* NATIVE_CALL_PREP */
        return withUnsafeMutablePointer(to: &self.cOpaqueStruct!) { (this_ptrPointer: UnsafeMutablePointer<LDKChannelHandshakeLimits>) in
ChannelHandshakeLimits_set_max_htlc_minimum_msat(this_ptrPointer, val)
};
    }

    public func get_min_max_htlc_value_in_flight_msat() -> UInt64 {
    	/* NATIVE_CALL_PREP */
        return withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKChannelHandshakeLimits>) in
ChannelHandshakeLimits_get_min_max_htlc_value_in_flight_msat(this_ptrPointer)
};
    }

    public func set_min_max_htlc_value_in_flight_msat(val: UInt64) -> Void {
    	/* NATIVE_CALL_PREP */
        return withUnsafeMutablePointer(to: &self.cOpaqueStruct!) { (this_ptrPointer: UnsafeMutablePointer<LDKChannelHandshakeLimits>) in
ChannelHandshakeLimits_set_min_max_htlc_value_in_flight_msat(this_ptrPointer, val)
};
    }

    public func get_max_channel_reserve_satoshis() -> UInt64 {
    	/* NATIVE_CALL_PREP */
        return withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKChannelHandshakeLimits>) in
ChannelHandshakeLimits_get_max_channel_reserve_satoshis(this_ptrPointer)
};
    }

    public func set_max_channel_reserve_satoshis(val: UInt64) -> Void {
    	/* NATIVE_CALL_PREP */
        return withUnsafeMutablePointer(to: &self.cOpaqueStruct!) { (this_ptrPointer: UnsafeMutablePointer<LDKChannelHandshakeLimits>) in
ChannelHandshakeLimits_set_max_channel_reserve_satoshis(this_ptrPointer, val)
};
    }

    public func get_min_max_accepted_htlcs() -> UInt16 {
    	/* NATIVE_CALL_PREP */
        return withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKChannelHandshakeLimits>) in
ChannelHandshakeLimits_get_min_max_accepted_htlcs(this_ptrPointer)
};
    }

    public func set_min_max_accepted_htlcs(val: UInt16) -> Void {
    	/* NATIVE_CALL_PREP */
        return withUnsafeMutablePointer(to: &self.cOpaqueStruct!) { (this_ptrPointer: UnsafeMutablePointer<LDKChannelHandshakeLimits>) in
ChannelHandshakeLimits_set_min_max_accepted_htlcs(this_ptrPointer, val)
};
    }

    public func get_min_dust_limit_satoshis() -> UInt64 {
    	/* NATIVE_CALL_PREP */
        return withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKChannelHandshakeLimits>) in
ChannelHandshakeLimits_get_min_dust_limit_satoshis(this_ptrPointer)
};
    }

    public func set_min_dust_limit_satoshis(val: UInt64) -> Void {
    	/* NATIVE_CALL_PREP */
        return withUnsafeMutablePointer(to: &self.cOpaqueStruct!) { (this_ptrPointer: UnsafeMutablePointer<LDKChannelHandshakeLimits>) in
ChannelHandshakeLimits_set_min_dust_limit_satoshis(this_ptrPointer, val)
};
    }

    public func get_max_dust_limit_satoshis() -> UInt64 {
    	/* NATIVE_CALL_PREP */
        return withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKChannelHandshakeLimits>) in
ChannelHandshakeLimits_get_max_dust_limit_satoshis(this_ptrPointer)
};
    }

    public func set_max_dust_limit_satoshis(val: UInt64) -> Void {
    	/* NATIVE_CALL_PREP */
        return withUnsafeMutablePointer(to: &self.cOpaqueStruct!) { (this_ptrPointer: UnsafeMutablePointer<LDKChannelHandshakeLimits>) in
ChannelHandshakeLimits_set_max_dust_limit_satoshis(this_ptrPointer, val)
};
    }

    public func get_max_minimum_depth() -> UInt32 {
    	/* NATIVE_CALL_PREP */
        return withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKChannelHandshakeLimits>) in
ChannelHandshakeLimits_get_max_minimum_depth(this_ptrPointer)
};
    }

    public func set_max_minimum_depth(val: UInt32) -> Void {
    	/* NATIVE_CALL_PREP */
        return withUnsafeMutablePointer(to: &self.cOpaqueStruct!) { (this_ptrPointer: UnsafeMutablePointer<LDKChannelHandshakeLimits>) in
ChannelHandshakeLimits_set_max_minimum_depth(this_ptrPointer, val)
};
    }

    public func get_force_announced_channel_preference() -> Bool {
    	/* NATIVE_CALL_PREP */
        return withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKChannelHandshakeLimits>) in
ChannelHandshakeLimits_get_force_announced_channel_preference(this_ptrPointer)
};
    }

    public func set_force_announced_channel_preference(val: Bool) -> Void {
    	/* NATIVE_CALL_PREP */
        return withUnsafeMutablePointer(to: &self.cOpaqueStruct!) { (this_ptrPointer: UnsafeMutablePointer<LDKChannelHandshakeLimits>) in
ChannelHandshakeLimits_set_force_announced_channel_preference(this_ptrPointer, val)
};
    }

    public func get_their_to_self_delay() -> UInt16 {
    	/* NATIVE_CALL_PREP */
        return withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKChannelHandshakeLimits>) in
ChannelHandshakeLimits_get_their_to_self_delay(this_ptrPointer)
};
    }

    public func set_their_to_self_delay(val: UInt16) -> Void {
    	/* NATIVE_CALL_PREP */
        return withUnsafeMutablePointer(to: &self.cOpaqueStruct!) { (this_ptrPointer: UnsafeMutablePointer<LDKChannelHandshakeLimits>) in
ChannelHandshakeLimits_set_their_to_self_delay(this_ptrPointer, val)
};
    }

    public func clone(orig: ChannelHandshakeLimits) -> ChannelHandshakeLimits {
    	/* NATIVE_CALL_PREP */
        return withUnsafePointer(to: orig.cOpaqueStruct!) { (origPointer: UnsafePointer<LDKChannelHandshakeLimits>) in
ChannelHandshakeLimits(pointer: ChannelHandshakeLimits_clone(origPointer))
};
    }

				
	deinit {
					
					
		ChannelHandshakeLimits_free(self.cOpaqueStruct!)
				
	}
			
    /* STRUCT_METHODS_END */

}
