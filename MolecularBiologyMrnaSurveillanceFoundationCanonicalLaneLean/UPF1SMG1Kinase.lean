import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceFoundationCanonicalLaneLean

structure UPF1SMG1KinasePackage where
  upf1Protein : Type u
  smg1Kinase : Type v
  phosphorylationEvent : Prop
  upf1Activation : Prop
  smg1Recruitment : Prop

structure UPF1SMG1KinaseEvidence (U : UPF1SMG1KinasePackage) where
  phosphorylationEventClosed : U.phosphorylationEvent
  upf1ActivationClosed : U.upf1Activation
  smg1RecruitmentClosed : U.smg1Recruitment

def UPF1SMG1KinaseClosed (U : UPF1SMG1KinasePackage) : Prop :=
  U.phosphorylationEvent ∧ U.upf1Activation ∧ U.smg1Recruitment

theorem upf1_smg1_kinase_closed_from_evidence (U : UPF1SMG1KinasePackage) (E : UPF1SMG1KinaseEvidence U) : UPF1SMG1KinaseClosed U := by
  exact And.intro E.phosphorylationEventClosed (And.intro E.upf1ActivationClosed E.smg1RecruitmentClosed)

end MolecularBiologyMrnaSurveillanceFoundationCanonicalLaneLean
end HautevilleHouse