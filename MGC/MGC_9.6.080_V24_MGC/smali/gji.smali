.class public final Lgji;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltun;


# instance fields
.field private final a:Ltxm;

.field private final b:Ltxm;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Ltxm;Ltxm;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lgji;->b:Ltxm;

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
    return-void

    nop

    :goto_2
    iput p3, p0, Lgji;->c:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lgji;->a:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ltxm;Ltxm;I[B)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lgji;->b:Ltxm;

    nop

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

    :goto_2
    iput-object p2, p0, Lgji;->a:Ltxm;

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

    :goto_3
    iput p3, p0, Lgji;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 2

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2
    iget v0, p0, Lgji;->c:I

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

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_4
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lgji;->b()Ljava/util/concurrent/Executor;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lgji;->b()Ljava/util/concurrent/Executor;

    move-result-object p0

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

    :goto_7
    return-object p0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_1

    nop

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

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lgji;->b()Ljava/util/concurrent/Executor;

    move-result-object p0

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

    :goto_11
    return-object p0

    nop

    :goto_12
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-ne v0, v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Lgji;->b()Ljava/util/concurrent/Executor;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_15
    const v0, 0xc

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_16
    if-ne v0, v1, :cond_3

    nop

    goto/32 :goto_12

    nop

    :cond_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_18

    nop

    nop

    nop
.end method

.method public final b()Ljava/util/concurrent/Executor;
    .locals 5

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    :goto_2
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v3}, Loxb;->a()Loxc;

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

    :goto_4
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_5
    new-instance v1, Lowy;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {}, Loxc;->a()Loxb;

    move-result-object v3

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

    :goto_7
    invoke-direct {v2, v1}, Lowy;-><init>(Ljava/util/concurrent/Executor;)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast p0, Lrkg;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v3, v4}, Loxb;->b(I)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop

    nop

    :goto_b
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lgji;->a:Ltxm;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_d
    if-ne v0, v2, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string v4, "FireflyProcMgr"

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v1}, Lolx;->ba(Loxc;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

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

    :goto_10
    return-object v0

    nop

    nop

    :goto_11
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string v2, "CameraFatalErrorTracker"

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lgji;->a:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, p0}, Lgvb;->g(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_17
    iget-object p0, p0, Lgji;->a:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_18
    check-cast p0, Lpcs;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_19
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

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

    :goto_1a
    goto/32 :goto_14

    nop

    :goto_1b
    new-instance v1, Lldq;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lgji;->b:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1d
    iget-object p0, p0, Lgji;->b:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_32

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Lpcs;->b()Lpcu;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    check-cast p0, Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_22
    if-ne v0, v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_2
    goto/32 :goto_35

    nop

    nop

    :goto_23
    const/16 v4, 0xa

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_24
    iget v0, p0, Lgji;->c:I

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_25
    new-instance v0, Lheg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {v0, p0, v1}, Lheg;-><init>(Lpcu;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_27
    check-cast v0, Lgvb;

    nop

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

    :goto_28
    invoke-direct {v1, v2}, Lowy;-><init>(Ljava/util/concurrent/Executor;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {v2}, Lolx;->bc(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v3, v1}, Loxb;->c(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast v0, Lgjp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2d
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

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

    :goto_2e
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object p0, p0, Lgji;->b:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_30
    invoke-direct {v1, v0, v3}, Lldq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v0, p0, Lgji;->a:Ltxm;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const v1, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_34
    check-cast v0, Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_35
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_36
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_37
    check-cast v0, Lhoh;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_3
    goto/32 :goto_13

    nop

    :goto_39
    return-object p0

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iput-object v4, v3, Loxb;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_3c
    new-instance v2, Lowy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3d
    iget-object v0, p0, Lgji;->b:Ltxm;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const/4 v3, 0x3

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_40
    const v0, 0xc

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p0, v0}, Lrkg;->c(Ljava/util/concurrent/Executor;)Lgiy;

    move-result-object p0

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

    :goto_42
    check-cast p0, Lrkg;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_43
    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p0, v2}, Lrkg;->c(Ljava/util/concurrent/Executor;)Lgiy;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_45
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop
.end method
