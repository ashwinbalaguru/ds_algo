# Simplify Directory Path
# Asked in:
# Microsoft
# Given a string A representing an absolute path for a file (Unix-style).

# Return the string A after simplifying the absolute path.

# Note:

# Absolute path always begin with ’/’ ( root directory ).

# Path will not have whitespace characters.



# Input Format

# The only argument given is string A.
# Output Format

# Return a string denoting the simplified absolue path for a file (Unix-style).
# For Example

# Input 1:
#     A = "/home/"
# Output 1:
#     "/home"

# Input 2:
#     A = "/a/./b/../../c/"
# Output 2:
#     "/c"

class Solution
    # @param a : string
    # @return a string
    def simplifyPath(a)
        st = []

        val = a.split('/')

        val.each do |v|
          if !v.empty? && v != '.' && v != '..'
            st.unshift("/#{v}")
          elsif v == '..'
            st.shift
          end
        end
        x = st.reverse.join
        x.empty? ? '/' : x
    end
end
