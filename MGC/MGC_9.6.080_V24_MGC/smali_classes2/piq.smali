.class public final synthetic Lpiq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lrtm;


# instance fields
.field public final synthetic a:Lryy;

.field public final synthetic b:J

.field public final synthetic c:I

.field public final synthetic d:Lrnb;


# direct methods
.method public synthetic constructor <init>(Lrnb;Lryy;JI)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput-object p1, p0, Lpiq;->d:Lrnb;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lpiq;->a:Lryy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    iput-wide p3, p0, Lpiq;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    iput p5, p0, Lpiq;->c:I

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
.method public final a()Ljava/lang/Object;
    .locals 8

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-wide/16 v6, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    invoke-static {v0, v2}, Loyi;->h(Loyd;Lrsk;)Loyd;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2
    new-instance v1, Ljava/util/ArrayList;

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

    :goto_3
    new-instance v2, Lqbp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_4
    cmp-long v0, v4, v6

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Lryy;->em()Lscp;

    move-result-object v0

    nop

    :goto_6
    goto/32 :goto_2e

    nop

    nop

    :goto_7
    iget-object v2, v2, Lpic;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v2, v0}, Loyg;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v2, Loyg;

    nop

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

    :goto_b
    if-nez v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    :goto_d
    iget-wide v4, p0, Lpiq;->b:J

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

    :goto_e
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    add-int/2addr v2, v3

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

    :goto_10
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_13
    return-object p0

    nop

    nop

    :goto_14
    goto/32 :goto_31

    nop

    nop

    :goto_15
    iget-object v0, p0, Lpiq;->d:Lrnb;

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_16
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_17
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_18
    new-instance v1, Ljep;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v1}, Loyi;->e(Ljava/util/Collection;)Loyd;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast v2, Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1d
    if-gtz p0, :cond_2

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v1, p0, v2}, Ljep;-><init>(II)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1f
    check-cast v2, Lpma;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v2, 0x3

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v0, v1}, Loyi;->h(Loyd;Lrsk;)Loyd;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v2, v2, Lpma;->e:Lpic;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->Y()Loyd;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    check-cast v0, Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {v2, v4, v5, v3}, Lqbp;-><init>(JI)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v0}, Lryy;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_28
    if-gtz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2b
    int-to-long v2, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_2c
    iget-object v0, v0, Lrnb;->f:Ljava/lang/Object;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2f
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_30
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v2}, Landroidx/wear/ambient/AmbientDelegate;->Y()Loyd;

    move-result-object v2

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_33
    const v1, 0x18

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

    :goto_34
    iget p0, p0, Lpiq;->c:I

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v0, p0, Lpiq;->a:Lryy;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_36
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

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
.end method
