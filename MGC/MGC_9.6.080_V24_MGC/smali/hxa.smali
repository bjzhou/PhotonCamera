.class public final Lhxa;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkqg;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Lhxb;Lhwy;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iput-object p2, p0, Lhxa;->a:Ljava/lang/Object;

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

    :goto_3
    iput p3, p0, Lhxa;->c:I

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

    :goto_4
    iput-object p1, p0, Lhxa;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lhxa;->a:Ljava/lang/Object;

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

    :goto_1
    iput-object p2, p0, Lhxa;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p3, p0, Lhxa;->c:I

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput p3, p0, Lhxa;->c:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lhxa;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lhxa;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop
.end method


# virtual methods
.method public final a()Lsui;
    .locals 3

    goto/32 :goto_3f

    nop

    nop

    :goto_0
    goto/16 :goto_44

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, v0, Lhwy;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lsuu;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Lsuu;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lhxa;->a:Ljava/lang/Object;

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

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-boolean v0, v0, Lhxb;->c:Z

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lios;->h:Liot;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v0, Lhxb;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_b
    return-object p0

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lhxb;->b:Lpdf;

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_11
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_12
    new-instance v0, Lesh;

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Lhxa;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Lhwj;->a:Ljava/util/concurrent/Executor;

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

    :goto_15
    iget v0, p0, Lhxa;->c:I

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_17
    check-cast v0, Lhxb;

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

    :goto_18
    iget-object p0, p0, Liot;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-ne v0, v2, :cond_2

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

    :cond_2
    :try_start_0
    iget-object v0, p0, Lhxa;->b:Ljava/lang/Object;

    nop

    nop

    iget-object p0, p0, Lhxa;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_47

    nop

    nop

    :goto_1a
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance v1, Lior;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v1, p0, v0}, Lior;-><init>(Lhxa;Lsuu;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Lhxa;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_21
    const/16 v2, 0xe19

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_22
    if-ne v0, v1, :cond_4

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {}, Lsgj;->M()Lsui;

    move-result-object p0

    nop

    nop

    :goto_24
    goto/32 :goto_b

    nop

    nop

    :goto_25
    const/4 v2, 0x2

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

    :goto_26
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_27
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_28
    const/16 v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_29
    iget-object v0, p0, Lhxa;->b:Ljava/lang/Object;

    nop

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

    nop

    :goto_2a
    check-cast p0, Lhxb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2b
    check-cast p0, Lhwj;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2c
    invoke-interface {v0, v2, v1}, Lpdf;->c(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

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

    :goto_2d
    invoke-direct {v0, p0, v1}, Lesh;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_3b

    nop

    nop

    :goto_2e
    invoke-direct {v1, v0}, Lsuj;-><init>(Ljava/util/concurrent/Callable;)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-boolean v0, v0, Lhxb;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_30
    iget-object p0, p0, Lhxb;->a:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_31
    return-object v1

    nop

    :goto_32
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const v1, 0x8

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    return-object v0

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-direct {v1, v0}, Lsuj;-><init>(Ljava/util/concurrent/Callable;)V

    goto/32 :goto_5

    nop

    nop

    :goto_38
    invoke-direct {v0, p0, v1}, Lesh;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_39
    new-instance v1, Lsuj;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v0, p0, Lhxa;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    new-instance v1, Lsuj;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    sget-object v0, Llfn;->a:Lsdb;

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

    :goto_3d
    new-instance v0, Lesh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_3e
    check-cast v0, Lhwy;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const v0, 0xf

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static {v1, v2, v0, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_41
    const-string v2, "Deeprestore-RGB"

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_42
    iget-object p0, p0, Lhxa;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object v1

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_e

    nop

    nop

    :goto_46
    const-string v1, "Error executing task."

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_47
    goto/16 :goto_24

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_48
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_49
    check-cast p0, Lios;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4a
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_4b
    const/16 v1, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop
.end method

.method public final b()Lsui;
    .locals 2

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    :goto_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

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

    :goto_5
    invoke-direct {v0, p0}, Lhwh;-><init>(Lprw;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    if-ne v0, p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_0
    goto/32 :goto_21

    nop

    nop

    :goto_7
    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Lhwh;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget v0, p0, Lhxa;->c:I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance p0, Lpfi;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    :goto_f
    check-cast p0, Lhwy;

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

    nop

    :goto_10
    const/4 p0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0}, Lpfi;-><init>()V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_12
    return-object p0

    nop

    nop

    :goto_13
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Lhxa;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_16
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1

    nop

    :goto_18
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_19
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_14

    nop

    nop

    :goto_1b
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1c
    return-object p0

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object p0, p0, Lhwy;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v0, 0x7

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_21
    invoke-static {}, Lsgj;->M()Lsui;

    move-result-object p0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {p0}, Lsgj;->N(Ljava/lang/Throwable;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop
.end method
