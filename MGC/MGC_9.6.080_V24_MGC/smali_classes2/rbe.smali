.class public final Lrbe;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lssx;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/concurrent/Executor;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p2, p0, Lrbe;->b:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lrbe;->a:Ljava/util/List;

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

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lsui;
    .locals 7

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v6}, Lrpl;->c(Lssx;)Lssx;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_25

    nop

    nop

    :goto_3
    invoke-static {v3}, Lsgj;->P(Lsui;)Lsui;

    move-result-object v3

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p1, p0, v0}, Lsso;->j(Lsui;Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    if-nez v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v2, p0, Lrbe;->a:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_8
    iget v0, v0, Lsbh;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_9
    invoke-static {v5, v3}, Lsgj;->S(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v3}, Lrof;->c()Lsui;

    move-result-object v3

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    check-cast v3, Lrbs;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_27

    nop

    :goto_d
    sget-object v5, Lstd;->a:Lstd;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    sget-object v0, Lstd;->a:Lstd;

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

    :goto_f
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_10
    check-cast v3, Lrbl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_11
    invoke-static {v3, p1, v2}, Lsso;->j(Lsui;Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_12
    const/4 v3, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_13
    invoke-virtual {v2}, Lryb;->t()Lscq;

    move-result-object v2

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v2, Lpzz;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_17
    invoke-direct {v2, p0, v1, v0, v3}, Lpzz;-><init>(Lrbe;Ljava/util/List;II)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {v6, p1, v2, v5, v4}, Lrbr;-><init>(Ljava/lang/Object;Lssx;Ljava/util/concurrent/Executor;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v2}, Lrpl;->c(Lssx;)Lssx;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1b
    const/4 v3, 0x2

    nop

    nop

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

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1d
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1e
    sget-object v2, Lstd;->a:Lstd;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v3, v3, Lrbl;->b:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_20
    check-cast p1, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_1
    goto/32 :goto_26

    nop

    :goto_22
    iget-object v3, p1, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_23
    return-object p0

    nop

    nop

    :goto_24
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_25
    new-instance v2, Lpzz;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_28
    new-instance v6, Lrbr;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {p1}, Lqqm;->m(Lsui;)Lsui;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2a
    check-cast v0, Lsbh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2b
    invoke-static {v2}, Lrpl;->c(Lssx;)Lssx;

    move-result-object p0

    nop

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

    :goto_2c
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v3, v3, Lrbs;->b:Lrof;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-direct {v2, p0, v0, v1, v3}, Lpzz;-><init>(Lrbe;ILjava/util/List;I)V

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_30
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_31
    new-instance v5, Lrbi;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v0, p0, Lrbe;->a:Ljava/util/List;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-direct {v5, v3, v4}, Lrbi;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_34
    check-cast v2, Lryb;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_35
    const v1, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop
.end method
