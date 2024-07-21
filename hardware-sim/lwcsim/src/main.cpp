#include "libcsoc.h"
#include "stdio.h"

/*
*   Here you write the Certify SoC (CSoC) simulation
*/

int main(int argc, char** argv) {

    csoc_ctx ctx;
    csoc_t system;
    csoc_ctx_init(&ctx, argc, argv);
    csoc_soc_init(&system, &ctx);

    // Simulation

    csoc_soc_proceedClockCycles(&system, UINT64_MAX);

    // Epilogue
    csoc_soc_destroy(&system);
    csoc_ctx_destroy(&ctx);
}
