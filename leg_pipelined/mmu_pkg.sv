package mmu_pkg;

typedef enum logic [3:0] {READY, SECTIONTRANS, COARSEFETCH, FINEFETCH, 
  SMALLTRANS, LARGETRANS, TINYTRANS, INSTRFAULT, FAULTFSR, FAULTFAR} statetype;

endpackage