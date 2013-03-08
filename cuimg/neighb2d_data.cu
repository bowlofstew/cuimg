# include <cuimg/gpu/cuda.h>

__constant__ const int c4[4][2] =
{
  {0, 1},
  {-1, 0}, {1, 0},
  {0, -1}
};

__constant__ const int c5[5][2] =
{
  {0, 1},
  {-1, 0}, {0, 0}, {1, 0},
  {0, -1}
};


__constant__ int c8[8][2] =
{
  /* {-1, 1}, {0, 1}, {1, 1}, */
  /* {-1, 0},         {1, 0}, */
  /* {-1, -1}, {0, -1}, {1, -1} */

  {-1, 1}, {0, 1}, {1, 1},
  {1, 0},
  {1, -1}, {0, -1}, {-1, -1},
  {-1, 0}
};

__constant__ int c8_it[9][2] =
{
  /*
    0  1  2
    7     3
    6  5  4
  */

  {6, 3}, // 0
  {0, 3}, // 1
  {0, 5}, // 2
  {2, 5}, // 3
  {2, 7}, // 4
  {4, 7}, // 5
  {4, 1}, // 6
  {6, 1}, // 7
  {0, 0} // 8
};

__constant__ const int c9[9][2] =
{
  {-1, 1}, {0, 1}, {1, 1},
  {-1, 0}, {0, 0}, {1, 0},
  {-1, -1}, {0, -1}, {1, -1}
};

__constant__ const int c24[24][2] =
{
  {-2, 2},  {-1,  2}, {0,  2}, {1,  2}, {2,  2},
  {-2, 1},  {-1,  1}, {0,  1}, {1,  1}, {2,  1},
  {-2, 0},  {-1,  0},          {1,  0}, {2,  0},
  {-2, -1}, {-1, -1}, {0, -1}, {1, -1}, {2, -1},
  {-2, -2}, {-1, -2}, {0, -2}, {1, -2}, {2, -2}
};

__constant__ const int c25[25][2] =
{
  {-2, 2},  {-1,  2}, {0,  2}, {1,  2}, {2,  2},
  {-2, 1},  {-1,  1}, {0,  1}, {1,  1}, {2,  1},
  {-2, 0},  {-1,  0}, {0,  0}, {1,  0}, {2,  0},
  {-2, -1}, {-1, -1}, {0, -1}, {1, -1}, {2, -1},
  {-2, -2}, {-1, -2}, {0, -2}, {1, -2}, {2, -2}
};

__constant__ const int c25x2[25][2] =
{
  {-4, 4},  {-2,  4}, {0,  4}, {2,  4}, {4,  4},
  {-4, 2},  {-2,  2}, {0,  2}, {2,  2}, {4,  2},
  {-4, 0},  {-2,  0}, {0,  0}, {2,  0}, {4,  0},
  {-4, -2}, {-2, -2}, {0, -2}, {2, -2}, {4, -2},
  {-4, -4}, {-2, -4}, {0, -4}, {2, -4}, {4, -4}
};

__constant__ int c49[49][2] =
{
  {-3, 3},  {-2, 3},  {-1,  3}, {0,  3}, {1,  3}, {2,  3}, {3,  3},
  {-3, 2},  {-2, 2},  {-1,  2}, {0,  2}, {1,  2}, {2,  2}, {3,  2},
  {-3, 1},  {-2, 1},  {-1,  1}, {0,  1}, {1,  1}, {2,  1}, {3,  1},
  {-3, 0},  {-2, 0},  {-1,  0}, {0,  0}, {1,  0}, {2,  0}, {3,  0},
  {-3, -1}, {-2, -1}, {-1, -1}, {0, -1}, {1, -1}, {2, -1}, {3, -1},
  {-3, -2}, {-2, -2}, {-1, -2}, {0, -2}, {1, -2}, {2, -2}, {3, -2},
  {-3, -3}, {-2, -3}, {-1, -3}, {0, -3}, {1, -3}, {2, -3}, {3, -3}
};

__constant__ const int c48[48][2] =
{
  {-3, 3},  {-2, 3},  {-1,  3}, {0,  3}, {1,  3}, {2,  3}, {3,  3},
  {-3, 2},  {-2, 2},  {-1,  2}, {0,  2}, {1,  2}, {2,  2}, {3,  2},
  {-3, 1},  {-2, 1},  {-1,  1}, {0,  1}, {1,  1}, {2,  1}, {3,  1},
  {-3, 0},  {-2, 0},  {-1,  0},          {1,  0}, {2,  0}, {3,  0},
  {-3, -1}, {-2, -1}, {-1, -1}, {0, -1}, {1, -1}, {2, -1}, {3, -1},
  {-3, -2}, {-2, -2}, {-1, -2}, {0, -2}, {1, -2}, {2, -2}, {3, -2},
  {-3, -3}, {-2, -3}, {-1, -3}, {0, -3}, {1, -3}, {2, -3}, {3, -3}
};


__constant__ const int c49x2[49][2] =
{
  {-6, 6},  {-4, 6},  {-2,  6}, {0,  6}, {2,  6}, {4,  6}, {6,  6},
  {-6, 4},  {-4, 4},  {-2,  4}, {0,  4}, {2,  4}, {4,  4}, {6,  4},
  {-6, 2},  {-4, 2},  {-2,  2}, {0,  2}, {2,  2}, {4,  2}, {6,  2},
  {-6, 0},  {-4, 0},  {-2,  0}, {0,  0}, {2,  0}, {4,  0}, {6,  0},
  {-6, -2}, {-4, -2}, {-2, -2}, {0, -2}, {2, -2}, {4, -2}, {6, -2},
  {-6, -4}, {-4, -4}, {-2, -4}, {0, -4}, {2, -4}, {4, -4}, {6, -4},
  {-6, -6}, {-4, -6}, {-2, -6}, {0, -6}, {2, -6}, {4, -6}, {6, -6}
};

__constant__ const int c81[81][2] =
{
  {-4, 4},  {-3, 4},  {-2, 4},  {-1,  4}, {0,  4}, {1,  4}, {2,  4}, {3,  4}, {4,  4},
  {-4, 3},  {-3, 3},  {-2, 3},  {-1,  3}, {0,  3}, {1,  3}, {2,  3}, {3,  3}, {4,  3},
  {-4, 2},  {-3, 2},  {-2, 2},  {-1,  2}, {0,  2}, {1,  2}, {2,  2}, {3,  2}, {4,  2},
  {-4, 1},  {-3, 1},  {-2, 1},  {-1,  1}, {0,  1}, {1,  1}, {2,  1}, {3,  1}, {4,  1},
  {-4, 0},  {-3, 0},  {-2, 0},  {-1,  0}, {0,  0}, {1,  0}, {2,  0}, {3,  0}, {4,  0},
  {-4, -1}, {-3, -1}, {-2, -1}, {-1, -1}, {0, -1}, {1, -1}, {2, -1}, {3, -1}, {4, -1},
  {-4, -2}, {-3, -2}, {-2, -2}, {-1, -2}, {0, -2}, {1, -2}, {2, -2}, {3, -2}, {4, -2},
  {-4, -3}, {-3, -3}, {-2, -3}, {-1, -3}, {0, -3}, {1, -3}, {2, -3}, {3, -3}, {4, -3},
  {-4, -4}, {-3, -4}, {-2, -4}, {-1, -4}, {0, -4}, {1, -4}, {2, -4}, {3, -4}, {4, -4}
};

__constant__ const int c81x2[81][2] =
{
  {-8, 8},  {-3, 4},  {-4, 8},  {-1,  4}, {0,  8}, {1,  4}, {4,  8}, {3,  4}, {8,  8},
  {-4, 3},  {-6, 6},  {-2, 3},  {-2,  6}, {0,  3}, {2,  6}, {2,  3}, {6,  6}, {4,  3},
  {-8, 4},  {-3, 2},  {-4, 4},  {-1,  2}, {0,  4}, {1,  2}, {4,  4}, {3,  2}, {8,  4},
  {-4, 1},  {-6, 2},  {-2, 1},  {-2,  2}, {0,  1}, {2,  2}, {2,  1}, {6,  2}, {4,  1},
  {-8, 0},  {-3, 0},  {-4, 0},  {-1,  0}, {0,  0}, {1,  0}, {4,  0}, {3,  0}, {8,  0},
  {-4, -1}, {-6, -2}, {-2, -1}, {-2, -2}, {0, -1}, {2, -2}, {2, -1}, {6, -2}, {4, -1},
  {-8, -4}, {-3, -2}, {-4, -4}, {-1, -2}, {0, -4}, {1, -2}, {4, -4}, {3, -2}, {8, -4},
  {-4, -3}, {-6, -6}, {-2, -3}, {-2, -6}, {0, -3}, {2, -6}, {2, -3}, {6, -6}, {4, -3},
  {-8, -8}, {-3, -4}, {-4, -8}, {-1, -4}, {0, -8}, {1, -4}, {4, -8}, {3, -4}, {8, -8}
};

__constant__ const int c80[80][2] =
{
  {-4, 4},  {-3, 4},  {-2, 4},  {-1,  4}, {0,  4}, {1,  4}, {2,  4}, {3,  4}, {4,  4},
  {-4, 3},  {-3, 3},  {-2, 3},  {-1,  3}, {0,  3}, {1,  3}, {2,  3}, {3,  3}, {4,  3},
  {-4, 2},  {-3, 2},  {-2, 2},  {-1,  2}, {0,  2}, {1,  2}, {2,  2}, {3,  2}, {4,  2},
  {-4, 1},  {-3, 1},  {-2, 1},  {-1,  1}, {0,  1}, {1,  1}, {2,  1}, {3,  1}, {4,  1},
  {-4, 0},  {-3, 0},  {-2, 0},  {-1,  0},          {1,  0}, {2,  0}, {3,  0}, {4,  0},
  {-4, -1}, {-3, -1}, {-2, -1}, {-1, -1}, {0, -1}, {1, -1}, {2, -1}, {3, -1}, {4, -1},
  {-4, -2}, {-3, -2}, {-2, -2}, {-1, -2}, {0, -2}, {1, -2}, {2, -2}, {3, -2}, {4, -2},
  {-4, -3}, {-3, -3}, {-2, -3}, {-1, -3}, {0, -3}, {1, -3}, {2, -3}, {3, -3}, {4, -3},
  {-4, -4}, {-3, -4}, {-2, -4}, {-1, -4}, {0, -4}, {1, -4}, {2, -4}, {3, -4}, {4, -4}
};


__constant__ const int circle_r2[8][2] = {
  {-1, 1}, {0, 2}, {1, 1},
  {2, 0},
  {1, -1}, {0, -2}, {-1, -1},
  {-2, 0}
};

__constant__ int circle_r3[16][2] = {
  {-3, 0}, {-3, 1}, {-2, 2}, { -1, 3},
  { 0, 3}, { 1, 3}, { 2, 2}, {  3, 1},
  { 3, 0}, { 3,-1}, { 2,-2}, {  1,-3},
  { 0,-3}, {-1,-3}, {-2,-2}, { -3,-1}
};

__constant__ const int circle_r3_nb[24][2] = {
  {-3, 0}, {-3, 1}, {-3, 2}, {-2, 2}, {-2, 3}, { -1, 3},
  { 0, 3}, { 1, 3}, { 2, 3}, { 2, 2}, { 3, 2}, {  3, 1},
  { 3, 0}, { 3,-1}, { 3,-2}, { 2,-2}, { 2,-3}, {  1,-3},
  { 0,-3}, {-1,-3}, {-2,-3}, {-2,-2}, {-3,-2}, { -3,-1}
};

__constant__ const int circle_r3_wo1[16][2] = {
  {-3, 1}, {-2, 2}, { -1, 3},
  { 0, 3}, { 1, 3}, { 2, 2}, {  3, 1},
  { 3, 0}, { 3,-1}, { 2,-2}, {  1,-3},
  { 0,-3}, {-1,-3}, {-2,-2}, { -3,-1}
};
