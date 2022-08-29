local UanMath = {}

function UanMath:randomFloat(min, max)
    return 0.0001 * math.random(min * 10000, max * 10000)
end
function UanMath:randomBool(percent)
    return math.random(percent, 100) == 100
end
function UanMath:lerp(curValue, targetValue, ratio)
    return curValue + ratio * (targetValue - curValue);
end
function UanMath:lerpSin(value, speed, offset)
    return (value * math.sin(((getValue("Conductor", "songPosition") / 1000) * (bpm / 60) * speed) * math.pi)) + offset
end
function UanMath:lerpCos(value, speed, offset)
    return (value * math.cos(((getValue("Conductor", "songPosition") / 1000) * (bpm / 60) * speed) * math.pi)) + offset
end
