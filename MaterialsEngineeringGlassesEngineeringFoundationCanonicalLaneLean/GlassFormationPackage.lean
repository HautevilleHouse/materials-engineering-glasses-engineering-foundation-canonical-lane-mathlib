import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringFoundationCanonicalLaneLean

structure GlassFormationPackage where
  criticalCoolingRate : Float
  glassTransitionTemperature : Float
  fragilityIndex : Float
  viscosityAtTg : Float
  networkFormerFraction : Float

structure GlassFormationEvidence (G : GlassFormationPackage) where
  criticalCoolingRateClosed : G.criticalCoolingRate > 0
  glassTransitionTemperatureClosed : G.glassTransitionTemperature > 0
  fragilityIndexClosed : G.fragilityIndex > 0
  viscosityAtTgClosed : G.viscosityAtTg > 1e12
  networkFormerFractionClosed : G.networkFormerFraction > 0 ∧ G.networkFormerFraction < 1

def GlassFormationClosed (G : GlassFormationPackage) : Prop :=
  G.criticalCoolingRate > 0 ∧ G.glassTransitionTemperature > 0 ∧ G.fragilityIndex > 0 ∧ G.viscosityAtTg > 1e12 ∧ (G.networkFormerFraction > 0 ∧ G.networkFormerFraction < 1)

theorem glass_formation_closed_from_evidence (G : GlassFormationPackage) (E : GlassFormationEvidence G) : GlassFormationClosed G := by
  exact And.intro E.criticalCoolingRateClosed (And.intro E.glassTransitionTemperatureClosed (And.intro E.fragilityIndexClosed (And.intro E.viscosityAtTgClosed E.networkFormerFractionClosed)))

end MaterialsEngineeringGlassesEngineeringFoundationCanonicalLaneLean
end HautevilleHouse