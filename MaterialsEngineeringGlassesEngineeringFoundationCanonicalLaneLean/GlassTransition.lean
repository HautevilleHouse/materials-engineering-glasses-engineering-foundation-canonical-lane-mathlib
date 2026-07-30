import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringFoundationCanonicalLaneLean

structure GlassTransitionPackage where
  glassTransitionTemperature : Prop
  viscosityModel : Prop
  fictiveTemperature : Prop
  relaxationTime : Prop

def GlassTransitionClosed (G : GlassTransitionPackage) : Prop :=
  G.glassTransitionTemperature ∧ G.viscosityModel ∧ G.fictiveTemperature ∧ G.relaxationTime

structure GlassTransitionEvidence (G : GlassTransitionPackage) where
  glassTransitionTemperatureClosed : G.glassTransitionTemperature
  viscosityModelClosed : G.viscosityModel
  fictiveTemperatureClosed : G.fictiveTemperature
  relaxationTimeClosed : G.relaxationTime

theorem glass_transition_closed_from_evidence (G : GlassTransitionPackage) (E : GlassTransitionEvidence G) :
    GlassTransitionClosed G := by
  exact And.intro E.glassTransitionTemperatureClosed (And.intro E.viscosityModelClosed (And.intro E.fictiveTemperatureClosed E.relaxationTimeClosed))

end MaterialsEngineeringGlassesEngineeringFoundationCanonicalLaneLean
end HautevilleHouse