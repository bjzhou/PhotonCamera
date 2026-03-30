.class public final Lphs;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lpig;

.field public final b:Lpcu;

.field public c:Lpgd;

.field public d:Z

.field public e:Z

.field public f:Z

.field private final g:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lpig;Ljava/util/concurrent/Executor;Lpcu;)V
    .locals 9

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_1
    iput-object p2, p0, Lphs;->g:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    move-object v0, p1

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_4
    iput-boolean p1, p0, Lphs;->e:Z

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

    :goto_5
    move-object v2, v5

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p3, p1}, Lpcu;->a(Ljava/lang/String;)Lpcu;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    sget-object v5, Lphr;->a:Ljava/lang/Integer;

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

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_9
    move-object v4, v5

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p1, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p1, p0, Lphs;->a:Lpig;

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

    :goto_c
    iput-object p1, p0, Lphs;->b:Lpcu;

    nop

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

    :goto_d
    invoke-direct {p2, p1}, Lphq;-><init>(Lphr;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_10
    move-object v6, v8

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_11
    const v1, 0x4

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_f

    nop

    :goto_13
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_14
    new-instance p2, Lphq;

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

    :goto_15
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_16
    iput-object p2, p0, Lphs;->c:Lpgd;

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

    :goto_17
    move-object v7, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_18
    sget-object v8, Lphr;->b:[Landroid/hardware/camera2/params/MeteringRectangle;

    nop

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

    nop

    :goto_19
    invoke-direct/range {v0 .. v8}, Lphr;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const-string p1, "FS3aUpdater"

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_13

    nop

    nop

    :goto_1c
    const v0, 0x3

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    move-object v3, v5

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance p1, Lphr;

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

    :goto_1f
    move-object v1, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lpgd;Z)V
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lphs;->c:Lpgd;

    nop

    nop

    invoke-static {v0}, Lpjp;->a(Lpgd;)Lpjp;

    move-result-object v0

    nop

    invoke-interface {p1}, Lpgd;->d()Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    sget-object v2, Lphr;->a:Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_0

    nop

    invoke-interface {p1}, Lpgd;->d()Ljava/lang/Integer;

    move-result-object v1

    nop

    iput-object v1, v0, Lpjp;->a:Ljava/lang/Integer;

    nop

    :cond_0
    invoke-interface {p1}, Lpgd;->b()Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    sget-object v2, Lphr;->a:Ljava/lang/Integer;

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Lpgd;->b()Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    iput-object v1, v0, Lpjp;->b:Ljava/lang/Integer;

    nop

    :cond_1
    invoke-interface {p1}, Lpgd;->a()Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lphr;->a:Ljava/lang/Integer;

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    if-nez v1, :cond_2

    nop

    invoke-interface {p1}, Lpgd;->a()Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    iput-object v1, v0, Lpjp;->c:Ljava/lang/Integer;

    nop

    nop

    :cond_2
    invoke-interface {p1}, Lpgd;->c()Ljava/lang/Integer;

    move-result-object v1

    nop

    sget-object v2, Lphr;->a:Ljava/lang/Integer;

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Lpgd;->c()Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    iput-object v1, v0, Lpjp;->d:Ljava/lang/Integer;

    nop

    :cond_3
    invoke-interface {p1}, Lpgd;->e()Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lphr;->a:Ljava/lang/Integer;

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_4

    nop

    nop

    invoke-interface {p1}, Lpgd;->e()Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    iput-object v1, v0, Lpjp;->e:Ljava/lang/Integer;

    nop

    nop

    :cond_4
    invoke-interface {p1}, Lpgd;->g()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    nop

    nop

    nop

    sget-object v2, Lphr;->b:[Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    nop

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Lpgd;->g()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    iput-object v1, v0, Lpjp;->i:[Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    nop

    nop

    :cond_5
    invoke-interface {p1}, Lpgd;->f()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lphr;->b:[Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    if-nez v1, :cond_6

    nop

    nop

    nop

    invoke-interface {p1}, Lpgd;->f()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    iput-object v1, v0, Lpjp;->j:[Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    nop

    nop

    nop

    nop

    :cond_6
    invoke-interface {p1}, Lpgd;->h()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    nop

    nop

    nop

    nop

    sget-object v2, Lphr;->b:[Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    nop

    nop

    nop

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    if-nez v1, :cond_7

    nop

    nop

    invoke-interface {p1}, Lpgd;->h()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    nop

    nop

    nop

    nop

    iput-object p1, v0, Lpjp;->k:[Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    nop

    nop

    nop

    :cond_7
    invoke-virtual {v0}, Lpjp;->c()Lpjq;

    move-result-object p1

    nop

    iput-object p1, p0, Lphs;->c:Lpgd;

    nop

    iget-boolean p1, p0, Lphs;->e:Z

    nop

    or-int/2addr p1, p2

    nop

    nop

    nop

    nop

    nop

    iput-boolean p1, p0, Lphs;->e:Z

    nop

    nop

    nop

    nop

    iget-boolean p1, p0, Lphs;->f:Z

    nop

    nop

    nop

    nop

    nop

    const/4 p2, 0x1

    nop

    nop

    nop

    if-eqz p1, :cond_8

    nop

    nop

    iput-boolean p2, p0, Lphs;->d:Z

    nop

    nop

    monitor-exit p0

    nop

    return-void

    nop

    nop

    nop

    :cond_8
    iput-boolean p2, p0, Lphs;->f:Z

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lphs;->g:Ljava/util/concurrent/Executor;

    nop

    new-instance p2, Lpam;

    nop

    nop

    nop

    nop

    nop

    const/16 v0, 0x11

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p2, p0, v0}, Lpam;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_d

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    monitor-exit p0

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_4

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    throw p1

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0, p1}, Lpcu;->b(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lphs;->b:Lpcu;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    const-string p1, "Task to update 3A rejected by the executor."

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b
    const v0, 0x2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method
