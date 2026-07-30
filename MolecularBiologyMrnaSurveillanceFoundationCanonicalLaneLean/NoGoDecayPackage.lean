import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceFoundationCanonicalLaneLean

structure NoGoDecayPackage where
  stalledRibosome : Prop
  dom34Hbs1Complex : Prop
  mrnaCleavage : Prop
  endonucleolyticDecay : Prop

structure NoGoDecayEvidence (N : NoGoDecayPackage) where
  stalledRibosomeClosed : N.stalledRibosome
  dom34Hbs1ComplexClosed : N.dom34Hbs1Complex
  mrnaCleavageClosed : N.mrnaCleavage
  endonucleolyticDecayClosed : N.endonucleolyticDecay

def NoGoDecayClosed (N : NoGoDecayPackage) : Prop :=
  N.stalledRibosome ∧ N.dom34Hbs1Complex ∧ N.mrnaCleavage ∧ N.endonucleolyticDecay

theorem no_go_decay_closed_from_evidence (N : NoGoDecayPackage) (E : NoGoDecayEvidence N) : NoGoDecayClosed N := by
  exact And.intro E.stalledRibosomeClosed (And.intro E.dom34Hbs1ComplexClosed (And.intro E.mrnaCleavageClosed E.endonucleolyticDecayClosed))

end MolecularBiologyMrnaSurveillanceFoundationCanonicalLaneLean
end HautevilleHouse
