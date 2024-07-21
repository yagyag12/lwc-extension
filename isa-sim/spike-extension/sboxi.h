// Load State vector
reg_t x0 = MMU.load<uint32_t>(RS1);
reg_t x1 = MMU.load<uint32_t>(RS1+4);
reg_t x2 = MMU.load<uint32_t>(RS1+8);
reg_t x3 = MMU.load<uint32_t>(RS1+12);
reg_t x4 = MMU.load<uint32_t>(RS1+16);

reg_t t0, t1, t2, t3, t4;

// S-Box 
x0 ^= x4;
x4 ^= x3;
x2 ^= x1;
t0 = x0;
t4 = x4;
t3 = x3;
t1 = x1;
t2 = x2;
x0 = t0 ^ (~t1 & t2);
x2 = t2 ^ (~t3 & t4);
x4 = t4 ^ (~t0 & t1);
x1 = t1 ^ (~t2 & t3);
x3 = t3 ^ (~t4 & t0);
x1 ^= x0;
x3 ^= x2;
x0 ^= x4;

// Store State Vector
MMU.store<uint32_t>(RS1, x0);
MMU.store<uint32_t>(RS1+4, x1);
MMU.store<uint32_t>(RS1+8, x2);
MMU.store<uint32_t>(RS1+12, x3);
MMU.store<uint32_t>(RS1+16, x4);
WRITE_RD(x0);
