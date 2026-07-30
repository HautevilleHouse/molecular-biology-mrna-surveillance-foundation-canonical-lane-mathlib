import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceFoundationCanonicalLaneLean

structure NonStopDecayPackage where
  polyALackingStopCodonDetected : Prop
  ski7ComplexRecruited : Prop
  exosomeRecruited : Prop
  mrnaDegradationFrom3end : Prop
  translationTerminationFailure : Prop

structure NonStopDecayEvidence (N : NonStopDecayPackage) where
  polyALackingStopCodonDetectedClosed : N.polyALackingStopCodonDetected
  ski7ComplexRecruitedClosed : N.ski7ComplexRecruited
  exosomeRecruitedClosed : N.exosomeRecruited
  mrnaDegradationFrom3endClosed : N.mrnaDegradationFrom3end
  translationTerminationFailureClosed : N.translationTerminationFailure

def NonStopDecayClosed (N : NonStopDecayPackage) : Prop :=
  N.polyALackingStopCodonDetected ∧ N.ski7ComplexRecruited ∧
  N.exosomeRecruited ∧ N.mrnaDegradationFrom3end ∧ N.translationTerminationFailure

theorem non_stop_decay_closed_from_evidence
    (N : NonStopDecayPackage) (E : NonStopDecayEvidence N) :
    NonStopDecayClosed N := by
  exact And.intro E.polyALackingStopCodonDetectedClosed
    (And.intro E.ski7ComplexRecruitedClosed
      (And.intro E.exosomeRecruitedClosed
        (And.intro E.mrnaDegradationFrom3endClosed E.translationTerminationFailureClosed)))

end MolecularBiologyMrnaSurveillanceFoundationCanonicalLaneLean
end HautevilleHouse
