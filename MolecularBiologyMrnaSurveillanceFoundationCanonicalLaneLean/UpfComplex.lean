import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceFoundationCanonicalLaneLean

structure UpfComplexPackage where
  upf1Recruited : Prop
  upf2Recruited : Prop
  upf3Recruited : Prop
  atpaseActivity : Prop
  helicaseActivity : Prop
  smgKinasePhosphorylation : Prop

structure UpfComplexEvidence (U : UpfComplexPackage) where
  upf1RecruitedClosed : U.upf1Recruited
  upf2RecruitedClosed : U.upf2Recruited
  upf3RecruitedClosed : U.upf3Recruited
  atpaseActivityClosed : U.atpaseActivity
  helicaseActivityClosed : U.helicaseActivity
  smgKinasePhosphorylationClosed : U.smgKinasePhosphorylation

def UpfComplexClosed (U : UpfComplexPackage) : Prop :=
  U.upf1Recruited ∧ U.upf2Recruited ∧ U.upf3Recruited ∧
  U.atpaseActivity ∧ U.helicaseActivity ∧ U.smgKinasePhosphorylation

theorem upf_complex_closed_from_evidence
    (U : UpfComplexPackage) (E : UpfComplexEvidence U) :
    UpfComplexClosed U := by
  exact And.intro E.upf1RecruitedClosed
    (And.intro E.upf2RecruitedClosed
      (And.intro E.upf3RecruitedClosed
        (And.intro E.atpaseActivityClosed
          (And.intro E.helicaseActivityClosed E.smgKinasePhosphorylationClosed))))

end MolecularBiologyMrnaSurveillanceFoundationCanonicalLaneLean
end HautevilleHouse
