.class public final Lfbj;
.super Lfbf;
.source "PG"


# instance fields
.field private final e:Lffm;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lfbf;-><init>(Ljava/util/List;)V

    goto/32 :goto_4

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p1}, Lffm;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lfbj;->e:Lffm;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p1, Lffm;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic f(Lffj;F)Ljava/lang/Object;
    .locals 10

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    add-float/2addr v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v1, Lffm;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lfay;->c()F

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_26

    nop

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
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_6
    move-object v5, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p1, p0, Lfbj;->e:Lffm;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    mul-float/2addr p2, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_c
    move v7, p2

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_e
    add-float/2addr v0, p2

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

    :goto_f
    iget-object p0, p0, Lfbj;->e:Lffm;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_10
    throw p0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_12
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget v3, v1, Lffm;->a:F

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_14
    check-cast v0, Lffm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez p1, :cond_1

    nop

    goto/32 :goto_19

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_16
    const-string p1, "Missing values for keyframe."

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p1, Lffj;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-object p1

    nop

    nop

    :goto_19
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1a
    iget v1, v1, Lffm;->b:F

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1c
    move-object v6, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1d
    iget-object v1, p1, Lffj;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    :goto_1f
    mul-float/2addr v3, p2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_20
    iput v2, p1, Lffm;->a:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_21
    sub-float/2addr v3, v2

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_22
    iget-object p1, p1, Lffj;->h:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_23
    sub-float/2addr v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_24
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_12

    nop

    nop

    :goto_26
    iget v9, p0, Lfay;->c:F

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_27
    iput v0, p1, Lffm;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_28
    iget v2, v0, Lffm;->a:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_5

    nop

    :goto_2a
    iget v3, p1, Lffj;->g:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_2b
    if-nez v0, :cond_3

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_3
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget v0, v0, Lffm;->b:F

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    sget-object v4, Lffd;->a:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_2f
    if-nez v1, :cond_4

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual/range {v2 .. v9}, Lffl;->b(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_31
    check-cast p1, Lffm;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_32
    iget-object v2, p0, Lfbj;->d:Lffl;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method
