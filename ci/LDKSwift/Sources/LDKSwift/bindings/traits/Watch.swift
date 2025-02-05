#if SWIFT_PACKAGE
import LDKHeaders
#endif

import Foundation

public typealias Watch = Bindings.Watch

extension Bindings {

	open class Watch: NativeTraitWrapper {

		private static var instanceCounter: UInt = 0
		internal let instanceNumber: UInt

		internal var cOpaqueStruct: LDKWatch?

		public init() {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter

			/* NATIVE_CALLBACKS_START */

			func watch_channelCallback(pointer: UnsafeRawPointer?, funding_txo: LDKOutPoint, monitor: LDKChannelMonitor) -> LDKChannelMonitorUpdateStatus {
				let instance: Watch = Bindings.pointerToInstance(pointer: pointer!, sourceMarker: "Watch.swift::watch_channel")
				
				return instance.watch_channel(funding_txo: OutPoint(pointer: funding_txo), monitor: ChannelMonitor(pointer: monitor))
			}

			func update_channelCallback(pointer: UnsafeRawPointer?, funding_txo: LDKOutPoint, update: LDKChannelMonitorUpdate) -> LDKChannelMonitorUpdateStatus {
				let instance: Watch = Bindings.pointerToInstance(pointer: pointer!, sourceMarker: "Watch.swift::update_channel")
				
				return instance.update_channel(funding_txo: OutPoint(pointer: funding_txo), update: ChannelMonitorUpdate(pointer: update))
			}

			func release_pending_monitor_eventsCallback(pointer: UnsafeRawPointer?) -> LDKCVec_C3Tuple_OutPointCVec_MonitorEventZPublicKeyZZ {
				let instance: Watch = Bindings.pointerToInstance(pointer: pointer!, sourceMarker: "Watch.swift::release_pending_monitor_events")
				
				
					let returnWrapper = Bindings.new_LDKCVec_C3Tuple_OutPointCVec_MonitorEventZPublicKeyZZWrapper(array: instance.release_pending_monitor_events())
					defer {
						returnWrapper.noOpRetain()
					}
					return returnWrapper.dangle().cOpaqueStruct!
				
			}

			func freeCallback(pointer: UnsafeMutableRawPointer?) -> Void {
				let instance: Watch = Bindings.pointerToInstance(pointer: pointer!, sourceMarker: "Watch.swift::free")
				
				return instance.free()
			}

			/* NATIVE_CALLBACKS_END */

			super.init(conflictAvoidingVariableName: 0)
			self.cOpaqueStruct = LDKWatch(this_arg: Bindings.instanceToPointer(instance: self), 
			watch_channel: watch_channelCallback,
			update_channel: update_channelCallback,
			release_pending_monitor_events: release_pending_monitor_eventsCallback,
			free: freeCallback)

		}

		public init(pointer: LDKWatch){
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cOpaqueStruct = pointer
			super.init(conflictAvoidingVariableName: 0)
		}

		public init(pointer: LDKWatch, anchor: NativeTypeWrapper){
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cOpaqueStruct = pointer
			super.init(conflictAvoidingVariableName: 0)
			self.dangling = true
			try! self.addAnchor(anchor: anchor)
		}

		/* SWIFT_CALLBACKS_START */



					internal func dangle() -> Watch {
        				self.dangling = true
						return self
					}

					deinit {
						if !self.dangling {
							Bindings.print("Freeing Watch \(self.instanceNumber).")
							// self.free()
						} else {
							Bindings.print("Not freeing Watch \(self.instanceNumber) due to dangle.")
						}
					}
				

		open func watch_channel(funding_txo: OutPoint, monitor: ChannelMonitor) -> LDKChannelMonitorUpdateStatus {
			/* EDIT ME */
		
					Bindings.print("Error: Watch::watch_channel MUST be overridden! Offending class: \(String(describing: self)). Aborting.", severity: .ERROR)
					abort()
				
		}

		open func update_channel(funding_txo: OutPoint, update: ChannelMonitorUpdate) -> LDKChannelMonitorUpdateStatus {
			/* EDIT ME */
		
					Bindings.print("Error: Watch::update_channel MUST be overridden! Offending class: \(String(describing: self)). Aborting.", severity: .ERROR)
					abort()
				
		}

		open func release_pending_monitor_events() -> [LDKC3Tuple_OutPointCVec_MonitorEventZPublicKeyZ] {
			/* EDIT ME */
		
					Bindings.print("Error: Watch::release_pending_monitor_events MUST be overridden! Offending class: \(String(describing: self)). Aborting.", severity: .ERROR)
					abort()
				
		}

		open func free() -> Void {
			/* EDIT ME */
		
					Bindings.print("Deactivating Watch \(self.instanceNumber).")
					Bindings.removeInstancePointer(instance: self)
				
		}

		/* SWIFT_CALLBACKS_END */

	}

}


public class NativelyImplementedWatch: Watch {
	/* SWIFT_DEFAULT_CALLBACKS_START */

	public override func watch_channel(funding_txo: OutPoint, monitor: ChannelMonitor) -> LDKChannelMonitorUpdateStatus {
		
				
				return 
				self.cOpaqueStruct!.watch_channel(self.cOpaqueStruct!.this_arg, funding_txo.danglingClone().cOpaqueStruct!, monitor.danglingClone().cOpaqueStruct!)
				
			
	}

	public override func update_channel(funding_txo: OutPoint, update: ChannelMonitorUpdate) -> LDKChannelMonitorUpdateStatus {
		
				
				return 
				self.cOpaqueStruct!.update_channel(self.cOpaqueStruct!.this_arg, funding_txo.danglingClone().cOpaqueStruct!, update.danglingClone().cOpaqueStruct!)
				
			
	}

	public override func release_pending_monitor_events() -> [LDKC3Tuple_OutPointCVec_MonitorEventZPublicKeyZ] {
		
				
				return 
				Bindings.LDKCVec_C3Tuple_OutPointCVec_MonitorEventZPublicKeyZZ_to_array(nativeType: self.cOpaqueStruct!.release_pending_monitor_events(self.cOpaqueStruct!.this_arg), callerContext: "Watch::NativelyImplementedWatch::release_pending_monitor_events")
				
			
	}

	public override func free() -> Void {
		
				
				
				self.cOpaqueStruct!.free(self.cOpaqueStruct!.this_arg)
				
			
	}

	/* SWIFT_DEFAULT_CALLBACKS_END */
}
