.class public final synthetic Lmmf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Loyd;

.field public final synthetic b:Ltud;

.field public final synthetic c:Lijo;

.field public final synthetic d:Loyd;

.field public final synthetic e:Loyd;

.field public final synthetic f:Loyd;

.field public final synthetic g:Ljava/util/function/Predicate;

.field public final synthetic h:Loyn;


# direct methods
.method public synthetic constructor <init>(Loyd;Ltud;Lijo;Loyd;Loyd;Loyd;Ljava/util/function/Predicate;Loyn;)V
    .locals 0

    goto/32 :goto_8

    nop

    nop

    :goto_0
    iput-object p7, p0, Lmmf;->g:Ljava/util/function/Predicate;

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
    iput-object p4, p0, Lmmf;->d:Loyd;

    nop

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

    :goto_2
    iput-object p8, p0, Lmmf;->h:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p6, p0, Lmmf;->f:Loyd;

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

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lmmf;->a:Loyd;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    iput-object p2, p0, Lmmf;->b:Ltud;

    nop

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

    :goto_7
    iput-object p5, p0, Lmmf;->e:Loyd;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p3, p0, Lmmf;->c:Lijo;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v3}, Lijo;->f()Loyd;

    move-result-object v3

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_1
    invoke-interface {v3}, Ltud;->a()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v4, 0x1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5
    iget-object v5, p0, Lmmf;->e:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_6
    invoke-interface {p0, v2, p1}, Loyn;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_7
    aput-object v4, v2, v3

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

    :goto_8
    iget-object v3, p0, Lmmf;->c:Lijo;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v4, 0x3

    nop

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

    nop

    :goto_a
    new-array v2, v1, [Loyd;

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

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1f

    nop

    nop

    :goto_d
    invoke-direct {v2, p1, v1}, Lmdt;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_2c

    nop

    nop

    :goto_e
    const/4 v4, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    aput-object v5, v2, v4

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    aput-object v3, v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_11
    iget-object v5, p0, Lmmf;->d:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_12
    iget-object v3, v3, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->j:Loyn;

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

    :goto_13
    iget-object v5, p0, Lmmf;->f:Loyd;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_14
    iget-object v3, p0, Lmmf;->b:Ltud;

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

    :goto_15
    const/4 v4, 0x2

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p1, Lkyf;->M:Lows;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_17
    check-cast v3, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_18
    sget-object v4, Lstd;->a:Lstd;

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

    nop

    :goto_19
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v4, 0x6

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v2}, Loyi;->a([Loyd;)Loyd;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    aput-object v5, v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1f
    check-cast p1, Lkyf;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_20
    const/4 v4, 0x5

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_21
    const v0, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_c

    nop

    nop

    :goto_23
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_24
    invoke-interface {v2, v3, v4}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v2

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object p0, p0, Lmmf;->h:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_26
    invoke-virtual {v0, p0}, Lows;->d(Lpci;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v0, v2}, Lows;->d(Lpci;)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v5, v3, Lijo;->b:Loyd;

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

    nop

    :goto_29
    new-instance v3, Lliy;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-direct {v3, v4, p1, v5, v6}, Lliy;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    aput-object v5, v2, v4

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    sget-object p1, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v1, 0x7

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v4, p0, Lmmf;->g:Ljava/util/function/Predicate;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/16 v5, 0xf

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v4, p0, Lmmf;->a:Loyd;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_31
    new-instance v2, Lmdt;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_32
    aput-object v3, v2, v4

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_33
    iget-object v0, p1, Lkyf;->M:Lows;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_34
    aput-object v5, v2, v4

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_35
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_36
    const v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method
