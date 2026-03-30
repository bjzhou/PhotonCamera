.class public final Lnli;
.super Luci;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field final synthetic a:Lnkm;

.field final synthetic b:F

.field final synthetic c:Lubp;


# direct methods
.method public constructor <init>(Lnkm;FLubp;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lnli;->a:Lnkm;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iput p2, p0, Lnli;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_4

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    iput-object p3, p0, Lnli;->c:Lubp;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    iget v1, p0, Lnli;->b:F

    nop

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

    :goto_1
    goto/32 :goto_18

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lnli;->a:Lnkm;

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

    :goto_4
    check-cast v0, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5
    iget v1, p0, Lnli;->b:F

    nop

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

    :goto_6
    invoke-direct {v0, v1, p0, v2}, Lnlh;-><init>(FLjava/lang/Object;I)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, v0, Lnkm;->j:Lubk;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    check-cast p1, Ldgw;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v1, v0}, Ldfg;-><init>(Ltxp;)V

    goto/32 :goto_1b

    nop

    nop

    :goto_a
    new-instance v1, Ldfg;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p1, v0}, Ldgs;->b(Ldgw;Ljava/lang/String;)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lnli;->c:Lubp;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_e
    const v0, 0x13

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v0, v1}, Lubk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_11
    rem-int v0, v0, v1

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

    :goto_12
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v0, Lnlh;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_15
    sget-object p0, Ldfq;->g:Ldgv;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_17
    return-object p0

    nop

    :goto_18
    goto/32 :goto_c

    nop

    nop

    :goto_19
    const v1, 0x8

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sget-object p0, Ldfq;->a:Ldgv;

    nop

    nop

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

    :goto_1b
    invoke-interface {p1, p0, v1}, Ldgw;->c(Ldgv;Ljava/lang/Object;)V

    goto/32 :goto_1d

    nop

    nop

    :goto_1c
    const/4 v2, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1d
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop
.end method
