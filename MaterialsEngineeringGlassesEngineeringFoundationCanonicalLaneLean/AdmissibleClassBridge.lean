import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringFoundationCanonicalLaneLean

open HautevilleHouse.MaterialsEngineeringGlassesEngineeringFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | some O => PhaseDiagramClosed O.phaseDiagram ∧ ElasticityFractureClosed O.elasticity ∧ ViscosityRelaxationClosed O.viscosity
  | none => False

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  by
    
    exact A.endpointSatisfied

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  by
    exact A.gateWitness

end MaterialsEngineeringGlassesEngineeringFoundationCanonicalLaneLean
end HautevilleHouse