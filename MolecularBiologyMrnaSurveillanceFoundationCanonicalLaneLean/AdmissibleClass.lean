import MolecularBiologyMrnaSurveillanceFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : MrnaSurveillanceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MrnaSurveillanceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyMrnaSurveillanceFoundationCanonicalLaneLean
end HautevilleHouse