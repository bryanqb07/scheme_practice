require 'byebug'

def my_remove(arr, ele)
    idx = arr.index(ele)
    arr[1..-1] if idx == 0
    arr[0...idx] if idx == arr.length - 1 
    arr[0...idx] + arr[(idx + 1)..-1]
end

def my_perm(seq)
    # debugger
    return [[]] if seq.empty?
    seq.map do |ele|
    	excluded_seq = my_remove(seq, ele)
	    excluded_perm = my_perm(excluded_seq)
    	    excluded_perm.map do |permutation|
	    	 [ele] + permutation
            end
    end    
end

p my_perm([])
p my_perm([1])
p my_perm([1, 2])
p my_perm([1, 2, 3])
