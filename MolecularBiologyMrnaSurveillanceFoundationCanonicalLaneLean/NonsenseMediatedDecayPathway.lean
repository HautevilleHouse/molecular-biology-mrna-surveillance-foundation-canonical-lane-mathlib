import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceFoundationCanonicalLaneLean

structure NonsenseMediatedDecayPathway where
  surveillanceComplex : Type u
  prematureStopCodon : Prop
  exonJunctionComplex : Prop
  upfFactors : Prop
  decayMechanismActivated : Prop

structure NonsenseMediatedDecayEvidence (P : NonsenseMediatedDecayPathway) where
  prematureStopCodonClosed : P.prematureStopCodon
  exonJunctionComplexClosed : P.exonJunctionComplex
  upfFactorsClosed : P.upfFactors
  decayMechanismActivatedClosed : P.decayMechanismActivated

def NonsenseMediatedDecayClosed (P : NonsenseMediatedDecayPathway) : Prop :=
  P.prematureStopCodon ∧ P.exonJunctionComplex ∧ P.upfFactors ∧ P.decayMechanismActivated

theorem nonsense_mediated_decay_closed_from_evidence (P : NonsenseMediatedDecayPathway) (E : NonsenseMediatedDecayEvidence P) : NonsenseMediatedDecayClosed P := by
  exact And.intro E.prematureStopCodonClosed (And.intro E.exonJunctionComplexClosed (And.intro E.upfFactorsClosed E.decayMechanismActivatedClosed))

end MolecularBiologyMrnaSurveillanceFoundationCanonicalLaneLean
end HautevilleHouse
