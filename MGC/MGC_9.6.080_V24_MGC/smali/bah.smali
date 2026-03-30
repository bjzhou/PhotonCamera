.class final Lbah;
.super Luci;
.source "PG"

# interfaces
.implements Luaz;


# instance fields
.field final synthetic a:Lbaj;


# direct methods
.method public constructor <init>(Lbaj;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lbah;->a:Lbaj;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 4

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Lbaj;->c()Ljava/lang/Object;

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0}, Lbbs;->b()V

    goto/32 :goto_29

    nop

    nop

    :goto_2
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz v2, :cond_0

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

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

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

    nop

    :goto_5
    goto/16 :goto_2b

    nop

    :goto_6
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lbaj;->a()F

    move-result v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    const v2, 0x358637bd    # 1.0E-6f

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_b
    div-float/2addr p0, v0

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v1}, Lbbs;->b()V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_2b

    nop

    :goto_e
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v1, v0, Lbaj;->b:Lbrd;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-gtz v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_1
    goto/32 :goto_25

    nop

    nop

    :goto_11
    move v3, p0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Lbaj;->b()Lbbs;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_15
    const-string v0, "The offset was read before being initialized. Did you access the offset in a phase before layout, like effects or composition?"

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_16
    cmpl-float v1, v1, v2

    nop

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

    :goto_17
    iget-object v0, p0, Lbah;->a:Lbaj;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x3f7fffef    # 0.999999f

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {v1}, Lbrd;->a()Ljava/lang/Object;

    goto/32 :goto_1

    nop

    nop

    :goto_1a
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_34

    nop

    :goto_1c
    goto/16 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Lbaj;->b()Lbbs;

    move-result-object v1

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

    nop

    :goto_1f
    if-gtz v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Lbaj;->a()F

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_22
    cmpl-float v0, p0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_23
    const/4 v3, 0x0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_24
    const v1, 0x1e

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_25
    iget-object p0, p0, Lbah;->a:Lbaj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_26
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2a

    nop

    nop

    :goto_27
    return-object p0

    nop

    nop

    :goto_28
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/high16 v0, 0x7fc00000    # Float.NaN

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_2a
    throw p0

    nop

    nop

    :goto_2b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2c
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_33

    nop

    :goto_2d
    const/high16 v3, 0x3f800000    # 1.0f

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

    :goto_2e
    add-float/2addr p0, v0

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2f
    iget-object v0, p0, Lbah;->a:Lbaj;

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_30
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    cmpg-float v0, p0, v2

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_32
    if-ltz v0, :cond_5

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_23

    nop

    nop

    :goto_33
    goto/32 :goto_28

    nop

    nop

    :goto_34
    goto/32 :goto_2f

    nop

    nop
.end method
