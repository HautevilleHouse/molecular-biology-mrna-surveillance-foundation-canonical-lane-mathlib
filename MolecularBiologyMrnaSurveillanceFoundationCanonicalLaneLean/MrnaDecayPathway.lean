import MolecularBiologyMrnaSurveillanceFoundationCanonicalLaneLean.NonsenseMediatedDecay

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceFoundationCanonicalLaneLean

structure MrnaDecayPathwayPackage (N : NonsenseMediatedDecayPackage) where
  prematureStopCodonRecognized : Prop
  upfComplexAssembled : Prop
  mrnaDegraded : Prop
  surveillanceCycleClosed : Prop

structure MrnaDecayPathwayEvidence {N : NonsenseMediatedDecayPackage}
    (D : MrnaDecayPathwayPackage N) where
  prematureStopCodonRecognizedClosed : D.prematureStopCodonRecognized
  upfComplexAssembledClosed : D.upfComplexAssembled
  mrnaDegradedClosed : D.mrnaDegraded
  surveillanceCycleClosedClosed : D.surveillanceCycleClosed

def MrnaDecayPathwayClosed {N : NonsenseMediatedDecayPackage}
    (D : MrnaDecayPathwayPackage N) : Prop :=
  D.prematureStopCodonRecognized ∧ D.upfComplexAssembled ∧
  D.mrnaDegraded ∧ D.surveillanceCycleClosed

theorem mrna_decay_pathway_closed_from_evidence
    {N : NonsenseMediatedDecayPackage} (D : MrnaDecayPathwayPackage N)
    (E : MrnaDecayPathwayEvidence D) : MrnaDecayPathwayClosed D := by
  exact And.intro E.prematureStopCodonRecognizedClosed
    (And.intro E.upfComplexAssembledClosed
      (And.intro E.mrnaDegradedClosed E.surveillanceCycleClosedClosed))

end MolecularBiologyMrnaSurveillanceFoundationCanonicalLaneLean
end HautevilleHouse