import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringFoundationCanonicalLaneLean

structure PhaseComponent where
  componentSymbol : String
  moleFraction : ℝ

define PhaseIdentifier (components : List PhaseComponent) : Prop :=
  components.length ≥ 2

structure PhaseDiagramPackage where
  temperatureRange : Set ℝ
  pressureRange : Set ℝ
  phaseBoundaries : List (PhaseComponent × PhaseComponent)
  liquidusSurface : Type u
  solidusSurface : Type v

define PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop := P.liquidusSurface ≠ ∅ ∧ P.solidusSurface ≠ ∅

end MaterialsEngineeringGlassesEngineeringFoundationCanonicalLaneLean
end HautevilleHouse