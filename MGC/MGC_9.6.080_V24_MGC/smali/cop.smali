.class public final Lcop;
.super Lctd;
.source "PG"


# instance fields
.field final synthetic a:Lcou;

.field final synthetic b:Lubo;


# direct methods
.method public constructor <init>(Lcou;Lubo;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput-object p1, p0, Lcop;->a:Lcou;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lctd;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    iput-object p2, p0, Lcop;->b:Lubo;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lcpc;Ljava/util/List;J)Lcpa;
    .locals 2

    goto/32 :goto_14

    nop

    nop

    :goto_0
    new-instance p3, Lcon;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p2, Lcou;->h:Lcom;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_2
    invoke-direct {p2, p3, p4}, Ldoy;-><init>(J)V

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lcop;->a:Lcou;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p3, p1, p0, p2, p1}, Lcon;-><init>(Lcpa;Lcou;ILcpa;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p1}, Lcpc;->n()Ldpq;

    move-result-object v0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, p3, p4}, Ldoy;-><init>(J)V

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1f

    nop

    nop

    :goto_8
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_9
    iput v1, p2, Lcou;->d:I

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_a
    const/4 v1, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz p1, :cond_0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {p1}, Lcpc;->b()F

    move-result v0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_d
    invoke-direct {p3, p1, p0, p2, p1}, Lcoo;-><init>(Lcpa;Lcou;ILcpa;)V

    goto/32 :goto_1e

    nop

    nop

    :goto_e
    iget p2, p0, Lcou;->e:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    iget-object p2, p0, Lcop;->a:Lcou;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_10
    invoke-interface {p1}, Lcpc;->o()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_11
    return-object p3

    nop

    :goto_12
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_13
    iget p2, p0, Lcou;->d:I

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x1b

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

    nop

    :goto_15
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_1
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_16
    const v1, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_17
    new-instance p2, Ldoy;

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

    :goto_18
    new-instance v0, Ldoy;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1a
    new-instance p3, Lcoo;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1b
    if-lez v0, :cond_2

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    :goto_1c
    iput v1, v0, Lcom;->c:F

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1d
    iget-object p0, p0, Lcop;->a:Lcou;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-object p3

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_21
    iput v0, p2, Lcom;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p2, p2, Lcou;->h:Lcom;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_23
    iput-object v0, p2, Lcom;->a:Ldpq;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_24
    iput v1, p2, Lcou;->e:I

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

    :goto_25
    iget-object p1, p2, Lcou;->a:Lcth;

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

    :goto_26
    iget-object p2, p0, Lcop;->a:Lcou;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object p2, p2, Lcou;->h:Lcom;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_28
    invoke-interface {p1, v0, p2}, Lubo;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

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

    :goto_29
    iget-object p1, p0, Lcop;->b:Lubo;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    check-cast p1, Lcpa;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2b
    check-cast p1, Lcpa;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2d
    iget-object p2, p0, Lcop;->a:Lcou;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2e
    iget-object p2, p2, Lcou;->i:Lcok;

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2f
    iget-object p1, p0, Lcop;->b:Lubo;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_30
    invoke-interface {p1}, Lcpc;->c()F

    move-result v1

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

    nop

    :goto_31
    iget-object p1, p1, Lcth;->i:Lcth;

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

    :goto_32
    invoke-interface {p1, p2, v0}, Lubo;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop
.end method
