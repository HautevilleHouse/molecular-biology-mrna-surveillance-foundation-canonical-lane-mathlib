import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceFoundationCanonicalLaneLean

structure mRNAQualityControlPathwaysPackage where
  nonsenseMediatedDecayActive : Prop
  noGoDecayActive : Prop
  nonStopDecayActive : Prop
  surveillanceComplexFormed : Prop
  ribosomeStallingDetected : Prop

structure mRNAQualityControlPathwaysEvidence (P : mRNAQualityControlPathwaysPackage) where
  nonsenseMediatedDecayActiveClosed : P.nonsenseMediatedDecayActive
  noGoDecayActiveClosed : P.noGoDecayActive
  nonStopDecayActiveClosed : P.nonStopDecayActive
  surveillanceComplexFormedClosed : P.surveillanceComplexFormed
  ribosomeStallingDetectedClosed : P.ribosomeStallingDetected

def mRNAQualityControlPathwaysClosed (P : mRNAQualityControlPathwaysPackage) : Prop :=
  P.nonsenseMediatedDecayActive ∧ P.noGoDecayActive ∧ P.nonStopDecayActive ∧
  P.surveillanceComplexFormed ∧ P.ribosomeStallingDetected

theorem mrna_quality_control_pathways_closed_from_evidence
    (P : mRNAQualityControlPathwaysPackage) (E : mRNAQualityControlPathwaysEvidence P) :
    mRNAQualityControlPathwaysClosed P := by
  exact And.intro E.nonsenseMediatedDecayActiveClosed
    (And.intro E.noGoDecayActiveClosed
      (And.intro E.nonStopDecayActiveClosed
        (And.intro E.surveillanceComplexFormedClosed E.ribosomeStallingDetectedClosed)))

end MolecularBiologyMrnaSurveillanceFoundationCanonicalLaneLean
end HautevilleHouse
