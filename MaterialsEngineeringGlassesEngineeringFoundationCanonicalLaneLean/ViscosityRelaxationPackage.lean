import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringFoundationCanonicalLaneLean

structure RelaxationTimeDistribution where
  tauValues : List ℝ
  weights : List ℝ

define Normalized : Prop := (sum weights) = 1.0

structure ViscosityRelaxationPackage where
  viscosity : ℝ
  relaxationTimes : RelaxationTimeDistribution
  glassTransitionTemperature : ℝ
  toolNarayanaswamyModel : Prop

define ViscosityRelaxationClosed (V : ViscosityRelaxationPackage) : Prop :=
  V.viscosity > 0 ∧ V.relaxationTimes.Normalized ∧ V.toolNarayanaswamyModel

end MaterialsEngineeringGlassesEngineeringFoundationCanonicalLaneLean
end HautevilleHouse