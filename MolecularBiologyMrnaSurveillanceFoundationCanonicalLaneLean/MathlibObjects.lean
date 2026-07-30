import MolecularBiologyMrnaSurveillanceFoundationCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MrnaSurveillanceSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MrnaSurveillanceAdmittedObject where
  space : MrnaSurveillanceSpace
  transcriptPresent : Prop
  surveillancePathwayActive : Prop
  decayModel : Type
  decayTopology : TopologicalSpace decayModel
  degradationComplete : Prop
  conclusion : degradationComplete

structure MrnaSurveillanceEndgameState where
  object : MrnaSurveillanceAdmittedObject

def MrnaSurveillanceWitnessClosed (O : MrnaSurveillanceAdmittedObject) : Prop :=
  O.degradationComplete

end MolecularBiologyMrnaSurveillanceFoundationCanonicalLaneLean
end HautevilleHouse