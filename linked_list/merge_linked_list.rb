# Merge Two Sorted Lists

# Merge two sorted linked lists and return it as a new list.
# The new list should be made by splicing together the nodes of the first two lists, and should also be sorted.

# For example, given following linked lists :

#   5 -> 8 -> 20
#   4 -> 11 -> 15
# The merged list should be :

# 4 -> 5 -> 8 -> 11 -> 15 -> 20



# Definition for singly-linked list.
# class ListNode
#     attr_accessor :next,:data
#     def initialize(data)
#         @data = data
#         @next=nil
#     end
# end

class Solution
    # @param a : head node of linked list
    # @param b : head node of linked list
    # @return the head node in the linked list
    def mergeTwoLists(a, b)
        head = ListNode.new(0)
        first = head

        while a && b
            if a.data < b.data
                head.next = a
                a = a.next
            else
                head.next = b
                b = b.next
            end
            head = head.next
        end

        while a
            head.next = a
            a = a.next
            head = head.next
        end

        while b
            head.next = b
            b = b.next
            head = head.next
        end

        first.next
    end
end
