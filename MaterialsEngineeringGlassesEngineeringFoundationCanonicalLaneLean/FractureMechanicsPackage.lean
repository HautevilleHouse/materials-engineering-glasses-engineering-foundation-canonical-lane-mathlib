import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringFoundationCanonicalLaneLean

structure FractureMechanicsPackage where
  fractureToughness : Float
  crackLength : Float
  stressIntensityFactor : Float
  parisLawExponent : Float
  fatigueThreshold : Float

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  fractureToughnessClosed : F.fractureToughness > 0
  crackLengthClosed : F.crackLength > 0
  stressIntensityFactorClosed : F.stressIntensityFactor > 0
  parisLawExponentClosed : F.parisLawExponent > 2 ∧ F.parisLawExponent < 4
  fatigueThresholdClosed : F.fatigueThreshold > 0

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.fractureToughness > 0 ∧ F.crackLength > 0 ∧ F.stressIntensityFactor > 0 ∧ (F.parisLawExponent > 2 ∧ F.parisLawExponent < 4) ∧ F.fatigueThreshold > 0

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage) (E : FractureMechanicsEvidence F) : FractureMechanicsClosed F := by
  exact And.intro E.fractureToughnessClosed (And.intro E.crackLengthClosed (And.intro E.stressIntensityFactorClosed (And.intro E.parisLawExponentClosed E.fatigueThresholdClosed)))

end MaterialsEngineeringGlassesEngineeringFoundationCanonicalLaneLean
end HautevilleHouse