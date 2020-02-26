class Solution
    # Given a matrix of m * n elements (m rows, n columns), return all elements of the matrix in spiral order.

    # Example:

    # Given the following matrix:

    # [
    #     [ 1, 2, 3 ],
    #     [ 4, 5, 6 ],
    #     [ 7, 8, 9 ]
    # ]
    # You should return

    # [1, 2, 3, 6, 9, 8, 7, 4, 5]


    # @param a : constant array of array of integers
    # @return an array of integers
    def spiralOrder(a)
        dir_list = ['right', 'left', 'top', 'bottom']

        dir = 'right'

        m = a.length
        n = a.first.length
        t = 0; b = (m-1); l = 0; r = (n-1)

        final = []

        while(t<=b && l<=r)
          if dir == 'right'
            for i in l..r
              final << a[t][i]
            end
            t += 1
            dir = 'bottom'
          end

          if dir == 'bottom'
            for i in t..b
              final << a[i][r]
            end
            r -= 1
            dir = 'left'
          end

          if dir == 'left'
            for i in r.downto(l)
              final << a[b][i]
            end
            b -= 1
            dir = 'top'
          end

          if dir == 'top'
            for i in b.downto(t)
              final << a[i][l]
            end
            l += 1
            dir = 'right'
          end
        end
        final
    end
end