import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceFoundationCanonicalLaneLean

structure NoGoDecayPackage where
  strongMrnaSecondaryStructure : Prop
  ribosomeStallingAtStructure : Prop
  endonucleolyticCleavage : Prop
  exosomeInvolvement : Prop

structure NoGoDecayEvidence (N : NoGoDecayPackage) where
  strongMrnaSecondaryStructureClosed : N.strongMrnaSecondaryStructure
  ribosomeStallingAtStructureClosed : N.ribosomeStallingAtStructure
  endonucleolyticCleavageClosed : N.endonucleolyticCleavage
  exosomeInvolvementClosed : N.exosomeInvolvement

def NoGoDecayClosed (N : NoGoDecayPackage) : Prop :=
  N.strongMrnaSecondaryStructure ∧ N.ribosomeStallingAtStructure ∧
  N.endonucleolyticCleavage ∧ N.exosomeInvolvement

theorem no_go_decay_closed_from_evidence (N : NoGoDecayPackage) (E : NoGoDecayEvidence N) :
    NoGoDecayClosed N := by
  exact And.intro E.strongMrnaSecondaryStructureClosed
    (And.intro E.ribosomeStallingAtStructureClosed
      (And.intro E.endonucleolyticCleavageClosed E.exosomeInvolvementClosed))

end MolecularBiologyMrnaSurveillanceFoundationCanonicalLaneLean
end HautevilleHouse
