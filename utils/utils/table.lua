local tableutils = {}

function tableutils.sub(tbl, i, j)
    j = j or #tbl
    if i < 0 then
        i = #tbl + 1 + i
    end
    if j < 0 then
        j = #tbl + 1 + j
    end
    if i > j then
        j, i = i, j
    end

    if i == j then
        return {tbl[i]}
    end

    local out = table.create(#tbl)
    local index = 0
    for k = i, j do
        index += 1
        out[index] = tbl[k] 
    end

    return out
end

return tableutils
