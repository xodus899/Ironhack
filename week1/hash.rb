arr = [  [0,1,2,3,4, {:secret => {:unlock => [0,"Oh NOOO!!!!" ] }} ] ]

p arr [0][5][:secret][:unlock][1]



# arr = [ [0, 1, 2, 3, 4, {:secret => { :unlock => [0, "I DID IT FUCK YEAH"] } } ] ]
# #                                                    --------------------
# #                                                 0            1


# p arr[0][5][:secret][:unlock][1]