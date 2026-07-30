import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringFoundationCanonicalLaneLean

structure CrystallographyPackage where
  bravaisLatticeType : String
  unitCellVolume : Float
  symmetryGroup : String
  xrayDiffractionPattern : Prop
  laueSymmetry : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  bravaisLatticeTypeClosed : C.bravaisLatticeType = "monoclinic"
  unitCellVolumeClosed : C.unitCellVolume > 0.0
  symmetryGroupClosed : C.symmetryGroup = "C2/c"
  xrayDiffractionPatternClosed : C.xrayDiffractionPattern
  laueSymmetryClosed : C.laueSymmetry

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.bravaisLatticeType = "monoclinic" ∧ C.unitCellVolume > 0.0 ∧ C.symmetryGroup = "C2/c" ∧ C.xrayDiffractionPattern ∧ C.laueSymmetry

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.bravaisLatticeTypeClosed (And.intro E.unitCellVolumeClosed (And.intro E.symmetryGroupClosed (And.intro E.xrayDiffractionPatternClosed E.laueSymmetryClosed)))

end MaterialsEngineeringGlassesEngineeringFoundationCanonicalLaneLean
end HautevilleHouse