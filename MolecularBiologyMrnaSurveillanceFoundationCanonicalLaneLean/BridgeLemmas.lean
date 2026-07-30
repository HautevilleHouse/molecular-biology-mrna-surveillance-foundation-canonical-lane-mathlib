import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyMrnaSurveillanceFoundationCanonicalLaneLean.MrnaSurveillanceAdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.surveillancePathwayActive ∧ A.object.mrnaDecayBody

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyMrnaSurveillanceFoundationCanonicalLaneLean
end HautevilleHouse
