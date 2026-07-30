import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringFoundationCanonicalLaneLean

structure ElasticityTensor where
  components : ℝ⁶⁶
  symmetryConditions : Prop
  positiveDefinite : Prop

structure FractureCriterion where
  stressThreshold : ℝ
  strainEnergyReleaseRate : ℝ
  crackPropagation : Prop

structure ElasticityFracturePackage where
  elasticModuli : ElasticityTensor
  fractureCriteria : FractureCriterion
  yieldSurface : Type u

define ElasticityFractureClosed (E : ElasticityFracturePackage) : Prop :=
  E.elasticModuli.symmetryConditions ∧ E.elasticModuli.positiveDefinite ∧ E.fractureCriteria.crackPropagation

end MaterialsEngineeringGlassesEngineeringFoundationCanonicalLaneLean
end HautevilleHouse