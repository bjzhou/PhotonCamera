.class final Lbdt;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field final synthetic a:Laqq;

.field final synthetic b:Lcqk;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Ljava/lang/Integer;

.field final synthetic f:Lubp;


# direct methods
.method public constructor <init>(Laqq;Lcqk;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Lubp;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p4, p0, Lbdt;->d:Ljava/util/List;

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

    nop

    :goto_1
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    iput-object p5, p0, Lbdt;->e:Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p6, p0, Lbdt;->f:Lubp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Lbdt;->c:Ljava/util/List;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    const/4 p1, 0x2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    iput-object p1, p0, Lbdt;->a:Laqq;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    iput-object p2, p0, Lbdt;->b:Lcqk;

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
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

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

    :goto_3
    invoke-interface {v2, v0}, Lcqk;->ct(I)F

    move-result v0

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_4
    iget-object v0, p0, Lbdt;->d:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x3

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v1, v3}, Laps;->a(Lapv;Ldpq;)F

    move-result v1

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_8
    iget-object p2, p0, Lbdt;->a:Laqq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v2}, Lcqk;->n()Ldpq;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_b
    check-cast p2, Ljava/lang/Number;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_c
    if-eq p2, v0, :cond_0

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    :goto_d
    new-instance v3, Lapw;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p1, Lblm;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p1}, Lblm;->s()V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_11
    and-int/lit8 p2, p2, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_3c

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {p1}, Lblm;->H()Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_15
    if-eqz p2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_39

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_38

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_19
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1a
    iget-object v2, p0, Lbdt;->b:Lcqk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v1}, Lapv;->a()F

    move-result v0

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez p2, :cond_3

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 p2, 0x0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1f
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_20
    if-lez v0, :cond_4

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

    nop

    :cond_4
    goto/32 :goto_23

    nop

    :goto_21
    iget-object v3, p0, Lbdt;->b:Lcqk;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_23
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_25
    invoke-interface {p0, v3, p1, p2}, Lubp;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_26
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface {v3}, Lcqk;->n()Ldpq;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object p0, p0, Lbdt;->f:Lubp;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_2b
    invoke-direct {v3, v2, p2, v1, v0}, Lapw;-><init>(FFFF)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_2c
    goto :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_8

    nop

    nop

    :goto_2e
    const v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2f
    goto :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-eqz v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    :cond_5
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    new-instance v1, Lapm;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v0, p0, Lbdt;->b:Lcqk;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_34
    invoke-direct {v1, p2, v0}, Lapm;-><init>(Laqq;Ldpb;)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static {v1, v2}, Laps;->b(Lapv;Ldpq;)F

    move-result v2

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

    :goto_36
    iget-object p2, p0, Lbdt;->c:Ljava/util/List;

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

    nop

    :goto_37
    invoke-interface {v1}, Lapv;->d()F

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_38
    const/4 p2, 0x0

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_4

    nop

    nop

    :goto_3a
    iget-object v2, p0, Lbdt;->b:Lcqk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_1c

    nop

    nop

    :goto_3c
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

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

    :goto_3e
    iget-object v0, p0, Lbdt;->e:Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_10

    nop

    nop
.end method
