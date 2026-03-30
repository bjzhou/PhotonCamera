.class Ldwt;
.super Ldws;
.source "PG"


# direct methods
.method public constructor <init>(Ldwy;Landroid/view/WindowInsets;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2}, Ldws;-><init>(Ldwy;Landroid/view/WindowInsets;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return v2

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_5
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_6
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return v2

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    instance-of v1, p1, Ldwt;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v3, p1, Ldwt;->a:Landroid/view/WindowInsets;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p1, Ldwt;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_10
    const/4 v2, 0x0

    nop

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

    :goto_11
    iget-object p0, p0, Ldwt;->b:Ldua;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return v0

    nop

    nop

    :goto_13
    goto/32 :goto_9

    nop

    nop

    :goto_14
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_16

    nop

    :goto_15
    invoke-static {p0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_18
    return v0

    nop

    :goto_19
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-eq p0, p1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_4
    goto/32 :goto_18

    nop

    nop

    :goto_1b
    iget-object p1, p1, Ldwt;->b:Ldua;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v1, p0, Ldwt;->a:Landroid/view/WindowInsets;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1d
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop
.end method

.method public hashCode()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Ldwt;->a:Landroid/view/WindowInsets;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/view/WindowInsets;->hashCode()I

    move-result p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop
.end method

.method public n()Ldvg;
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ldvg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    :goto_2
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Ldwt;->a:Landroid/view/WindowInsets;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0, p0}, Ldvg;-><init>(Landroid/view/DisplayCutout;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public o()Ldwy;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ldwy;->m(Landroid/view/WindowInsets;)Ldwy;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iget-object p0, p0, Ldwt;->a:Landroid/view/WindowInsets;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroid/view/WindowInsets;->consumeDisplayCutout()Landroid/view/WindowInsets;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method
