import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def glassesProjection : Projection GlassesEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem glasses_projection_idempotent (x : GlassesEndgameState) :
    glassesProjection.toFun (glassesProjection.toFun x) = glassesProjection.toFun x := by
  exact glassesProjection.idempotent x

end HautevilleHouse.MaterialsEngineeringGlassesEngineeringFoundationCanonicalLaneLean
