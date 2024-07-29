hotdogStalls = {
    -- X, Y, Z, RZ
        {174.8, -183.3, 1.7, 0},-- Blueberry
	{332.5, -59.1, 1.6, 182},
	{294.4, -174.8, 1.7, 270},
        {-184.8, 1067.7, 19.7, 0},-- Fort Carson
	{-284.3, 1039.9,  19.7, 0},
	{-109.3, 1168.2, 19.7, 0},
}

hotdogs = {
    [1] = {
        name = "Normal",
        price = 7,
        images = {
            "hotdog1_b.png",
            "hotdog1_k.png",
        },
    },
    [2] = {
        name = "Amapola",
        price = 8,
        images = {
            "hotdog2_b.png",
            "hotdog2_k.png",
        },
    },
    [3] = {
        name = "Sésamo",
        price = 9,
        images = {
            "hotdog3_b.png",
            "hotdog3_k.png",
        },
    },
    [4] = {
        name = "Serrado",
        price = 10,
        images = {
            "hotdog4_b.png",
            "hotdog4_k.png",
        },
    },
    [5] = {
        name = "Integral",
        price = 12,
        images = {
            "hotdog5_b.png",
            "hotdog5_k.png",
        },
    },
}

sausages = {
    [1] = {
        name = "Picante",
        price = 7,
        image = "sausage1.png",
    },
    [2] = {
        price = 11,
        name = "Frita",
        image = "sausage2.png",
    },
    [3] = {
        price = 15,
        name = "Caliente",
        image = "sausage3.png",
    },
}

cups = {
    [1] = {
        mark = "s",
        price = 6,
        name = "Pequeño",
        images = {
            "cup_s_b.png",
            "cup_s_k.png",
        },
    },
    [2] = {
        mark = "m",
        price = 8,
        name = "Mediano",
        images = {
            "cup_m_b.png",
            "cup_m_k.png",
        },
    },
    [3] = {
        mark = "l",
        price = 10,
        name = "Grande",
        images = {
            "cup_l_b.png",
            "cup_l_k.png",
        },
    },
}

drinks = {
    [1] = {"Cola", {65, 48, 34}, "cocacola.png"},
    [2] = {"Fanta", {255,131,0}, "fanta.png"},
    [3] = {"Ice Tea", {147, 55, 9}, "lipton.png"},
    [4] = {"7Up", {0,163,99}, "7up.png"},
}

function rotateAround(angle, x, y, x2, y2)
	local theta = math.rad(angle)
	local rotatedX = x * math.cos(theta) - y * math.sin(theta) + (x2 or 0)
	local rotatedY = x * math.sin(theta) + y * math.cos(theta) + (y2 or 0)
	return rotatedX, rotatedY
end

function table.empty( a )
    if type( a ) ~= "table" then
        return false
    end
    
    return next(a) == nil
end