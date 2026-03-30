.class public final Lkwl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltun;


# instance fields
.field private final a:Ltxm;

.field private final b:Ltxm;

.field private final c:Ltxm;

.field private final d:Ltxm;

.field private final e:Ltxm;


# direct methods
.method public constructor <init>(Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p5, p0, Lkwl;->e:Ltxm;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iput-object p4, p0, Lkwl;->d:Ltxm;

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
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lkwl;->b:Ltxm;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lkwl;->a:Ltxm;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p3, p0, Lkwl;->c:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    invoke-virtual {p0}, Lkwl;->b()Lrtm;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final b()Lrtm;
    .locals 10

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v4, Ljava/lang/Integer;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v8, Lqas;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v9, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v8}, Lqas;->a()Lmmz;

    move-result-object v0

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_5
    invoke-direct {v7, v5}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v2, p0, Lkwl;->c:Ltxm;

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

    :goto_7
    const/4 v9, 0x0

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v4}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_a
    invoke-direct {v2, v5, v0, v6}, Lkwi;-><init>(Ljava/lang/Object;II)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v5, v7, v8}, Lknr;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v7, Lhne;->h:Lhmo;

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_d
    invoke-virtual {v0, v5}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v5

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast v1, Lmmx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v8, 0x4

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_11
    const/4 v6, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_12
    new-instance v0, Lkwj;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v3, p0, Lkwl;->d:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_15
    sget-object v4, Lhne;->f:Lhmo;

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_16
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v8, v9}, Lqas;->c(Ljava/util/concurrent/Executor;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lkwl;->a:Ltxm;

    nop

    goto/32 :goto_3d

    nop

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

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_1a
    new-instance v2, Lkwi;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1b
    invoke-direct {v0, p0, v7, v4}, Lkwj;-><init>(Limf;Loxv;I)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p0, Lkwl;->e:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v8, v2}, Lqas;->g(Lmmw;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance v7, Loxv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1f
    check-cast v3, Lows;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_20
    check-cast v2, Lmnh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_21
    invoke-virtual {v0, v7}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v0

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

    :goto_22
    invoke-virtual {v8, v2}, Lqas;->e(Ljava/lang/Runnable;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    return-object v0

    nop

    :goto_24
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_24

    nop

    :goto_26
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {v2, v5, v6, v9}, Lkwi;-><init>(Ljava/lang/Object;II)V

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_28
    new-instance v5, Lknr;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_29
    invoke-virtual {v8, v2}, Lqas;->f(Ljava/lang/Runnable;)V

    goto/32 :goto_2c

    nop

    nop

    :goto_2a
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2b
    invoke-virtual {v0, v4}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2c
    new-instance v2, Lkwi;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    sget-object v5, Lhne;->g:Lhmo;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_2f
    invoke-direct {v8}, Lqas;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v2}, Lmnh;->b()Lmmw;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_31
    check-cast v5, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v5}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

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

    :goto_33
    invoke-virtual {v3, v0}, Lows;->d(Lpci;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-interface {v1, v0}, Lmmx;->f(Lmmv;)Lpci;

    move-result-object v0

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

    :goto_35
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_36
    check-cast p0, Limf;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_37
    check-cast v0, Lhoh;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    :goto_39
    invoke-interface {v3}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_3b
    sget-object v9, Lcom/google/android/apps/camera/backup/iI/oRSsAde;->HHluPORGYYWQmuz:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-interface {v1}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3d
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_3e
    iget-object v1, p0, Lkwl;->b:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_3f
    const v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_40
    invoke-virtual {v8, v9}, Lqas;->d(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method
