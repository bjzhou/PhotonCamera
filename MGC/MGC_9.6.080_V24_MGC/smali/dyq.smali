.class public final Ldyq;
.super Ldyp;
.source "PG"


# instance fields
.field public final p:Lkfn;


# direct methods
.method public constructor <init>(Lltd;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p1}, Lkfn;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Ldyp;-><init>(Lltd;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Ldyq;->p:Lkfn;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ldyp;->b()F

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    new-instance p1, Lkfn;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, p0}, Lkfn;->a(F)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final e(F)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Ldyq;->p:Lkfn;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lkfn;->a(F)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final g(J)Z
    .locals 6

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    float-to-double v4, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    return v2

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_6
    iget-object p1, p2, Lkfn;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_7
    long-to-float p1, p1

    nop

    nop

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

    :goto_8
    if-nez p0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    iget p1, p1, Ldyl;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput v2, p1, Ldyl;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_2

    nop

    :goto_c
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_e
    iput p1, p0, Ldyq;->h:F

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

    :goto_f
    iput v0, p0, Ldyq;->i:F

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_11
    if-gtz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput v0, p1, Ldyl;->a:F

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_13
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_14
    mul-double/2addr v2, v4

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

    nop

    :goto_15
    iget v1, p0, Ldyq;->h:F

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-float/2addr v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_17
    div-float/2addr p1, v4

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_18
    mul-float/2addr p1, v4

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_19
    check-cast p1, Ldyl;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1a
    iget v0, p0, Ldyq;->n:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1b
    check-cast p1, Ldyl;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/high16 v4, 0x447a0000    # 1000.0f

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

    :goto_1d
    if-ltz p2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p2, v2}, Lkfn;->b(F)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1f
    iput p2, p0, Ldyq;->i:F

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_20
    cmpg-float v1, p2, v0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_23
    iget v3, p2, Lkfn;->a:F

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_24
    sub-float v1, v2, v1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_25
    cmpl-float p2, p2, v0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_26
    if-gtz p2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    :cond_3
    :goto_27
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_28
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_29
    iget p2, p1, Ldyl;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object p0, p0, Ldyq;->p:Lkfn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_2b
    if-ltz v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_33

    nop

    nop

    :goto_2c
    double-to-float v2, v2

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2d
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_39

    nop

    :goto_2e
    iget-object p1, p2, Lkfn;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-nez p1, :cond_6

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_6
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object p2, p0, Ldyq;->p:Lkfn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_32
    const v0, 0x14

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iput v0, p1, Ldyl;->b:F

    nop

    :goto_36
    goto/32 :goto_2e

    nop

    nop

    :goto_37
    invoke-virtual {p0, p1}, Lkfn;->b(F)Z

    move-result p0

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

    :goto_38
    iget v0, p0, Ldyq;->o:F

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

    nop

    nop

    :goto_39
    goto/32 :goto_4

    nop

    nop

    :goto_3a
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object p1, p2, Lkfn;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_3c
    div-float/2addr v1, v3

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_3d
    return v2

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    float-to-double v2, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_40
    iget v4, p2, Lkfn;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_41
    check-cast p1, Ldyl;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_42
    iget v0, p0, Ldyq;->i:F

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop
.end method
