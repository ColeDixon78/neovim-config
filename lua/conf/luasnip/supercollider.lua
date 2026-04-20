return {
    s({ trig = "da2", snippetType = "autosnippet", desc = "Done Action Free Self", wordTrig = true },
        { t("doneAction: Done.freeSelf") }
    ),
    s({ trig = "sd", snippetType = "snippet", desc = "Create SynthDef", wordTrig = true },
        fmta(
            [[
            SynthDef.new(name:\<>, ugenGraphFunc:{
                | out, freq = 440, pan = 0, amp = 1|
                var source = SinOsc.ar(freq, amp);
                var panned = Pan2.ar(source, pan);
                Out.ar(bus:out, channelsArray:panned)
            }, rates:nil, prependArgs:nil, variants:nil, metadata:nil).add;
            ]],
            { i(1, "name"), }
        )
    ),
    s({ trig = "penv", snippetType = "autosnippet", desc = "Percussion Env Gen", wordTrig = true },
        fmta(
            [[
            var <> = EnvGen.ar(
                envelope:Env.perc(
                    attackTime:<>,
                    releaseTime:<>,
                    level:1.0,
                    curve:-4.0
                ),
                gate:1.0,
                levelScale:1.0,
                levelBias:0.0,
                timeScale:1.0,
                doneAction:Done.freeSelf
            );
            ]],
            { i(1, "name"), i(2, "0.01"), i(3, "0.1"), }
        )
    ),
}
