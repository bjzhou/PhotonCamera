.class final Lbai;
.super Luci;
.source "PG"

# interfaces
.implements Luaz;


# instance fields
.field final synthetic a:Lbaj;


# direct methods
.method public constructor <init>(Lbaj;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lbai;->a:Lbaj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    goto/32 :goto_1d

    nop

    nop

    :goto_0
    invoke-interface {v2}, Lbbs;->a()V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1
    invoke-interface {v2}, Lbbs;->a()V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

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

    :goto_3
    invoke-interface {p0}, Luaz;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_26

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Lbaj;->d()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_9
    invoke-interface {v2}, Lbbs;->a()V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    check-cast p0, Ljava/lang/Number;

    nop

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

    :goto_c
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

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

    :goto_d
    cmpg-float v0, v0, v3

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_e
    cmpg-float p0, p0, v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2e

    nop

    :goto_10
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {v2}, Lbbs;->a()V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lbai;->a:Lbaj;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_13
    if-lez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_14
    const v1, 0x7

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_15
    throw v3

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_17
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_35

    nop

    nop

    :cond_2
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lbaj;->b()Lbbs;

    move-result-object v2

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_19
    if-eqz v1, :cond_3

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1a
    if-gtz v0, :cond_4

    nop

    goto/32 :goto_22

    nop

    :cond_4
    goto/32 :goto_36

    nop

    nop

    :goto_1b
    if-nez v3, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_5
    :goto_1c
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v0, 0x13

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1e
    if-gez p0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_20
    iget-object v0, p0, Lbai;->a:Lbaj;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_21
    throw v3

    nop

    nop

    :goto_22
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_23
    return-object v0

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0}, Lbaj;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    :goto_26
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_27
    neg-float p0, p0

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

    :goto_28
    const/high16 v3, 0x7fc00000    # Float.NaN

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_29
    throw v3

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p0}, Lbaj;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2f
    invoke-interface {v2}, Lbbs;->b()V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0}, Lbaj;->a()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_31
    if-lez v0, :cond_7

    nop

    nop

    goto/32 :goto_2e

    nop

    :cond_7
    goto/32 :goto_2d

    nop

    :goto_32
    throw v3

    nop

    :goto_33
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_34
    goto/16 :goto_1c

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_36
    cmpl-float p0, p0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_37
    iget-object p0, p0, Lbaj;->a:Luaz;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_38
    move-object v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method
