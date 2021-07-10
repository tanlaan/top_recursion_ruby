def merge_sort(objects)
    # return object if singlet
    return objects if objects.length < 2

    # sort left
    left = merge_sort(objects.slice(0, objects.length / 2))

    # sort right
    right = merge_sort(objects.slice(objects.length / 2, objects.length))

    # merge left and right
    merged = []
    lefty = 0
    righty = 0
    loop do
        # Stop if we've run out of numbers
        break if lefty == left.length && righty == right.length

        # Add rest of sorted numbers if we run out of numbers from one side
        merged += right.slice(righty, right.length) and break if lefty == left.length
        merged += left.slice(lefty, left.length) and break if righty == right.length

        # If both sides are equal, default to left
        if  left[lefty] <= right[righty]
            # put left in merged
            merged << left[lefty]
            lefty += 1

        elsif right[righty] < left[lefty] 
            # put right in merged
            merged << right[righty]
            righty += 1
        end
    end
    merged
end