import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceFoundationCanonicalLaneLean

structure NonsenseMediatedDecayPackage where
  prematureTerminationCodonDetected : Prop
  exonJunctionComplexRemoval : Prop
  upfProteinRecruitment : Prop
  mrnaDecayTriggered : Prop

structure NonsenseMediatedDecayEvidence (N : NonsenseMediatedDecayPackage) where
  prematureTerminationCodonDetectedClosed : N.prematureTerminationCodonDetected
  exonJunctionComplexRemovalClosed : N.exonJunctionComplexRemoval
  upfProteinRecruitmentClosed : N.upfProteinRecruitment
  mrnaDecayTriggeredClosed : N.mrnaDecayTriggered

def NonsenseMediatedDecayClosed (N : NonsenseMediatedDecayPackage) : Prop :=
  N.prematureTerminationCodonDetected ∧ N.exonJunctionComplexRemoval ∧
  N.upfProteinRecruitment ∧ N.mrnaDecayTriggered

theorem nonsense_mediated_decay_closed_from_evidence (N : NonsenseMediatedDecayPackage) (E : NonsenseMediatedDecayEvidence N) :
    NonsenseMediatedDecayClosed N := by
  exact And.intro E.prematureTerminationCodonDetectedClosed
    (And.intro E.exonJunctionComplexRemovalClosed
      (And.intro E.upfProteinRecruitmentClosed E.mrnaDecayTriggeredClosed))

end MolecularBiologyMrnaSurveillanceFoundationCanonicalLaneLean
end HautevilleHouse
