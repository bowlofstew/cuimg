#ifndef CUIMG_NEIGHB2D_DATA_H_
# define CUIMG_NEIGHB2D_DATA_H_

# include <cuda_runtime.h>

namespace cuimg
{
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


  __constant__ const int c8[8][2] =
  {
    {-1, 1}, {0, 1}, {1, 1},
    {-1, 0},         {1, 0},
    {-1, -1}, {0, -1}, {1, -1}
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

  __constant__ const int c49[49][2] =
  {
    {-3, 3},  {-2, 3},  {-1,  3}, {0,  3}, {1,  3}, {2,  3}, {3,  3},
    {-3, 2},  {-2, 2},  {-1,  2}, {0,  2}, {1,  2}, {2,  2}, {3,  2},
    {-3, 1},  {-2, 1},  {-1,  1}, {0,  1}, {1,  1}, {2,  1}, {3,  1},
    {-3, 0},  {-2, 0},  {-1,  0}, {0,  0}, {1,  0}, {2,  0}, {3,  0},
    {-3, -1}, {-2, -1}, {-1, -1}, {0, -1}, {1, -1}, {2, -1}, {3, -1},
    {-3, -2}, {-2, -2}, {-1, -2}, {0, -2}, {1, -2}, {2, -2}, {3, -2},
    {-3, -3}, {-2, -3}, {-1, -3}, {0, -3}, {1, -3}, {2, -3}, {3, -3}
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

  const int c4_h[4][2] =
  {
    {0, 1},
    {-1, 0}, {1, 0},
    {0, -1}
  };

  const int c5_h[5][2] =
  {
    {0, 1},
    {-1, 0}, {0, 0}, {1, 0},
    {0, -1}
  };


  const int c8_h[8][2] =
  {
    {-1, 1}, {0, 1}, {1, 1},
    {-1, 0},         {1, 0},
    {-1, -1}, {0, -1}, {1, -1}
  };

  const int c9_h[9][2] =
  {
    {-1, 1}, {0, 1}, {1, 1},
    {-1, 0}, {0, 0}, {1, 0},
    {-1, -1}, {0, -1}, {1, -1}
  };

  const int c24_h[24][2] =
  {
    {-2, 2},  {-1,  2}, {0,  2}, {1,  2}, {2,  2},
    {-2, 1},  {-1,  1}, {0,  1}, {1,  1}, {2,  1},
    {-2, 0},  {-1,  0},          {1,  0}, {2,  0},
    {-2, -1}, {-1, -1}, {0, -1}, {1, -1}, {2, -1},
    {-2, -2}, {-1, -2}, {0, -2}, {1, -2}, {2, -2}
  };

  const int c25_h[25][2] =
  {
    {-2, 2},  {-1,  2}, {0,  2}, {1,  2}, {2,  2},
    {-2, 1},  {-1,  1}, {0,  1}, {1,  1}, {2,  1},
    {-2, 0},  {-1,  0}, {0,  0}, {1,  0}, {2,  0},
    {-2, -1}, {-1, -1}, {0, -1}, {1, -1}, {2, -1},
    {-2, -2}, {-1, -2}, {0, -2}, {1, -2}, {2, -2}
  };

#define for_all_in_static_neighb2d(p, n, dps) \
  neighb_iterator2d<static_neighb2d<sizeof(dps) / (2 * sizeof(int))> > n(p, dps); \
  for_all(n)

#define for_all_2_in_static_neighb2d(p1, n1, p2, n2, dps)                  \
  neighb_iterator2d<static_neighb2d<sizeof(dps) / (2 * sizeof(int))> > n1(p1, dps); \
  neighb_iterator2d<static_neighb2d<sizeof(dps) / (2 * sizeof(int))> > n2(p2, dps); \
  for_all_2(n1, n2)

}
#endif
