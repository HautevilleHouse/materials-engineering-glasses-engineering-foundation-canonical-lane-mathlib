import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringFoundationCanonicalLaneLean

structure ElasticityTensorPackage where
  symmetryConditions : Prop
  positiveDefiniteness : Prop
  stiffnessMatrix : Prop
  complianceMatrix : Prop

def ElasticityTensorClosed (E : ElasticityTensorPackage) : Prop :=
  E.symmetryConditions ∧ E.positiveDefiniteness ∧ E.stiffnessMatrix ∧ E.complianceMatrix

structure ElasticityTensorEvidence (E : ElasticityTensorPackage) where
  symmetryConditionsClosed : E.symmetryConditions
  positiveDefinitenessClosed : E.positiveDefiniteness
  stiffnessMatrixClosed : E.stiffnessMatrix
  complianceMatrixClosed : E.complianceMatrix

theorem elasticity_tensor_closed_from_evidence (E : ElasticityTensorPackage) (Ev : ElasticityTensorEvidence E) :
    ElasticityTensorClosed E := by
  exact And.intro Ev.symmetryConditionsClosed (And.intro Ev.positiveDefinitenessClosed (And.intro Ev.stiffnessMatrixClosed Ev.complianceMatrixClosed))

end MaterialsEngineeringGlassesEngineeringFoundationCanonicalLaneLean
end HautevilleHouse