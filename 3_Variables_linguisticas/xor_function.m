function XOR = xor_function(x,y)
    XOR = min(max(x, 1-y), max(1-x, y));
end