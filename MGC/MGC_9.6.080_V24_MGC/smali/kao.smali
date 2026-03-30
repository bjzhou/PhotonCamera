.class final Lkao;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkar;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Lkao;->a:I

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
.end method


# virtual methods
.method public final a()Lkak;
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object p0, Lkak;->i:Lkak;

    nop

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

    :goto_2
    sget-object p0, Lkak;->o:Lkak;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    :goto_4
    iget p0, p0, Lkao;->a:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object p0, Lkak;->f:Lkak;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    if-ne p0, v0, :cond_1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Llsc;Llsc;)Z
    .locals 4

    goto/32 :goto_29

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p1, Llsc;->o:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_3
    move v0, v1

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5
    goto :goto_4

    nop

    nop

    :goto_6
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_8
    if-ne p0, p1, :cond_1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return v1

    nop

    :goto_b
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_12

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

    nop

    :goto_e
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_f
    goto :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return v0

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1f

    nop

    nop

    :goto_13
    return v1

    nop

    nop

    :goto_14
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_15
    int-to-double p1, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_16
    iget p0, p1, Llsc;->j:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_17
    iget p0, p0, Lkao;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_18
    return v0

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-ne p0, v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    :goto_1b
    iget-object p1, p2, Llsc;->o:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez p0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_3
    goto/32 :goto_1a

    nop

    nop

    :goto_1d
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1e
    sub-int/2addr p2, v2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_20
    const/4 p1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_21
    if-eqz p1, :cond_4

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v1, 0x1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    int-to-double v2, p0

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

    nop

    :goto_24
    const p1, 0x358637bd    # 1.0E-6f

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_25
    return v1

    nop

    :goto_26
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_27
    double-to-float p0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_28
    cmpl-float p0, p0, p1

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    sub-int/2addr p0, p1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-eq p0, p1, :cond_5

    nop

    goto/32 :goto_26

    nop

    :cond_5
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2f
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_c

    nop

    :goto_30
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_31
    iget p1, p2, Llsc;->s:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_32
    iget p0, p1, Llsc;->s:I

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_34
    if-lez p0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop
.end method
