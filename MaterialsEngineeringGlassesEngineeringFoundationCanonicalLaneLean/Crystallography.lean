import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringFoundationCanonicalLaneLean

structure CrystallographyPackage where
  bravaisLattice : Prop
  crystalSystem : Prop
  spaceGroup : Prop
  millerIndices : Prop
  structureFactor : Prop

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.bravaisLattice ∧ C.crystalSystem ∧ C.spaceGroup ∧ C.millerIndices ∧ C.structureFactor

structure CrystallographyEvidence (C : CrystallographyPackage) where
  bravaisLatticeClosed : C.bravaisLattice
  crystalSystemClosed : C.crystalSystem
  spaceGroupClosed : C.spaceGroup
  millerIndicesClosed : C.millerIndices
  structureFactorClosed : C.structureFactor

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) :
    CrystallographyClosed C := by
  exact And.intro E.bravaisLatticeClosed (And.intro E.crystalSystemClosed (And.intro E.spaceGroupClosed (And.intro E.millerIndicesClosed E.structureFactorClosed)))

end MaterialsEngineeringGlassesEngineeringFoundationCanonicalLaneLean
end HautevilleHouse