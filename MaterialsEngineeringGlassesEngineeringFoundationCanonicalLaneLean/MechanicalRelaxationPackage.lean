import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringFoundationCanonicalLaneLean

structure MechanicalRelaxationPackage where
  creepCompliance : Type u
  stressRelaxationModulus : Type v
  maxwellModel : Prop
  standardLinearSolidModel : Prop
  relaxationTimeSpectrum : Prop

structure MechanicalRelaxationEvidence (M : MechanicalRelaxationPackage) where
  maxwellModelClosed : M.maxwellModel
  standardLinearSolidModelClosed : M.standardLinearSolidModel
  relaxationTimeSpectrumClosed : M.relaxationTimeSpectrum

def MechanicalRelaxationClosed (M : MechanicalRelaxationPackage) : Prop :=
  M.maxwellModel ∧ M.standardLinearSolidModel ∧ M.relaxationTimeSpectrum

theorem mechanical_relaxation_closed_from_evidence (M : MechanicalRelaxationPackage)
    (E : MechanicalRelaxationEvidence M) : MechanicalRelaxationClosed M := by
  exact And.intro E.maxwellModelClosed
    (And.intro E.standardLinearSolidModelClosed E.relaxationTimeSpectrumClosed)

end MaterialsEngineeringGlassesEngineeringFoundationCanonicalLaneLean
end HautevilleHouse