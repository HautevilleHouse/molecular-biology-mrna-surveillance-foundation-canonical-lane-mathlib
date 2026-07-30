import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceFoundationCanonicalLaneLean

structure RibosomeNoGoDecayPackage where
  eucaryoticMrna : Type u
  orfSequences : List (List (Char))
  ribosomeStallingDetection : Prop
  endonucleolyticCleavage : Prop
  mrnaDecayIntermediateDetected : Prop

structure RibosomeNoGoDecayEvidence (R : RibosomeNoGoDecayPackage) where
  ribosomeStallingDetectionClosed : R.ribosomeStallingDetection
  endonucleolyticCleavageClosed : R.endonucleolyticCleavage
  mrnaDecayIntermediateDetectedClosed : R.mrnaDecayIntermediateDetected

def RibosomeNoGoDecayClosed (R : RibosomeNoGoDecayPackage) : Prop :=
  R.ribosomeStallingDetection ∧ R.endonucleolyticCleavage ∧ R.mrnaDecayIntermediateDetected

theorem ribosome_no_go_decay_closed_from_evidence (R : RibosomeNoGoDecayPackage) (E : RibosomeNoGoDecayEvidence R) :
    RibosomeNoGoDecayClosed R := by
  exact And.intro E.ribosomeStallingDetectionClosed
    (And.intro E.endonucleolyticCleavageClosed E.mrnaDecayIntermediateDetectedClosed)

end MolecularBiologyMrnaSurveillanceFoundationCanonicalLaneLean
end HautevilleHouse
