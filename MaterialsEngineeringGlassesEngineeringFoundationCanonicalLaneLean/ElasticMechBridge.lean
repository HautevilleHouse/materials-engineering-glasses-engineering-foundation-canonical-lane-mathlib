import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringFoundationCanonicalLaneLean

structure ElasticMechFoundation where
  elasticModuli : Prop
  poissonRatio : Prop
  hardness : Prop
  fractureToughness : Prop
  elasticModuliClosed : elasticModuli
  poissonRatioClosed : poissonRatio
  hardnessClosed : hardness
  fractureToughnessClosed : fractureToughness

def ElasticMechFoundationClosed (E : ElasticMechFoundation) : Prop :=
  E.elasticModuli ∧ E.poissonRatio ∧ E.hardness ∧ E.fractureToughness

theorem elastic_mech_closed_from_evidence (E : ElasticMechFoundation) :
    ElasticMechFoundationClosed E := by
  exact And.intro E.elasticModuliClosed
    (And.intro E.poissonRatioClosed
      (And.intro E.hardnessClosed E.fractureToughnessClosed))

end HautevilleHouse.MaterialsEngineeringGlassesEngineeringFoundationCanonicalLaneLean
