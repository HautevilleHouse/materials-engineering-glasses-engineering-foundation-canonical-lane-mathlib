import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringFoundationCanonicalLaneLean

structure PrimitiveAmorphousStructure where
  atomTypes : Type
  bondCoordination : Type
  randomPacking : Prop
  shortRangeOrder : Prop
  mediumRangeOrder : Prop
  densityFloating : Prop
  randomPackingTerm : randomPacking
  shortRangeOrderTerm : shortRangeOrder
  mediumRangeOrderTerm : mediumRangeOrder
  densityFloatingTerm : densityFloating

def PrimitiveAmorphousStructureClosed (A : PrimitiveAmorphousStructure) : Prop :=
  A.randomPacking ∧ A.shortRangeOrder ∧ A.mediumRangeOrder ∧ A.densityFloating

end HautevilleHouse.MaterialsEngineeringGlassesEngineeringFoundationCanonicalLaneLean
