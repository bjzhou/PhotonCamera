.class final Lhvs;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkqg;


# instance fields
.field final synthetic a:Lhvu;

.field final synthetic b:Lhwy;


# direct methods
.method public constructor <init>(Lhvu;Lhwy;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lhvs;->a:Lhvu;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lhvs;->b:Lhwy;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lsui;
    .locals 8

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lhvs;->b:Lhwy;

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

    :goto_1
    iget-object v0, v0, Lhwy;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-boolean v6, v0, Lhvu;->e:Z

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

    :goto_4
    invoke-direct/range {v1 .. v6}, Lhvt;-><init>(JLhwy;IZ)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget v5, v0, Lhvu;->b:I

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_19

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_8
    iget-object v4, p0, Lhvs;->b:Lhwy;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lhvs;->a:Lhvu;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_a
    new-instance v0, Lsuj;

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

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

    :goto_c
    move-object v1, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    invoke-interface {v0}, Lprw;->f()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lhvs;->a:Lhvu;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_11
    iget-wide v2, v0, Lhvu;->d:J

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0xb

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

    :goto_13
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    :goto_15
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    :goto_17
    invoke-direct {v0, v7}, Lsuj;-><init>(Ljava/util/concurrent/Callable;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_19
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    throw p0

    nop

    nop

    :goto_1b
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_2
    :try_start_0
    sget-object v1, Lhvu;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    nop

    const/16 v2, 0x4f2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Lscz;

    nop

    nop

    nop

    const-string v2, "Using CPU processing on an image having a HardwareBuffer?"

    nop

    nop

    invoke-interface {v1, v2}, Lscz;->s(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object p0, p0, Lhvu;->c:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1f
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_22
    new-instance v7, Lhvt;

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

    :goto_23
    goto :goto_1b

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()Lsui;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lhwh;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lhvs;->b:Lhwy;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, p0}, Lhwh;-><init>(Lprw;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lhwy;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method
