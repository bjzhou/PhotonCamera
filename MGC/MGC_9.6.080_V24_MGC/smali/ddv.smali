.class final Lddv;
.super Luci;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field final synthetic a:Lddw;

.field final synthetic b:Lubo;


# direct methods
.method public constructor <init>(Lddw;Lubo;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iput-object p2, p0, Lddv;->b:Lubo;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lddv;->a:Lddw;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p1, Lblz;

    nop

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

    :goto_3
    iget-object v0, p0, Lddv;->a:Lddw;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, v0, Lddw;->d:Lear;

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

    :goto_5
    iget-object v0, p0, Lddv;->a:Lddw;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_6
    iget-boolean v0, v0, Lddw;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    new-instance p0, Lbvr;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, p1, p0}, Lddu;-><init>(Lddw;Lubo;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v1, v0, Lddw;->d:Lear;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lddv;->b:Lubo;

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

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v1, p0, Lddv;->b:Lubo;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_10
    if-lez v0, :cond_2

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_17

    nop

    :goto_11
    invoke-direct {p0, v1, v2, v0}, Lbvr;-><init>(IZLjava/lang/Object;)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_12
    if-eqz v1, :cond_3

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_14
    sget-object v0, Leaq;->c:Leaq;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_15
    const v1, 0x12

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

    :goto_16
    goto/32 :goto_18

    nop

    nop

    :goto_17
    goto/32 :goto_a

    nop

    nop

    :goto_18
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1, p0}, Lblz;->i(Lubo;)V

    :goto_1a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput-object v1, v0, Lddw;->e:Lubo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p1, p1, Lear;->b:Leaq;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast p1, Lcxb;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1e
    invoke-interface {p1}, Leaw;->getLifecycle()Lear;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance v0, Lddu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_20
    iget-object p1, p0, Lddv;->a:Lddw;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_21
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_22
    iget-object p1, p1, Lcxb;->a:Leaw;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object p1, p1, Lddw;->b:Lblw;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v1, -0x773f589e

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p1, v0}, Lear;->a(Leav;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p1, v0}, Leaq;->a(Leaq;)Z

    move-result p1

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

    nop
.end method
