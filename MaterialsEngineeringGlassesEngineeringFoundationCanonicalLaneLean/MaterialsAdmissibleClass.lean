import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringFoundationCanonicalLaneLean

structure MaterialsAdmittedObject where
  materialSystem : Type
  propertyClosure : Prop

structure MaterialsAdmissibleClass where
  object : MaterialsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def materialsAdmittedClosure (A : MaterialsAdmissibleClass) : Prop :=
  A.object.propertyClosure ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsEngineeringGlassesEngineeringFoundationCanonicalLaneLean
end HautevilleHouse