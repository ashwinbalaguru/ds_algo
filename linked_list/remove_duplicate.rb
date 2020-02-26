# Remove Duplicates from Sorted List
# Asked in:
# Microsoft
# VMWare
# Given a sorted linked list, delete all duplicates such that each element appear only once.

# For example,
# Given 1->1->2, return 1->2.
# Given 1->1->2->3->3, return 1->2->3.




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
    # @return the head node in the linked list
    def deleteDuplicates(a)
        return nil if a.nil?
        temp = a
        while temp
            if temp.next && temp.next.data == temp.data
                temp.next = temp.next.next
            else
                temp = temp.next
            end
        end
        a
    end
end
