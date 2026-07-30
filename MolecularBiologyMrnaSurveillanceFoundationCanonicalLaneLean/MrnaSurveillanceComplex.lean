import MolecularBiologyMrnaSurveillanceFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceFoundationCanonicalLaneLean

structure MrnaSurveillanceComplexPackage where
  coreFactor : Type
  accessoryFactor : Type
  complexAssembled : Prop
  rnaBinding : Prop
  surveillanceSignaling : Prop

structure MrnaSurveillanceComplexEvidence (M : MrnaSurveillanceComplexPackage) where
  complexAssembledClosed : M.complexAssembled
  rnaBindingClosed : M.rnaBinding
  surveillanceSignalingClosed : M.surveillanceSignaling

def MrnaSurveillanceComplexClosed (M : MrnaSurveillanceComplexPackage) : Prop :=
  M.complexAssembled ∧ M.rnaBinding ∧ M.surveillanceSignaling

theorem mrna_surveillance_complex_closed_from_evidence
    (M : MrnaSurveillanceComplexPackage) (E : MrnaSurveillanceComplexEvidence M) :
    MrnaSurveillanceComplexClosed M := by
  exact And.intro E.complexAssembledClosed
    (And.intro E.rnaBindingClosed E.surveillanceSignalingClosed)

end MolecularBiologyMrnaSurveillanceFoundationCanonicalLaneLean
end HautevilleHouse