import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringFoundationCanonicalLaneLean

structure GlassTransitionPackage where
  glassFormer : Type u
  coolingRate : Type v
  fictiveTemperature : Type w
  glassTransitionTemperature : Type x
  toolNarayanaswamyModel : Prop
  fragilityIndex : Prop

structure GlassTransitionEvidence (G : GlassTransitionPackage) where
  toolNarayanaswamyModelClosed : G.toolNarayanaswamyModel
  fragilityIndexClosed : G.fragilityIndex

def GlassTransitionClosed (G : GlassTransitionPackage) : Prop :=
  G.toolNarayanaswamyModel ∧ G.fragilityIndex

theorem glass_transition_closed_from_evidence (G : GlassTransitionPackage)
    (E : GlassTransitionEvidence G) : GlassTransitionClosed G := by
  exact And.intro E.toolNarayanaswamyModelClosed E.fragilityIndexClosed

end MaterialsEngineeringGlassesEngineeringFoundationCanonicalLaneLean
end HautevilleHouse