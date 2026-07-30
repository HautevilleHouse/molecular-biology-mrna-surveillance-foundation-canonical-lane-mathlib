import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyMrnaSurveillanceFoundationCanonicalLaneLean.mRNASurveillancePathway
import MolecularBiologyMrnaSurveillanceFoundationCanonicalLaneLean.NMDSubstrateRecognition
import MolecularBiologyMrnaSurveillanceFoundationCanonicalLaneLean.UPF1SMG1Kinase
import MolecularBiologyMrnaSurveillanceFoundationCanonicalLaneLean.DecayComplexAssembly

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedmRNASurveillanceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_mrna_surveillance_endgame (A : AdmissibleClass) : ConstrainedmRNASurveillanceClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyMrnaSurveillanceFoundationCanonicalLaneLean
end HautevilleHouse