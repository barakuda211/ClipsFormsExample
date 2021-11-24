(deftemplate fact
        (slot id)
        (slot name)
)
 
(deftemplate tobacco
        (slot id)
        (slot name)
)

(defrule r1
    (declare (salience 25))
    (fact (id f1))
    =>
    (assert (fact (id s13) (name "Много мусора")))
)


(defrule r2
    (declare (salience 25))
    (fact (id f2))
    =>
    (assert (fact (id s14) (name "Мало мусора")))
)


(defrule r3
    (declare (salience 25))
    (fact (id f3))
    =>
    (assert (fact (id s14) (name "Мало мусора")))
)


(defrule r4
    (declare (salience 50))
    (fact (id f2))
    =>
    (assert (fact (id s15) (name "Натуральный вкус")))
)


(defrule r5
    (declare (salience 50))
    (fact (id f3))
    =>
    (assert (fact (id s15) (name "Натуральный вкус")))
)


(defrule r6
    (declare (salience 50))
    (fact (id f1))
    =>
    (assert (fact (id s16) (name "Химозный вкус")))
)


(defrule r7
    (declare (salience 20))
    (fact (id f8))
    =>
    (assert (fact (id s18) (name "Нежаростойкий")))
)


(defrule r8
    (declare (salience 20))
    (fact (id f9))
    =>
    (assert (fact (id s18) (name "Нежаростойкий")))
)


(defrule r9
    (declare (salience 20))
    (fact (id f10))
    =>
    (assert (fact (id s17) (name "Жаростойкий")))
)


(defrule r10
    (declare (salience 40))
    (fact (id f8))
    =>
    (assert (fact (id s20) (name "Плохая вкусопередача")))
)


(defrule r11
    (declare (salience 40))
    (fact (id f9))
    =>
    (assert (fact (id s19) (name "Хорошая вкусопередача")))
)


(defrule r12
    (declare (salience 40))
    (fact (id f10))
    =>
    (assert (fact (id s19) (name "Хорошая вкусопередача")))
)


(defrule r13
    (declare (salience 60))
    (fact (id f8))
    =>
    (assert (fact (id s22) (name "Не дымный табак")))
)


(defrule r14
    (declare (salience 60))
    (fact (id f9))
    =>
    (assert (fact (id s21) (name "Дымный табак")))
)


(defrule r15
    (declare (salience 60))
    (fact (id f10))
    =>
    (assert (fact (id s21) (name "Дымный табак")))
)


(defrule r16
    (declare (salience 75))
    (fact (id f1))
    =>
    (assert (fact (id s24) (name "Дешевые ароматизаторы")))
)


(defrule r17
    (declare (salience 75))
    (fact (id f2))
    =>
    (assert (fact (id s24) (name "Дешевые ароматизаторы")))
)


(defrule r18
    (declare (salience 75))
    (fact (id f3))
    =>
    (assert (fact (id s23) (name "Качественные ароматизаторы")))
)


(defrule r19
    (declare (salience 80))
    (fact (id f8))
    =>
    (assert (fact (id s28) (name "Табак не промывается")))
)


(defrule r20
    (declare (salience 80))
    (fact (id f9))
    =>
    (assert (fact (id s28) (name "Табак не промывается")))
)


(defrule r21
    (declare (salience 80))
    (fact (id f10))
    =>
    (assert (fact (id s27) (name "Табак промывается")))
)


(defrule r22
    (declare (salience 100))
    (fact (id f8))
    =>
    (assert (fact (id s30) (name "Плохо вымоченный")))
)


(defrule r23
    (declare (salience 100))
    (fact (id f9))
    =>
    (assert (fact (id s29) (name "Хорошо вымоченный")))
)


(defrule r24
    (declare (salience 100))
    (fact (id f10))
    =>
    (assert (fact (id s29) (name "Хорошо вымоченный")))
)


(defrule r25
    (declare (salience 100))
    (fact (id f1))
    =>
    (assert (fact (id s38) (name "Быстро выдыхается")))
)


(defrule r26
    (declare (salience 100))
    (fact (id f2))
    =>
    (assert (fact (id s38) (name "Быстро выдыхается")))
)


(defrule r27
    (declare (salience 100))
    (fact (id f3))
    =>
    (assert (fact (id s39) (name "Долгий срок хранения")))
)


(defrule r28
    (declare (salience 100))
    (fact (id f1))
    (fact (id s13))
    (fact (id s16))
    (fact (id s24))
    (fact (id s38))
    =>
    (assert (fact (id c1) (name "c1")))
)


(defrule r29
    (declare (salience 100))
    (fact (id f2))
    (fact (id s14))
    (fact (id s15))
    (fact (id s24))
    (fact (id s38))
    =>
    (assert (fact (id c2) (name "c2")))
)


(defrule r30
    (declare (salience 100))
    (fact (id f3))
    (fact (id s14))
    (fact (id s15))
    (fact (id s23))
    (fact (id s39))
    =>
    (assert (fact (id c3) (name "c3")))
)


(defrule r31
    (declare (salience 100))
    (fact (id f8))
    (fact (id s18))
    (fact (id s20))
    (fact (id s22))
    (fact (id s28))
    (fact (id s30))
    =>
    (assert (fact (id tl1) (name "tl1")))
)


(defrule r32
    (declare (salience 100))
    (fact (id f9))
    (fact (id s18))
    (fact (id s19))
    (fact (id s21))
    (fact (id s28))
    (fact (id s29))
    =>
    (assert (fact (id tl2) (name "tl2")))
)


(defrule r33
    (declare (salience 100))
    (fact (id f10))
    (fact (id s17))
    (fact (id s19))
    (fact (id s21))
    (fact (id s27))
    (fact (id s29))
    =>
    (assert (fact (id tl3) (name "tl3")))
)


(defrule tr1
    (declare (salience 100))
    (fact (id f5))
    (fact (id c1))
    (fact (id tl1))
    (fact (id f31))
    =>
    (assert (tobacco (id t1) (name "Al ganza")))
)


(defrule tr2
    (declare (salience 100))
    (fact (id f5))
    (fact (id c1))
    (fact (id tl1))
    (fact (id f32))
    =>
    (assert (tobacco (id t2) (name "Al fahker")))
)


(defrule tr3
    (declare (salience 100))
    (fact (id f5))
    (fact (id c1))
    (fact (id tl1))
    (fact (id f33))
    =>
    (assert (tobacco (id t3) (name "Sherbetli")))
)


(defrule tr4
    (declare (salience 100))
    (fact (id f5))
    (fact (id c1))
    (fact (id tl1))
    (fact (id f34))
    =>
    (assert (tobacco (id t4) (name "Nahla")))
)


(defrule tr5
    (declare (salience 100))
    (fact (id f5))
    (fact (id c1))
    (fact (id tl1))
    (fact (id f35))
    =>
    (assert (tobacco (id t5) (name "Adalya")))
)


(defrule tr6
    (declare (salience 100))
    (fact (id f5))
    (fact (id c1))
    (fact (id tl1))
    (fact (id f36))
    =>
    (assert (tobacco (id t6) (name "Argelini")))
)


(defrule tr7
    (declare (salience 100))
    (fact (id f5))
    (fact (id c1))
    (fact (id tl1))
    (fact (id f37))
    =>
    (assert (tobacco (id t7) (name "Afzal")))
)


(defrule tr8
    (declare (salience 100))
    (fact (id f6))
    (fact (id c1))
    (fact (id tl1))
    (fact (id f31))
    =>
    (assert (tobacco (id t8) (name "Buta")))
)


(defrule tr9
    (declare (salience 100))
    (fact (id f6))
    (fact (id c1))
    (fact (id tl1))
    (fact (id f32))
    =>
    (assert (tobacco (id t9) (name "Lira")))
)


(defrule tr10
    (declare (salience 100))
    (fact (id f6))
    (fact (id c1))
    (fact (id tl1))
    (fact (id f33))
    =>
    (assert (tobacco (id t10) (name "Malaki")))
)


(defrule tr11
    (declare (salience 100))
    (fact (id f6))
    (fact (id c1))
    (fact (id tl1))
    (fact (id f34))
    =>
    (assert (tobacco (id t11) (name "Zomo")))
)


(defrule tr12
    (declare (salience 100))
    (fact (id f6))
    (fact (id c1))
    (fact (id tl1))
    (fact (id f35))
    =>
    (assert (tobacco (id t12) (name "Шпаковского")))
)


(defrule tr13
    (declare (salience 100))
    (fact (id f6))
    (fact (id c1))
    (fact (id tl1))
    (fact (id f36))
    =>
    (assert (tobacco (id t13) (name "Табабка")))
)


(defrule tr14
    (declare (salience 100))
    (fact (id f6))
    (fact (id c1))
    (fact (id tl1))
    (fact (id f37))
    =>
    (assert (tobacco (id t14) (name "Neon")))
)


(defrule tr15
    (declare (salience 100))
    (fact (id f7))
    (fact (id c1))
    (fact (id tl1))
    (fact (id f31))
    =>
    (assert (tobacco (id t15) (name "Satyr")))
)


(defrule tr16
    (declare (salience 100))
    (fact (id f7))
    (fact (id c1))
    (fact (id tl1))
    (fact (id f32))
    =>
    (assert (tobacco (id t16) (name "Cobra")))
)


(defrule tr17
    (declare (salience 100))
    (fact (id f7))
    (fact (id c1))
    (fact (id tl1))
    (fact (id f33))
    =>
    (assert (tobacco (id t17) (name "Сарко Зи")))
)


(defrule tr18
    (declare (salience 100))
    (fact (id f7))
    (fact (id c1))
    (fact (id tl1))
    (fact (id f34))
    =>
    (assert (tobacco (id t18) (name "Масоны")))
)


(defrule tr19
    (declare (salience 100))
    (fact (id f7))
    (fact (id c1))
    (fact (id tl1))
    (fact (id f35))
    =>
    (assert (tobacco (id t19) (name "Azure")))
)


(defrule tr20
    (declare (salience 100))
    (fact (id f7))
    (fact (id c1))
    (fact (id tl1))
    (fact (id f36))
    =>
    (assert (tobacco (id t20) (name "Karioko"))) 
)


(defrule tr21
    (declare (salience 100))
    (fact (id f7))
    (fact (id c1))
    (fact (id tl1))
    (fact (id f37))
    =>
    (assert (tobacco (id t21) (name "Mongol Asman")))
)


(defrule tr22
    (declare (salience 100))
    (fact (id f5))
    (fact (id c1))
    (fact (id tl2))
    (fact (id f31))
    =>
    (assert (tobacco (id t22) (name "Fumari")))
)


(defrule tr23
    (declare (salience 100))
    (fact (id f5))
    (fact (id c1))
    (fact (id tl2))
    (fact (id f32))
    =>
    (assert (tobacco (id t23) (name "Element Земля")))
)


(defrule tr24
    (declare (salience 100))
    (fact (id f5))
    (fact (id c1))
    (fact (id tl2))
    (fact (id f33))
    =>
    (assert (tobacco (id t24) (name "Daily hookah")))
)


(defrule tr25
    (declare (salience 100))
    (fact (id f5))
    (fact (id c1))
    (fact (id tl2))
    (fact (id f34))
    =>
    (assert (tobacco (id t25) (name "Starbuzz")))
)


(defrule tr26
    (declare (salience 100))
    (fact (id f5))
    (fact (id c1))
    (fact (id tl2))
    (fact (id f35))
    =>
    (assert (tobacco (id t26) (name "Северный")))
)


(defrule tr27
    (declare (salience 100))
    (fact (id f5))
    (fact (id c1))
    (fact (id tl2))
    (fact (id f36))
    =>
    (assert (tobacco (id t27) (name "Spectrum Classic")))
)


(defrule tr28
    (declare (salience 100))
    (fact (id f5))
    (fact (id c1))
    (fact (id tl2))
    (fact (id f37))
    =>
    (assert (tobacco (id t28) (name "Must Have")))
)


(defrule tr29
    (declare (salience 100))
    (fact (id f6))
    (fact (id c1))
    (fact (id tl2))
    (fact (id f31))
    =>
    (assert (tobacco (id t29) (name "DarkSide Rare")))
)


(defrule tr30
    (declare (salience 100))
    (fact (id f6))
    (fact (id c1))
    (fact (id tl2))
    (fact (id f32))
    =>
    (assert (tobacco (id t30) (name "Element Вода")))
)


(defrule tr31
    (declare (salience 100))
    (fact (id f6))
    (fact (id c1))
    (fact (id tl2))
    (fact (id f33))
    =>
    (assert (tobacco (id t31) (name "Tangiers")))
)


(defrule tr32
    (declare (salience 100))
    (fact (id f6))
    (fact (id c1))
    (fact (id tl2))
    (fact (id f34))
    =>
    (assert (tobacco (id t32) (name "Dali")))
)


(defrule tr33
    (declare (salience 100))
    (fact (id f6))
    (fact (id c1))
    (fact (id tl2))
    (fact (id f35))
    =>
    (assert (tobacco (id t33) (name "Matreshka")))
)


(defrule tr34
    (declare (salience 100))
    (fact (id f6))
    (fact (id c1))
    (fact (id tl2))
    (fact (id f36))
    =>
    (assert (tobacco (id t34) (name "Haze")))
)


(defrule tr35
    (declare (salience 100))
    (fact (id f6))
    (fact (id c1))
    (fact (id tl2))
    (fact (id f37))
    =>
    (assert (tobacco (id t35) (name "Social Smoke")))
)


(defrule tr36
    (declare (salience 100))
    (fact (id f7))
    (fact (id c1))
    (fact (id tl2))
    (fact (id f31))
    =>
    (assert (tobacco (id t36) (name "Burn")))
)


(defrule tr37
    (declare (salience 100))
    (fact (id f7))
    (fact (id c1))
    (fact (id tl2))
    (fact (id f32))
    =>
    (assert (tobacco (id t37) (name "Inferno")))
)


(defrule tr38
    (declare (salience 100))
    (fact (id f7))
    (fact (id c1))
    (fact (id tl2))
    (fact (id f33))
    =>
    (assert (tobacco (id t38) (name "Vacuum")))
)


(defrule tr39
    (declare (salience 100))
    (fact (id f7))
    (fact (id c1))
    (fact (id tl2))
    (fact (id f34))
    =>
    (assert (tobacco (id t39) (name "Hype")))
)


(defrule tr40
    (declare (salience 100))
    (fact (id f7))
    (fact (id c1))
    (fact (id tl2))
    (fact (id f35))
    =>
    (assert (tobacco (id t40) (name "D-Gastro")))
)


(defrule tr41
    (declare (salience 100))
    (fact (id f7))
    (fact (id c1))
    (fact (id tl2))
    (fact (id f36))
    =>
    (assert (tobacco (id t41) (name "Matt Pear")))
)


(defrule tr42
    (declare (salience 100))
    (fact (id f7))
    (fact (id c1))
    (fact (id tl2))
    (fact (id f37))
    =>
    (assert (tobacco (id t42) (name "LAVOO")))
)


(defrule tr43
    (declare (salience 100))
    (fact (id f5))
    (fact (id c1))
    (fact (id tl3))
    (fact (id f31))
    =>
    (assert (tobacco (id t43) (name "Chabacco")))
)


(defrule tr44
    (declare (salience 100))
    (fact (id f5))
    (fact (id c1))
    (fact (id tl3))
    (fact (id f32))
    =>
    (assert (tobacco (id t44) (name "Element Огонь")))
)


(defrule tr45
    (declare (salience 100))
    (fact (id f5))
    (fact (id c1))
    (fact (id tl3))
    (fact (id f33))
    =>
    (assert (tobacco (id t45) (name "OT IVANA")))
)


(defrule tr46
    (declare (salience 100))
    (fact (id f5))
    (fact (id c1))
    (fact (id tl3))
    (fact (id f34))
    =>
    (assert (tobacco (id t46) (name "DUFT")))
)


(defrule tr47
    (declare (salience 100))
    (fact (id f5))
    (fact (id c1))
    (fact (id tl3))
    (fact (id f35))
    =>
    (assert (tobacco (id t47) (name "Frigate")))
)


(defrule tr48
    (declare (salience 100))
    (fact (id f5))
    (fact (id c1))
    (fact (id tl3))
    (fact (id f36))
    =>
    (assert (tobacco (id t48) (name "Sebero")))
)


(defrule tr49
    (declare (salience 100))
    (fact (id f5))
    (fact (id c1))
    (fact (id tl3))
    (fact (id f37))
    =>
    (assert (tobacco (id t49) (name "D-Mini")))
)


(defrule tr50
    (declare (salience 100))
    (fact (id f6))
    (fact (id c1))
    (fact (id tl3))
    (fact (id f31))
    =>
    (assert (tobacco (id t50) (name "Darkside Soft")))
)


(defrule tr51
    (declare (salience 100))
    (fact (id f6))
    (fact (id c1))
    (fact (id tl3))
    (fact (id f32))
    =>
    (assert (tobacco (id t51) (name "Element Воздух")))
)


(defrule tr52
    (declare (salience 100))
    (fact (id f6))
    (fact (id c1))
    (fact (id tl3))
    (fact (id f33))
    =>
    (assert (tobacco (id t52) (name "Blackburn")))
)


(defrule tr53
    (declare (salience 100))
    (fact (id f6))
    (fact (id c1))
    (fact (id tl3))
    (fact (id f34))
    =>
    (assert (tobacco (id t53) (name "Bonche")))
)


(defrule tr54
    (declare (salience 100))
    (fact (id f6))
    (fact (id c1))
    (fact (id tl3))
    (fact (id f35))
    =>
    (assert (tobacco (id t54) (name "All-In")))
)


(defrule tr55
    (declare (salience 100))
    (fact (id f6))
    (fact (id c1))
    (fact (id tl3))
    (fact (id f36))
    =>
    (assert (tobacco (id t55) (name "Original Virginia")))
)


(defrule tr56
    (declare (salience 100))
    (fact (id f6))
    (fact (id c1))
    (fact (id tl3))
    (fact (id f37))
    =>
    (assert (tobacco (id t56) (name "KISMET")))
)


(defrule tr57
    (declare (salience 100))
    (fact (id f7))
    (fact (id c1))
    (fact (id tl3))
    (fact (id f31))
    =>
    (assert (tobacco (id t57) (name "Грыня")))
)


(defrule tr58
    (declare (salience 100))
    (fact (id f7))
    (fact (id c1))
    (fact (id tl3))
    (fact (id f32))
    =>
    (assert (tobacco (id t58) (name "Malaysian")))
)


(defrule tr59
    (declare (salience 100))
    (fact (id f7))
    (fact (id c1))
    (fact (id tl3))
    (fact (id f33))
    =>
    (assert (tobacco (id t59) (name "Vega")))
)


(defrule tr60
    (declare (salience 100))
    (fact (id f7))
    (fact (id c1))
    (fact (id tl3))
    (fact (id f34))
    =>
    (assert (tobacco (id t60) (name "Икс")))
)


(defrule tr61
    (declare (salience 100))
    (fact (id f7))
    (fact (id c1))
    (fact (id tl3))
    (fact (id f35))
    =>
    (assert (tobacco (id t61) (name "Enigma")))
)


(defrule tr62
    (declare (salience 100))
    (fact (id f7))
    (fact (id c1))
    (fact (id tl3))
    (fact (id f36))
    =>
    (assert (tobacco (id t62) (name "Al Saha")))
)


(defrule tr63
    (declare (salience 100))
    (fact (id f7))
    (fact (id c1))
    (fact (id tl3))
    (fact (id f37))
    =>
    (assert (tobacco (id t63) (name "Gixon")))
)


(defrule tr64
    (declare (salience 100))
    (fact (id f5))
    (fact (id c2))
    (fact (id tl1))
    (fact (id f31))
    =>
    (assert (tobacco (id t64) (name "Woodu")))
)


(defrule tr65
    (declare (salience 100))
    (fact (id f5))
    (fact (id c2))
    (fact (id tl1))
    (fact (id f32))
    =>
    (assert (tobacco (id t65) (name "Sadovod")))
)


(defrule tr66
    (declare (salience 100))
    (fact (id f5))
    (fact (id c2))
    (fact (id tl1))
    (fact (id f33))
    =>
    (assert (tobacco (id t66) (name "SmokyLand")))
)


(defrule tr67
    (declare (salience 100))
    (fact (id f5))
    (fact (id c2))
    (fact (id tl1))
    (fact (id f34))
    =>
    (assert (tobacco (id t67) (name "Jacarta")))
)


(defrule tr68
    (declare (salience 100))
    (fact (id f5))
    (fact (id c2))
    (fact (id tl1))
    (fact (id f35))
    =>
    (assert (tobacco (id t68) (name "King Riot")))
)


(defrule tr69
    (declare (salience 100))
    (fact (id f5))
    (fact (id c2))
    (fact (id tl1))
    (fact (id f36))
    =>
    (assert (tobacco (id t69) (name "Spectrum Hard")))
)


(defrule tr70
    (declare (salience 100))
    (fact (id f5))
    (fact (id c2))
    (fact (id tl1))
    (fact (id f37))
    =>
    (assert (tobacco (id t70) (name "BananaPapa")))
)


(defrule tr71
    (declare (salience 100))
    (fact (id f6))
    (fact (id c2))
    (fact (id tl1))
    (fact (id f31))
    =>
    (assert (tobacco (id t71) (name "тетя Груша")))
)


(defrule tr72
    (declare (salience 100))
    (fact (id f6))
    (fact (id c2))
    (fact (id tl1))
    (fact (id f32))
    =>
    (assert (tobacco (id t72) (name "Tamarind")))
)


(defrule tr73
    (declare (salience 100))
    (fact (id f6))
    (fact (id c2))
    (fact (id tl1))
    (fact (id f33))
    =>
    (assert (tobacco (id t73) (name "Orchata")))
)


(defrule tr74
    (declare (salience 100))
    (fact (id f6))
    (fact (id c2))
    (fact (id tl1))
    (fact (id f34))
    =>
    (assert (tobacco (id t74) (name "Divine Rapier")))
)


(defrule tr75
    (declare (salience 100))
    (fact (id f6))
    (fact (id c2))
    (fact (id tl1))
    (fact (id f35))
    =>
    (assert (tobacco (id t75) (name "Candyllac")))
)


(defrule tr76
    (declare (salience 100))
    (fact (id f6))
    (fact (id c2))
    (fact (id tl1))
    (fact (id f36))
    =>
    (assert (tobacco (id t76) (name "All-in Frushi от Ksushi")))
)


(defrule tr77
    (declare (salience 100))
    (fact (id f6))
    (fact (id c2))
    (fact (id tl1))
    (fact (id f37))
    =>
    (assert (tobacco (id t77) (name "Banerro")))
)


(defrule tr78
    (declare (salience 100))
    (fact (id f7))
    (fact (id c2))
    (fact (id tl1))
    (fact (id f31))
    =>
    (assert (tobacco (id t78) (name "Berrieta")))
)


(defrule tr79
    (declare (salience 100))
    (fact (id f7))
    (fact (id c2))
    (fact (id tl1))
    (fact (id f32))
    =>
    (assert (tobacco (id t79) (name "Obladaet")))
)


(defrule tr80
    (declare (salience 100))
    (fact (id f7))
    (fact (id c2))
    (fact (id tl1))
    (fact (id f33))
    =>
    (assert (tobacco (id t80) (name "Bumble Beezy")))
)


(defrule tr81
    (declare (salience 100))
    (fact (id f7))
    (fact (id c2))
    (fact (id tl1))
    (fact (id f34))
    =>
    (assert (tobacco (id t81) (name "Слава КПСС")))
)


(defrule tr82
    (declare (salience 100))
    (fact (id f7))
    (fact (id c2))
    (fact (id tl1))
    (fact (id f35))
    =>
    (assert (tobacco (id t82) (name "Rafiki")))
)


(defrule tr83
    (declare (salience 100))
    (fact (id f7))
    (fact (id c2))
    (fact (id tl1))
    (fact (id f36))
    =>
    (assert (tobacco (id t83) (name "Al parus")))
)


(defrule tr84
    (declare (salience 100))
    (fact (id f7))
    (fact (id c2))
    (fact (id tl1))
    (fact (id f37))
    =>
    (assert (tobacco (id t84) (name "Noirmelon")))
)


(defrule tr85
    (declare (salience 100))
    (fact (id f5))
    (fact (id c2))
    (fact (id tl2))
    (fact (id f31))
    =>
    (assert (tobacco (id t85) (name "Masala")))
)


(defrule tr86
    (declare (salience 100))
    (fact (id f5))
    (fact (id c2))
    (fact (id tl2))
    (fact (id f32))
    =>
    (assert (tobacco (id t86) (name "Sodie pop")))
)


(defrule tr87
    (declare (salience 100))
    (fact (id f5))
    (fact (id c2))
    (fact (id tl2))
    (fact (id f33))
    =>
    (assert (tobacco (id t87) (name "Fir")))
)


(defrule tr88
    (declare (salience 100))
    (fact (id f5))
    (fact (id c2))
    (fact (id tl2))
    (fact (id f34))
    =>
    (assert (tobacco (id t88) (name "Washington")))
)


(defrule tr89
    (declare (salience 100))
    (fact (id f5))
    (fact (id c2))
    (fact (id tl2))
    (fact (id f35))
    =>
    (assert (tobacco (id t89) (name "Trifecta")))
)


(defrule tr90
    (declare (salience 100))
    (fact (id f5))
    (fact (id c2))
    (fact (id tl2))
    (fact (id f36))
    =>
    (assert (tobacco (id t90) (name "Birquq")))
)


(defrule tr91
    (declare (salience 100))
    (fact (id f5))
    (fact (id c2))
    (fact (id tl2))
    (fact (id f37))
    =>
    (assert (tobacco (id t91) (name "F-Line")))
)


(defrule tr92
    (declare (salience 100))
    (fact (id f6))
    (fact (id c2))
    (fact (id tl2))
    (fact (id f31))
    =>
    (assert (tobacco (id t92) (name "Fantasia")))
)


(defrule tr93
    (declare (salience 100))
    (fact (id f6))
    (fact (id c2))
    (fact (id tl2))
    (fact (id f32))
    =>
    (assert (tobacco (id t93) (name "Nirvana")))
)


(defrule tr94
    (declare (salience 100))
    (fact (id f6))
    (fact (id c2))
    (fact (id tl2))
    (fact (id f33))
    =>
    (assert (tobacco (id t94) (name "Eclipse")))
)


(defrule tr95
    (declare (salience 100))
    (fact (id f6))
    (fact (id c2))
    (fact (id tl2))
    (fact (id f34))
    =>
    (assert (tobacco (id t95) (name "Ugly Hookah")))
)


(defrule tr96
    (declare (salience 100))
    (fact (id f6))
    (fact (id c2))
    (fact (id tl2))
    (fact (id f35))
    =>
    (assert (tobacco (id t96) (name "Romman")))
)


(defrule tr97
    (declare (salience 100))
    (fact (id f6))
    (fact (id c2))
    (fact (id tl2))
    (fact (id f36))
    =>
    (assert (tobacco (id t97) (name "Pure")))
)


(defrule tr98
    (declare (salience 100))
    (fact (id f6))
    (fact (id c2))
    (fact (id tl2))
    (fact (id f37))
    =>
    (assert (tobacco (id t98) (name "Mya")))
)


(defrule tr99
    (declare (salience 100))
    (fact (id f7))
    (fact (id c2))
    (fact (id tl2))
    (fact (id f31))
    =>
    (assert (tobacco (id t99) (name "Al waha")))
)


(defrule tr100
    (declare (salience 100))
    (fact (id f7))
    (fact (id c2))
    (fact (id tl2))
    (fact (id f32))
    =>
    (assert (tobacco (id t100) (name "Othmani")))
)


(defrule tr101
    (declare (salience 100))
    (fact (id f7))
    (fact (id c2))
    (fact (id tl2))
    (fact (id f33))
    =>
    (assert (tobacco (id t101) (name "Hookafina")))
)


(defrule tr102
    (declare (salience 100))
    (fact (id f7))
    (fact (id c2))
    (fact (id tl2))
    (fact (id f34))
    =>
    (assert (tobacco (id t102) (name "Al Amir")))
)


(defrule tr103
    (declare (salience 100))
    (fact (id f7))
    (fact (id c2))
    (fact (id tl2))
    (fact (id f35))
    =>
    (assert (tobacco (id t103) (name "Tovacco Free")))
)


(defrule tr104
    (declare (salience 100))
    (fact (id f7))
    (fact (id c2))
    (fact (id tl2))
    (fact (id f36))
    =>
    (assert (tobacco (id t104) (name "Gazon")))
)


(defrule tr105
    (declare (salience 100))
    (fact (id f7))
    (fact (id c2))
    (fact (id tl2))
    (fact (id f37))
    =>
    (assert (tobacco (id t105) (name "Dokha")))
)


(defrule tr107
    (declare (salience 100))
    (fact (id f5))
    (fact (id c2))
    (fact (id tl3))
    (fact (id f31))
    =>
    (assert (tobacco (id t107) (name "Seno")))
)


(defrule tr108
    (declare (salience 100))
    (fact (id f5))
    (fact (id c2))
    (fact (id tl3))
    (fact (id f32))
    =>
    (assert (tobacco (id t108) (name "Blonde Leaf")))
)


(defrule tr109
    (declare (salience 100))
    (fact (id f5))
    (fact (id c2))
    (fact (id tl3))
    (fact (id f33))
    =>
    (assert (tobacco (id t109) (name "Dark Leaf")))
)


(defrule tr110
    (declare (salience 100))
    (fact (id f5))
    (fact (id c2))
    (fact (id tl3))
    (fact (id f34))
    =>
    (assert (tobacco (id t110) (name "Hydro")))
)


(defrule tr111
    (declare (salience 100))
    (fact (id f5))
    (fact (id c2))
    (fact (id tl3))
    (fact (id f35))
    =>
    (assert (tobacco (id t111) (name "Urth Tree")))
)


(defrule tr112
    (declare (salience 100))
    (fact (id f5))
    (fact (id c2))
    (fact (id tl3))
    (fact (id f36))
    =>
    (assert (tobacco (id t112) (name "Steam")))
)


(defrule tr113
    (declare (salience 100))
    (fact (id f5))
    (fact (id c2))
    (fact (id tl3))
    (fact (id f37))
    =>
    (assert (tobacco (id t113) (name "Windranger")))
)


(defrule tr114
    (declare (salience 100))
    (fact (id f6))
    (fact (id c2))
    (fact (id tl3))
    (fact (id f31))
    =>
    (assert (tobacco (id t114) (name "Just Do it")))
)


(defrule tr115
    (declare (salience 100))
    (fact (id f6))
    (fact (id c2))
    (fact (id tl3))
    (fact (id f32))
    =>
    (assert (tobacco (id t115) (name "Aloha")))
)


(defrule tr116
    (declare (salience 100))
    (fact (id f6))
    (fact (id c2))
    (fact (id tl3))
    (fact (id f33))
    =>
    (assert (tobacco (id t116) (name "Bonapart")))
)


(defrule tr117
    (declare (salience 100))
    (fact (id f6))
    (fact (id c2))
    (fact (id tl3))
    (fact (id f34))
    =>
    (assert (tobacco (id t117) (name "Mazaya")))
)


(defrule tr118
    (declare (salience 100))
    (fact (id f6))
    (fact (id c2))
    (fact (id tl3))
    (fact (id f35))
    =>
    (assert (tobacco (id t118) (name "Nu")))
)


(defrule tr119
    (declare (salience 100))
    (fact (id f6))
    (fact (id c2))
    (fact (id tl3))
    (fact (id f36))
    =>
    (assert (tobacco (id t119) (name "BON BON")))
)


(defrule tr120
    (declare (salience 100))
    (fact (id f6))
    (fact (id c2))
    (fact (id tl3))
    (fact (id f37))
    =>
    (assert (tobacco (id t120) (name "SHERAZADE")))
)


(defrule tr121
    (declare (salience 100))
    (fact (id f7))
    (fact (id c2))
    (fact (id tl3))
    (fact (id f31))
    =>
    (assert (tobacco (id t121) (name "SOEX")))
)




(defrule tr122
    (declare (salience 100))
    (fact (id f7))
    (fact (id c2))
    (fact (id tl3))
    (fact (id f32))
    =>
    (assert (tobacco (id t122) (name "VAPOR")))
)


(defrule tr123
    (declare (salience 100))
    (fact (id f7))
    (fact (id c2))
    (fact (id tl3))
    (fact (id f33))
    =>
    (assert (tobacco (id t123) (name "Moasel")))
)


(defrule tr124
    (declare (salience 100))
    (fact (id f7))
    (fact (id c2))
    (fact (id tl3))
    (fact (id f34))
    =>
    (assert (tobacco (id t124) (name "BIGG STEAM")))
)


(defrule tr125
    (declare (salience 100))
    (fact (id f7))
    (fact (id c2))
    (fact (id tl3))
    (fact (id f35))
    =>
    (assert (tobacco (id t125) (name "BEAMER")))
)


(defrule tr126
    (declare (salience 100))
    (fact (id f7))
    (fact (id c2))
    (fact (id tl3))
    (fact (id f36))
    =>
    (assert (tobacco (id t126) (name "COCONARA")))
)


(defrule tr127
    (declare (salience 100))
    (fact (id f7))
    (fact (id c2))
    (fact (id tl3))
    (fact (id f37))
    =>
    (assert (tobacco (id t127) (name "Shiazo")))
)


(defrule tr128
    (declare (salience 100))
    (fact (id f5))
    (fact (id c3))
    (fact (id tl1))
    (fact (id f31))
    =>
    (assert (tobacco (id t128) (name "The king shisha")))
)


(defrule tr129
    (declare (salience 100))
    (fact (id f5))
    (fact (id c3))
    (fact (id tl1))
    (fact (id f32))
    =>
    (assert (tobacco (id t129) (name "KHALIL MAAMOON")))
)


(defrule tr130
    (declare (salience 100))
    (fact (id f5))
    (fact (id c3))
    (fact (id tl1))
    (fact (id f33))
    =>
    (assert (tobacco (id t130) (name "Alchemist Blen")))
)


(defrule tr131
    (declare (salience 100))
    (fact (id f5))
    (fact (id c3))
    (fact (id tl1))
    (fact (id f34))
    =>
    (assert (tobacco (id t131) (name "Castro")))
)


(defrule tr132
    (declare (salience 100))
    (fact (id f5))
    (fact (id c3))
    (fact (id tl1))
    (fact (id f35))
    =>
    (assert (tobacco (id t132) (name "Karmic")))
)


(defrule tr133
    (declare (salience 100))
    (fact (id f5))
    (fact (id c3))
    (fact (id tl1))
    (fact (id f36))
    =>
    (assert (tobacco (id t133) (name "HQD")))
)


(defrule tr134
    (declare (salience 100))
    (fact (id f5))
    (fact (id c3))
    (fact (id tl1))
    (fact (id f37))
    =>
    (assert (tobacco (id t134) (name "WindPipe")))
)


(defrule tr135
    (declare (salience 100))
    (fact (id f6))
    (fact (id c3))
    (fact (id tl1))
    (fact (id f31))
    =>
    (assert (tobacco (id t135) (name "Outlender")))
)


(defrule tr136
    (declare (salience 100))
    (fact (id f6))
    (fact (id c3))
    (fact (id tl1))
    (fact (id f32))
    =>
    (assert (tobacco (id t136) (name "Habbib")))
)


(defrule tr137
    (declare (salience 100))
    (fact (id f6))
    (fact (id c3))
    (fact (id tl1))
    (fact (id f33))
    =>
    (assert (tobacco (id t137) (name "Ricoon")))
)


(defrule tr138
    (declare (salience 100))
    (fact (id f6))
    (fact (id c3))
    (fact (id tl1))
    (fact (id f34))
    =>
    (assert (tobacco (id t138) (name "Nicotime")))
)


(defrule tr139
    (declare (salience 100))
    (fact (id f6))
    (fact (id c3))
    (fact (id tl1))
    (fact (id f35))
    =>
    (assert (tobacco (id t139) (name "360")))
)


(defrule tr140
    (declare (salience 100))
    (fact (id f6))
    (fact (id c3))
    (fact (id tl1))
    (fact (id f36))
    =>
    (assert (tobacco (id t140) (name "Al FAKHamah")))
)


(defrule tr141
    (declare (salience 100))
    (fact (id f6))
    (fact (id c3))
    (fact (id tl1))
    (fact (id f37))
    =>
    (assert (tobacco (id t141) (name "Chaos")))
)


(defrule tr142
    (declare (salience 100))
    (fact (id f7))
    (fact (id c3))
    (fact (id tl1))
    (fact (id f31))
    =>
    (assert (tobacco (id t142) (name "Eternal")))
)


(defrule tr143
    (declare (salience 100))
    (fact (id f7))
    (fact (id c3))
    (fact (id tl1))
    (fact (id f32))
    =>
    (assert (tobacco (id t143) (name "HOOK IT UP")))
)


(defrule tr144
    (declare (salience 100))
    (fact (id f7))
    (fact (id c3))
    (fact (id tl1))
    (fact (id f33))
    =>
    (assert (tobacco (id t144) (name "Corvus")))
)


(defrule tr145
    (declare (salience 100))
    (fact (id f7))
    (fact (id c3))
    (fact (id tl1))
    (fact (id f34))
    =>
    (assert (tobacco (id t145) (name "Mad")))
)


(defrule tr146
    (declare (salience 100))
    (fact (id f7))
    (fact (id c3))
    (fact (id tl1))
    (fact (id f35))
    =>
    (assert (tobacco (id t146) (name "Тратил")))
)


(defrule tr147
    (declare (salience 100))
    (fact (id f7))
    (fact (id c3))
    (fact (id tl1))
    (fact (id f36))
    =>
    (assert (tobacco (id t147) (name "ROXON")))
)


(defrule tr148
    (declare (salience 100))
    (fact (id f7))
    (fact (id c3))
    (fact (id tl1))
    (fact (id f37))
    =>
    (assert (tobacco (id t148) (name "Karizma")))
)


(defrule tr149
    (declare (salience 100))
    (fact (id f5))
    (fact (id c3))
    (fact (id tl2))
    (fact (id f31))
    =>
    (assert (tobacco (id t149) (name "MEDWAKH")))
)


(defrule tr150
    (declare (salience 100))
    (fact (id f5))
    (fact (id c3))
    (fact (id tl2))
    (fact (id f32))
    =>
    (assert (tobacco (id t150) (name "Hizenberg")))
)


(defrule tr151
    (declare (salience 100))
    (fact (id f5))
    (fact (id c3))
    (fact (id tl2))
    (fact (id f33))
    =>
    (assert (tobacco (id t151) (name "WAKA-WAKA")))
)


(defrule tr152
    (declare (salience 100))
    (fact (id f5))
    (fact (id c3))
    (fact (id tl2))
    (fact (id f34))
    =>
    (assert (tobacco (id t152) (name "Overdozz")))
)


(defrule tr153
    (declare (salience 100))
    (fact (id f5))
    (fact (id c3))
    (fact (id tl2))
    (fact (id f35))
    =>
    (assert (tobacco (id t153) (name "FML")))
)


(defrule tr154
    (declare (salience 100))
    (fact (id f5))
    (fact (id c3))
    (fact (id tl2))
    (fact (id f36))
    =>
    (assert (tobacco (id t154) (name "TRIFECTA")))
)


(defrule tr155
    (declare (salience 100))
    (fact (id f5))
    (fact (id c3))
    (fact (id tl2))
    (fact (id f37))
    =>
    (assert (tobacco (id t155) (name "ZUMERRET")))
)


(defrule tr156
    (declare (salience 100))
    (fact (id f6))
    (fact (id c3))
    (fact (id tl2))
    (fact (id f31))
    =>
    (assert (tobacco (id t156) (name "Seven sins")))
)


(defrule tr157
    (declare (salience 100))
    (fact (id f6))
    (fact (id c3))
    (fact (id tl2))
    (fact (id f32))
    =>
    (assert (tobacco (id t157) (name "RedMx")))
)


(defrule tr158
    (declare (salience 100))
    (fact (id f6))
    (fact (id c3))
    (fact (id tl2))
    (fact (id f33))
    =>
    (assert (tobacco (id t158) (name "Universal")))
)


(defrule tr159
    (declare (salience 100))
    (fact (id f6))
    (fact (id c3))
    (fact (id tl2))
    (fact (id f34))
    =>
    (assert (tobacco (id t159) (name "Himiya")))
)


(defrule tr160
    (declare (salience 100))
    (fact (id f6))
    (fact (id c3))
    (fact (id tl2))
    (fact (id f35))
    =>
    (assert (tobacco (id t160) (name "pyrokinesis")))
)


(defrule tr161
    (declare (salience 100))
    (fact (id f6))
    (fact (id c3))
    (fact (id tl2))
    (fact (id f36))
    =>
    (assert (tobacco (id t161) (name "Ice Rockz")))
)


(defrule tr162
    (declare (salience 100))
    (fact (id f6))
    (fact (id c3))
    (fact (id tl2))
    (fact (id f37))
    =>
    (assert (tobacco (id t162) (name "BIGG")))
)


(defrule tr163
    (declare (salience 100))
    (fact (id f7))
    (fact (id c3))
    (fact (id tl2))
    (fact (id f31))
    =>
    (assert (tobacco (id t163) (name "Phantom")))
)


(defrule tr164
    (declare (salience 100))
    (fact (id f7))
    (fact (id c3))
    (fact (id tl2))
    (fact (id f32))
    =>
    (assert (tobacco (id t164) (name "Крепыш")))
)


(defrule tr165
    (declare (salience 100))
    (fact (id f7))
    (fact (id c3))
    (fact (id tl2))
    (fact (id f33))
    =>
    (assert (tobacco (id t165) (name "SOVUNYA")))
)


(defrule tr166
    (declare (salience 100))
    (fact (id f7))
    (fact (id c3))
    (fact (id tl2))
    (fact (id f34))
    =>
    (assert (tobacco (id t166) (name "ажиотаж")))
)


(defrule tr167
    (declare (salience 100))
    (fact (id f7))
    (fact (id c3))
    (fact (id tl2))
    (fact (id f35))
    =>
    (assert (tobacco (id t167) (name "Krugovorot")))
)


(defrule tr168
    (declare (salience 100))
    (fact (id f7))
    (fact (id c3))
    (fact (id tl2))
    (fact (id f36))
    =>
    (assert (tobacco (id t168) (name "Al amir")))
)


(defrule tr169
    (declare (salience 100))
    (fact (id f7))
    (fact (id c3))
    (fact (id tl2))
    (fact (id f37))
    =>
    (assert (tobacco (id t169) (name "Play")))
)


(defrule tr170
    (declare (salience 100))
    (fact (id f5))
    (fact (id c3))
    (fact (id tl3))
    (fact (id f31))
    =>
    (assert (tobacco (id t170) (name "Oyster")))
)


(defrule tr171
    (declare (salience 100))
    (fact (id f5))
    (fact (id c3))
    (fact (id tl3))
    (fact (id f32))
    =>
    (assert (tobacco (id t171) (name "Одесса")))
)
(defrule tr172
    (declare (salience 100))
    (fact (id f5))
    (fact (id c3))
    (fact (id tl3))
    (fact (id f33))
    =>
    (assert (tobacco (id t172) (name "Bionic")))
)


(defrule tr173
    (declare (salience 100))
    (fact (id f5))
    (fact (id c3))
    (fact (id tl3))
    (fact (id f34))
    =>
    (assert (tobacco (id t173) (name "Jazze Pha")))
)


(defrule tr174
    (declare (salience 100))
    (fact (id f5))
    (fact (id c3))
    (fact (id tl3))
    (fact (id f35))
    =>
    (assert (tobacco (id t174) (name "Обуза")))
)


(defrule tr175
    (declare (salience 100))
    (fact (id f5))
    (fact (id c3))
    (fact (id tl3))
    (fact (id f36))
    =>
    (assert (tobacco (id t175) (name "golden seal")))
)


(defrule tr176
    (declare (salience 100))
    (fact (id f5))
    (fact (id c3))
    (fact (id tl3))
    (fact (id f37))
    =>
    (assert (tobacco (id t176) (name "Code 007")))
)


(defrule tr177
    (declare (salience 100))
    (fact (id f6))
    (fact (id c3))
    (fact (id tl3))
    (fact (id f31))
    =>
    (assert (tobacco (id t177) (name "Vintage")))
)


(defrule tr178
    (declare (salience 100))
    (fact (id f6))
    (fact (id c3))
    (fact (id tl3))
    (fact (id f32))
    =>
    (assert (tobacco (id t178) (name "Kashimir")))
)


(defrule tr179
    (declare (salience 100))
    (fact (id f6))
    (fact (id c3))
    (fact (id tl3))
    (fact (id f33))
    =>
    (assert (tobacco (id t179) (name "RainCosh")))
)


(defrule tr180
    (declare (salience 100))
    (fact (id f6))
    (fact (id c3))
    (fact (id tl3))
    (fact (id f34))
    =>
    (assert (tobacco (id t180) (name "Steamtoria")))
)


(defrule tr181
    (declare (salience 100))
    (fact (id f6))
    (fact (id c3))
    (fact (id tl3))
    (fact (id f35))
    =>
    (assert (tobacco (id t181) (name "Tugra")))
)


(defrule tr182
    (declare (salience 100))
    (fact (id f6))
    (fact (id c3))
    (fact (id tl3))
    (fact (id f36))
    =>
    (assert (tobacco (id t182) (name "Salzgitter")))
)


(defrule tr183
    (declare (salience 100))
    (fact (id f6))
    (fact (id c3))
    (fact (id tl3))
    (fact (id f37))
    =>
    (assert (tobacco (id t183) (name "Штрих")))
)




(defrule tr184
    (declare (salience 100))
    (fact (id f7))
    (fact (id c3))
    (fact (id tl3))
    (fact (id f31))
    =>
    (assert (tobacco (id t184) (name "Hybrid")))
)


(defrule tr185
    (declare (salience 100))
    (fact (id f7))
    (fact (id c3))
    (fact (id tl3))
    (fact (id f32))
    =>
    (assert (tobacco (id t185) (name "Molasses")))
)


(defrule tr186
    (declare (salience 100))
    (fact (id f7))
    (fact (id c3))
    (fact (id tl3))
    (fact (id f33))
    =>
    (assert (tobacco (id t186) (name "Morales")))
)


(defrule tr187
    (declare (salience 100))
    (fact (id f7))
    (fact (id c3))
    (fact (id tl3))
    (fact (id f34))
    =>
    (assert (tobacco (id t187) (name "Spacenook")))
)


(defrule tr188
    (declare (salience 100))
    (fact (id f7))
    (fact (id c3))
    (fact (id tl3))
    (fact (id f35))
    =>
    (assert (tobacco (id t188) (name "FDA")))
)


(defrule tr189
    (declare (salience 100))
    (fact (id f7))
    (fact (id c3))
    (fact (id tl3))
    (fact (id f36))
    =>
    (assert (tobacco (id t189) (name "Nargila")))
)


(defrule tr190
    (declare (salience 100))
    (fact (id f7))
    (fact (id c3))
    (fact (id tl3))
    (fact (id f37))
    =>
    (assert (tobacco (id t190) (name "Puchkin")))
)

(deffacts questions
	(question-user (question "Какая ценовая категория табака?") (answers "Низкая" "Средняя" "Высокая"))
	(question-user (question "Какова крепость табака?") (answers "Лёгкая" "Средняя" "Тяжелая"))
	(question-user (question "Какой табачный лист?") (answers "Бёрли" "Ориентал" "Вирджиния"))
	(question-user (question "Страна производитель табака?") (answers "ОАЭ" "Америка" "Россия" "Египет" "Германия" "Индия" "Киргизия"))
)

(defrule q1
        (declare (salience 25))
        ?ans  <- (answer-user (question "Какая ценовая категория табака?") (answer ?a))
        =>
        (if (eq ?a "Низкая") then (assert (fact (id f1) (name "Низкая")) ))
        (if (eq ?a "Средняя") then (assert (fact (id f2) (name "Средняя")) ))
        (if (eq ?a "Высокая") then (assert (fact (id f3) (name "Высокая")) ))
)

(defrule q2
        (declare (salience 50))
        ?ans  <- (answer-user (question "Какова крепость табака?") (answer ?a))
        =>
        (if (eq ?a "Лёгкая") then (assert (fact (id f5) (name "Лёгкая")) ))
        (if (eq ?a "Средняя") then (assert (fact (id f6) (name "Средняя")) ))
        (if (eq ?a "Тяжелая") then (assert (fact (id f7) (name "Тяжелая")) ))
)


(defrule q3
        (declare (salience 75))
        ?ans  <- (answer-user (question "Какой табачный лист?") (answer ?a))
        =>
        (if (eq ?a "Бёрли") then (assert (fact (id f8) (name "Бёрли")) ))
        (if (eq ?a "Ориентал") then (assert (fact (id f9) (name "Ориентал")) ))
        (if (eq ?a "Вирджиния") then (assert (fact (id f10) (name "Вирджиния")) ))
)


(defrule q4
        (declare (salience 100))
        ?ans  <- (answer-user (question "Страна производитель табака?") (answer ?a))
        =>
        (if (eq ?a "ОАЭ") then (assert (fact (id f31) (name "ОАЭ")) ))
        (if (eq ?a "Америка") then (assert (fact (id f32) (name "Америка")) ))
        (if (eq ?a "Россия") then (assert (fact (id f33) (name "Россия")) ))
        (if (eq ?a "Египет") then (assert (fact (id f34) (name "Египет")) ))
        (if (eq ?a "Германия") then (assert (fact (id f35) (name "Германия")) ))
        (if (eq ?a "Индия") then (assert (fact (id f36) (name "Индия")) ))
        (if (eq ?a "Киргизия") then (assert (fact (id f37) (name "Киргизия")) ))
)

(defrule FoundTerminal
	(declare (salience 100))
	?term <- (tobacco (id ?id) (name ?nm))
	=>
	(assert (sendmessagehalt (str-cat "Вывод окончен, результат: " ?nm)))
)