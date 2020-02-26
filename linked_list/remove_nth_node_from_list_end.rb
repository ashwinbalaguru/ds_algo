# Remove Nth Node from List End

# Given a linked list, remove the nth node from the end of list and return its head.

# For example,
# Given linked list: 1->2->3->4->5, and n = 2.
# After removing the second node from the end, the linked list becomes 1->2->3->5.

#  Note:
# If n is greater than the size of the list, remove the first node of the list.
# Try doing it using constant additional space.



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
    # @param b : integer
    # @return the head node in the linked list
    def removeNthFromEnd(a, b)
        size = 0
        i = a

        while i do
            i = i.next
            size += 1
        end

        return a.next if b >= size

        prev = nil
        i = a

        (size - b).times do
            prev = i
            i = i.next
        end

        prev.next = i.next

        a
    end
end
