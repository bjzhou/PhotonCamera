.class public final Ljsk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljsj;


# static fields
.field public static final a:Lryy;


# instance fields
.field public final b:Llfr;

.field private final c:Loyn;

.field private final d:Lkvy;

.field private final e:Loyd;

.field private final f:Loyn;

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private h:Z

.field private final i:Lfwv;

.field private final j:Lhoh;

.field private k:Landroidx/wear/ambient/AmbientMode$AmbientController;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v4, Lnne;->q:Lnne;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0, v1, v2, v3, v4}, Lryy;->J(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryy;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    sget-object v2, Lnne;->k:Lnne;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Ljsk;->a:Lryy;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    :goto_6
    const v0, 0x1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v3, Lnne;->p:Lnne;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

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

    :goto_e
    sget-object v0, Lnne;->b:Lnne;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x10

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    sget-object v1, Lnne;->g:Lnne;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public constructor <init>(Lfwv;Llfr;Lhoh;Lkvy;Loyn;Loyd;Loyn;)V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_3
    iput-object p4, p0, Ljsk;->d:Lkvy;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Ljsk;->i:Lfwv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Ljsk;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x0

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

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_6

    nop

    nop

    :goto_e
    iput-object p7, p0, Ljsk;->f:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    iput-object p5, p0, Ljsk;->c:Loyn;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

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

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_12
    iput-object p2, p0, Ljsk;->b:Llfr;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-object p6, p0, Ljsk;->e:Loyd;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_15
    iput-object p3, p0, Ljsk;->j:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 7

    goto/32 :goto_a

    nop

    nop

    :goto_0
    iget-object v2, p0, Ljsk;->i:Lfwv;

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Lfwv;->i()Lows;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    :goto_5
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_1
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1, v2, v0}, Llfr;->k(Lfwv;Loyd;)V

    goto/32 :goto_22

    nop

    nop

    :goto_7
    invoke-direct {v2, p0, v3}, Ljrt;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_9
    sget-object p0, Lstd;->a:Lstd;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_a
    const v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v2, p0, Ljsk;->c:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_c
    aput-object v2, v5, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    aput-object v3, v5, v6

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Ljsk;->j:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    invoke-direct {v2, v0, v3}, Limd;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_11
    const/16 v3, 0xd

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v4, p0, Ljsk;->e:Loyd;

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

    nop

    :goto_13
    const v1, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_14
    new-instance v2, Limd;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_15
    aput-object v4, v5, v1

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_16
    const/4 v3, 0x5

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v1, v2}, Loyi;->h(Loyd;Lrsk;)Loyd;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, p0}, Lows;->d(Lpci;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_19
    new-instance v2, Ljrt;

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

    :goto_1a
    goto/32 :goto_2

    nop

    :goto_1b
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Ljsk;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_1d
    invoke-interface {v1, v2, p0}, Loyn;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v1, p0, Ljsk;->f:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_20
    iget-object v1, p0, Ljsk;->b:Llfr;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_21
    invoke-static {v5}, Loyi;->a([Loyd;)Loyd;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_22
    iget-object v0, p0, Ljsk;->i:Lfwv;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    return-void

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

    :goto_25
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v5, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_28
    new-array v5, v5, [Loyd;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v3, p0, Ljsk;->d:Lkvy;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop
.end method

.method public final b(Z)V
    .locals 3

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, v2}, Lfwd;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    :goto_4
    check-cast v1, Loxv;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v1, :cond_1

    nop

    nop

    goto/32 :goto_26

    nop

    :cond_1
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_6
    check-cast v1, Loxv;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v0, v1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v1, v1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_b
    if-eqz v1, :cond_2

    nop

    nop

    goto/32 :goto_26

    nop

    :cond_2
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v1, Lfwd;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, v0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_10
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_3
    goto/32 :goto_32

    nop

    :goto_11
    iget-object v1, v0, Lfwe;->a:Loyn;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_12
    sget-object v1, Lfwd;->b:Lfwd;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v1, v1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_14
    check-cast v1, Loxv;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_15
    iput-boolean p1, p0, Ljsk;->h:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_18
    sget-object v2, Lfwd;->e:Lfwd;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_19
    check-cast v1, Lfwd;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_1a
    check-cast v0, Lfwe;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1b
    iget-boolean v0, p0, Ljsk;->h:Z

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_1c
    check-cast v1, Lfwd;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast v1, Lfwd;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1e
    if-eqz v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    :cond_4
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-eqz v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_20
    iget-object v1, v1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Ljsk;->k:Landroidx/wear/ambient/AmbientMode$AmbientController;

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

    :goto_22
    check-cast v1, Loxv;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    sget-object v2, Lfwd;->d:Lfwd;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v1, v0, Lfwe;->a:Loyn;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {v0, v1}, Loyn;->a(Ljava/lang/Object;)V

    :goto_26
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_27
    sget-object v2, Lfwd;->g:Lfwd;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v1, v1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_29
    invoke-virtual {v1, v2}, Lfwd;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez p1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2d

    nop

    nop

    :goto_2b
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

    nop

    nop

    :goto_2c
    sget-object v1, Lfwd;->e:Lfwd;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2d
    check-cast v0, Lfwe;

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

    nop

    :goto_2e
    const v0, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v1, v0, Lfwe;->a:Loyn;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v0, v0, Lfwe;->a:Loyn;

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

    :goto_31
    iget-object v1, v0, Lfwe;->a:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_3

    nop

    :goto_33
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v1, v2}, Lfwd;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_35
    if-eq v0, p1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_7
    goto/32 :goto_7

    nop

    nop

    :goto_36
    invoke-virtual {v1, v2}, Lfwd;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_37
    add-int v0, v0, v1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_38
    iget-object v0, v0, Lfwe;->a:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    sget-object v2, Lfwd;->b:Lfwd;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop
.end method

.method public final c()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean p0, p0, Ljsk;->h:Z

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

    :goto_1
    return p0

    nop

    nop

    nop
.end method

.method public final d(Landroidx/wear/ambient/AmbientMode$AmbientController;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Ljsk;->k:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method
