import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringFoundationCanonicalLaneLean

structure ElasticityPackage where
  youngModulus : Float
  poissonRatio : Float
  shearModulus : Float
  bulkModulus : Float
  stressStrainCurve : Float → Float

structure ElasticityEvidence (E : ElasticityPackage) where
  youngModulusClosed : E.youngModulus > 0
  poissonRatioClosed : -1 < E.poissonRatio ∧ E.poissonRatio < 0.5
  shearModulusClosed : E.shearModulus > 0
  bulkModulusClosed : E.bulkModulus > 0
  stressStrainCurveClosed : ∀ x, x ≥ 0 → E.stressStrainCurve x ≥ 0

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.youngModulus > 0 ∧ (-1 < E.poissonRatio ∧ E.poissonRatio < 0.5) ∧ E.shearModulus > 0 ∧ E.bulkModulus > 0 ∧ (∀ x, x ≥ 0 → E.stressStrainCurve x ≥ 0)

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.youngModulusClosed (And.intro Ev.poissonRatioClosed (And.intro Ev.shearModulusClosed (And.intro Ev.bulkModulusClosed Ev.stressStrainCurveClosed)))

end MaterialsEngineeringGlassesEngineeringFoundationCanonicalLaneLean
end HautevilleHouse