box.cfg{
    listen = '127.0.0.1:10001',
}

box.schema.user.grant('guest', 'read,write,execute', 'universe')

function same(...)
    return ...
end

function test2(a, b)
    return b, a, "test"
end

function test3(int, uint, string, array_of_int)
    local a2 = {int, uint}
    local a3 = {string, string}
    return array_of_int, a2, a3, "testing"
end

function create_tuple(create)
    if (create == 0) then
        return box.tuple.new{'abc', 'def', 'ghi', 'abc'}
    end
    return nil
end

function str_table()
    local t = {}
    t["F1"] = "DATA"
    t["F2"] = 1
    t["k"] = 100
    return t
end

function table_in_array()
    local t = {}
    t["F1"] = "DATA"
    return {1, 2, t}, 3
end

function num_table()
    local t = {}
    t[10] = "DATA"
    t[100] = 1
    t[2] = 3
    return t
end

function mix_table()
    local t = {}
    t[2] = "DATA"
    t["DATA"] = 2
    return t
end
