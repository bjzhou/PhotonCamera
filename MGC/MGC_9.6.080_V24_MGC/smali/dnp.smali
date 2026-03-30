.class public final Ldnp;
.super Landroid/text/style/CharacterStyle;
.source "PG"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# instance fields
.field private final a:Lchw;


# direct methods
.method public constructor <init>(Lchw;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p1, p0, Ldnp;->a:Lchw;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 5

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1
    goto/16 :goto_28

    nop

    nop

    :goto_2
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Ldnp;->a:Lchw;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v0, v4}, La;->p(II)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0, v1}, La;->p(II)Z

    move-result v1

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_8
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_9
    instance-of v0, v0, Lcia;

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_a
    if-nez v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v0, Lcia;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Ldnp;->a:Lchw;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sget-object v0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_10
    if-nez v1, :cond_2

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Ldnp;->a:Lchw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Ldnp;->a:Lchw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_15
    invoke-static {v0, v4}, La;->p(II)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_18
    check-cast v0, Lcia;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_19
    if-nez v1, :cond_3

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_4
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_50

    nop

    :goto_1c
    goto/32 :goto_30

    nop

    nop

    :goto_1d
    invoke-static {v0, v1}, La;->p(II)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_1f
    check-cast p0, Lcia;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_20
    invoke-static {v0, v1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :cond_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {v0, v3}, La;->p(II)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_23
    const v0, 0x14

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget v0, v0, Lcia;->c:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_25
    iget v0, v0, Lcia;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_26
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_27
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    nop

    :goto_28
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_29
    goto :goto_28

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2f
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_30
    if-nez p1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :cond_6
    goto/32 :goto_47

    nop

    nop

    :goto_31
    iget v0, v0, Lcia;->a:F

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_32
    check-cast v0, Lcia;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_33
    iget-object p0, p0, Ldnp;->a:Lchw;

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_34
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setStrokeMiter(F)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    check-cast v0, Lcia;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_36
    add-int v0, v0, v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {v0, v3}, La;->p(II)Z

    move-result v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_38
    const/4 v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_39
    goto :goto_2e

    nop

    nop

    :goto_3a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3b
    if-nez v2, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :cond_7
    goto/32 :goto_3e

    nop

    nop

    :goto_3c
    goto/16 :goto_28

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_40
    if-lez v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_8
    goto/32 :goto_1b

    nop

    :goto_41
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget v0, v0, Lcia;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :goto_44
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_45
    sget-object v1, Lchz;->a:Lchz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_12

    nop

    nop

    :goto_47
    iget-object v0, p0, Ldnp;->a:Lchw;

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_48
    goto/16 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_4a
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4b
    if-nez v1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_4c
    goto/16 :goto_2e

    nop

    nop

    :goto_4d
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_4e
    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    return-void

    nop

    :goto_50
    goto/32 :goto_3

    nop

    nop

    nop
.end method
