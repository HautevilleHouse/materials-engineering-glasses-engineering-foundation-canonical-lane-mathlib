import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringFoundationCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile :=
  [{ path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "abc123", present := true },
   { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "def456", present := true }]

def reviewerChainSteps : List ReviewerChainStep :=
  [{ index := 1, label := "G1" }, { index := 2, label := "G2" }, { index := 3, label := "G3" }]

def reviewerClosureGates : List ReviewerClosureGate :=
  [{ gate := "MG_G1", constant := "glass_formation_energy" },
   { gate := "MG_G2", constant := "critical_cooling_rate" }]

end HautevilleHouse.MaterialsEngineeringGlassesEngineeringFoundationCanonicalLaneLean
