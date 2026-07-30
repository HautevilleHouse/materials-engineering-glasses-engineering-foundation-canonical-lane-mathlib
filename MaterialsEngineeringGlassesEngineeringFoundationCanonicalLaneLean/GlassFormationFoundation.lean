import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringFoundationCanonicalLaneLean

structure GlassFormationFoundation where
  crystallizationKinetics : Prop
  glassTransition : Prop
  nucleationRate : Prop
  growthRate : Prop
  crystallizationKineticsClosed : crystallizationKinetics
  glassTransitionClosed : glassTransition
  nucleationRateClosed : nucleationRate
  growthRateClosed : growthRate

def GlassFormationFoundationClosed (G : GlassFormationFoundation) : Prop :=
  G.crystallizationKinetics ∧ G.glassTransition ∧ G.nucleationRate ∧ G.growthRate

theorem glass_formation_closed_from_evidence (G : GlassFormationFoundation) :
    GlassFormationFoundationClosed G := by
  exact And.intro G.crystallizationKineticsClosed
    (And.intro G.glassTransitionClosed
      (And.intro G.nucleationRateClosed G.growthRateClosed))

end HautevilleHouse.MaterialsEngineeringGlassesEngineeringFoundationCanonicalLaneLean
