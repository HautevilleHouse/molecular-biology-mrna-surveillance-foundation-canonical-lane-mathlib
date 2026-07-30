import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceFoundationCanonicalLaneLean

structure ExonJunctionComplexPackage where
  eif4a3Bound : Prop
  magohY14HeterodimerBound : Prop
  mlN51Bound : Prop
  upfComplexRecruitmentPlatform : Prop
  splicingDependentDeposition : Prop
  downstreamExonJunctionMarker : Prop

structure ExonJunctionComplexEvidence (E : ExonJunctionComplexPackage) where
  eif4a3BoundClosed : E.eif4a3Bound
  magohY14HeterodimerBoundClosed : E.magohY14HeterodimerBound
  mlN51BoundClosed : E.mlN51Bound
  upfComplexRecruitmentPlatformClosed : E.upfComplexRecruitmentPlatform
  splicingDependentDepositionClosed : E.splicingDependentDeposition
  downstreamExonJunctionMarkerClosed : E.downstreamExonJunctionMarker

def ExonJunctionComplexClosed (E : ExonJunctionComplexPackage) : Prop :=
  E.eif4a3Bound ∧ E.magohY14HeterodimerBound ∧ E.mlN51Bound ∧
  E.upfComplexRecruitmentPlatform ∧ E.splicingDependentDeposition ∧ E.downstreamExonJunctionMarker

theorem exon_junction_complex_closed_from_evidence
    (E : ExonJunctionComplexPackage) (Ev : ExonJunctionComplexEvidence E) :
    ExonJunctionComplexClosed E := by
  exact And.intro Ev.eif4a3BoundClosed
    (And.intro Ev.magohY14HeterodimerBoundClosed
      (And.intro Ev.mlN51BoundClosed
        (And.intro Ev.upfComplexRecruitmentPlatformClosed
          (And.intro Ev.splicingDependentDepositionClosed Ev.downstreamExonJunctionMarkerClosed))))

end MolecularBiologyMrnaSurveillanceFoundationCanonicalLaneLean
end HautevilleHouse
