#ifndef CUIMG_GPU_EVAL_H_
# define CUIMG_GPU_EVAL_H_

# include <cuimg/dsl/expr.h>
# include <cuimg/dsl/traits.h>
# include <cuimg/dsl/return_type.h>
# include <cuimg/meta.h>

namespace cuimg
{

  template <typename X>
  inline __host__ __device__
  typename return_type<X>::ret
  eval(X& x, point2d<int> p);

  template <typename X, int T>
  struct eval_selector
  {
    static inline __host__ __device__
    typename return_type<X>::ret
    run(const X& x, point2d<int>)
    {
      return x;
    }
  };

  template <typename X>
  struct eval_selector<X, 1>
  {
    static inline __host__ __device__
    typename return_type<X>::ret
    run(const X& x, point2d<int> p)
    {
      return x.eval(p);
    }
  };

  template <typename X>
  inline __host__ __device__
  typename return_type<X>::ret
  eval(const X& x, point2d<int> p)
  {
    return eval_selector<X, is_expr_trait<X>::value>::run(x, p);
  }

  template <typename TAG>
  struct evaluator;

}

#endif
