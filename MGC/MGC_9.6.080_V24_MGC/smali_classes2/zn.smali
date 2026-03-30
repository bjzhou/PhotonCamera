.class final Lzn;
.super Luci;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field final synthetic a:Lcgb;


# direct methods
.method public constructor <init>(Lcgb;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lzn;->a:Lcgb;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x1

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
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_0
    check-cast p1, Labs;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2a

    nop

    :goto_2
    new-instance v0, Lcel;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x14

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_4
    cmpg-float v4, p1, v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    move v3, v4

    nop

    nop

    :goto_7
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_2d

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_a
    const/high16 p1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_b
    if-ltz v2, :cond_1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-gtz v5, :cond_2

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_d
    move v0, v1

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_f
    if-ltz v4, :cond_3

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_10
    cmpl-float v5, v2, v4

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sget-object p1, Lcgj;->x:Lcgb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_12
    const/high16 v3, -0x41000000    # -0.5f

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_13
    if-ltz v5, :cond_4

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_14
    cmpl-float v4, v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    cmpg-float v4, v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    cmpl-float v5, v3, v4

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_17
    iget v4, p1, Labs;->d:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_18
    iget p1, p1, Labs;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-ltz v4, :cond_5

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1a
    move v0, p1

    nop

    nop

    :goto_1b
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1c
    invoke-static {v0, v2, v3, v1, p1}, Lcen;->e(FFFFLcgb;)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    cmpg-float v2, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v0, v1, p0}, Lcel;->e(JLcgb;)J

    move-result-wide p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_20
    cmpl-float v4, v1, p1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_22
    iget v0, p1, Labs;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_24
    if-gtz v4, :cond_6

    nop

    goto/32 :goto_31

    nop

    nop

    :cond_6
    goto/32 :goto_30

    nop

    nop

    :goto_25
    iget-object p0, p0, Lzn;->a:Lcgb;

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

    :goto_26
    return-object v0

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_1d

    nop

    nop

    :goto_28
    const v0, 0x4

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_29
    invoke-direct {v0, p0, p1}, Lcel;-><init>(J)V

    goto/32 :goto_26

    nop

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
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2c
    move v1, p1

    nop

    nop

    :goto_2d
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_2e
    sget-object p1, Lcgj;->a:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/high16 v4, 0x3f000000    # 0.5f

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    move v1, p1

    nop

    :goto_31
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_32
    move v2, v4

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_16

    nop

    nop

    :goto_34
    cmpg-float v5, v4, v3

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_35
    goto :goto_3d

    nop

    nop

    :goto_36
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-gtz v5, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    move v2, v3

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_17

    nop

    nop

    :goto_3a
    if-gtz v4, :cond_8

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget v2, p1, Labs;->c:F

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    move v3, v4

    nop

    :goto_3d
    goto/32 :goto_18

    nop

    nop

    nop
.end method
