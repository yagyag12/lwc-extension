## Hardware Sim Modification
After installing the simulation repository, add or replace these files on the following directories:
- certify_le_soc_pmp/rtl/cv32e40s
- certify_le_soc_pmp/simulation/lwcsim
- certify_le_soc_pmp/software/ascon_aead
- certify_le_soc_pmp/software/ascon_hash
- certify_le_soc_pmp/software/sha2
- certify_le_soc_pmp/software/sha2-extension

Inside the tb folder there are testbenches for testing the new "cv32e40s_cust_decoder.sv" and the modified "cv32e40s_alu.sv" modules.
