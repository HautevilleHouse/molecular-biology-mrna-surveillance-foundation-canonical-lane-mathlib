import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceFoundationCanonicalLaneLean

structure NonstopDecayPackage where
  missingStopCodon : Prop
  sk7Complex : Prop
  exosomeRecruitment : Prop
  exonucleolyticDecay : Prop

structure NonstopDecayEvidence (N : NonstopDecayPackage) where
  missingStopCodonClosed : N.missingStopCodon
  sk7ComplexClosed : N.sk7Complex
  exosomeRecruitmentClosed : N.exosomeRecruitment
  exonucleolyticDecayClosed : N.exonucleolyticDecay

def NonstopDecayClosed (N : NonstopDecayPackage) : Prop :=
  N.missingStopCodon ∧ N.sk7Complex ∧ N.exosomeRecruitment ∧ N.exonucleolyticDecay

theorem nonstop_decay_closed_from_evidence (N : NonstopDecayPackage) (E : NonstopDecayEvidence N) : NonstopDecayClosed N := by
  exact And.intro E.missingStopCodonClosed (And.intro E.sk7ComplexClosed (And.intro E.exosomeRecruitmentClosed E.exonucleolyticDecayClosed))

end MolecularBiologyMrnaSurveillanceFoundationCanonicalLaneLean
end HautevilleHouse
