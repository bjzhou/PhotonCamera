.class final Lbag;
.super Luci;
.source "PG"

# interfaces
.implements Luaz;


# instance fields
.field final synthetic a:Lbaj;


# direct methods
.method public constructor <init>(Lbaj;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
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

    nop

    :goto_1
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iput-object p1, p0, Lbag;->a:Lbaj;

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

    :goto_3
    return-void

    nop
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lbaj;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lbag;->a:Lbaj;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4
    iget-object p0, p0, Lbag;->a:Lbaj;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_5
    return-object v0

    nop

    :goto_6
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_9
    invoke-interface {p0}, Lbbs;->a()V

    :goto_a
    goto/32 :goto_b

    nop

    nop

    :goto_b
    move-object v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_c
    const/high16 v2, 0x7fc00000    # Float.NaN

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lbaj;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Lbaj;->d()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p0}, Lbbs;->b()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_14
    invoke-virtual {p0}, Lbaj;->a()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_6

    nop

    nop

    :goto_16
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_0

    nop

    nop

    :goto_19
    goto/16 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_9

    nop

    nop

    :goto_1b
    goto/16 :goto_a

    nop

    nop

    :goto_1c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1d
    cmpg-float v0, v0, v2

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-gtz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {p0}, Lbbs;->a()V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Lbaj;->b()Lbbs;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_21
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_22
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_23
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_24
    if-nez v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_16

    nop

    :goto_26
    if-eqz v1, :cond_4

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1b

    nop

    nop

    nop

    nop
.end method
