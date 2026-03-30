.class public Lhiw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpqs;
.implements Lmeh;
.implements Lmee;


# static fields
.field public static final a:Lsdb;

.field public static final b:J


# instance fields
.field public final c:Lrss;

.field public final d:Lhiy;

.field public final e:Loyd;

.field public f:Lrss;

.field public g:Lrss;

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Lrss;

.field public l:J

.field public m:Z

.field public final n:Lhjh;

.field public final o:Llad;

.field private final p:Ljava/util/concurrent/ScheduledExecutorService;

.field private final q:Loyn;

.field private r:Lrss;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-wide/16 v1, 0x1

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

    :goto_1
    goto/32 :goto_5

    nop

    :goto_2
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

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

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    div-double/2addr v0, v2

    nop

    goto/32 :goto_9

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

    goto/32 :goto_14

    nop

    nop

    :goto_8
    const v0, 0x16

    nop

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

    nop

    :goto_9
    double-to-long v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    long-to-double v0, v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string v0, "hiw"

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_f
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

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

    :goto_10
    sput-wide v0, Lhiw;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_11
    sput-object v0, Lhiw;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lrss;Lhiy;Llad;Loyn;Ljava/util/concurrent/ScheduledExecutorService;Lmjv;Loyd;)V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x4

    nop

    goto/32 :goto_1b

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

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_6
    iput-object p1, p0, Lhiw;->c:Lrss;

    nop

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

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_9
    iput-boolean v0, p0, Lhiw;->h:Z

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

    :goto_a
    const/4 p2, 0x3

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p4, p0, Lhiw;->q:Loyn;

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

    :goto_c
    new-instance p1, Lhjh;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_2

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_f
    sget-object v1, Lrsa;->a:Lrsa;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object p2, p0, Lhiw;->d:Lhiy;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-object p3, p0, Lhiw;->o:Llad;

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

    nop

    :goto_12
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_13
    iput-boolean v0, p0, Lhiw;->m:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_14
    iput-boolean v0, p0, Lhiw;->i:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-boolean v0, p0, Lhiw;->j:Z

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

    :goto_16
    iput-object v1, p0, Lhiw;->r:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_17
    invoke-direct {p1, p2, p6}, Lhjh;-><init>(ILmjv;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-object p1, p0, Lhiw;->n:Lhjh;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-object p5, p0, Lhiw;->p:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object p7, p0, Lhiw;->e:Loyd;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1b
    const v1, 0x14

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object v1, p0, Lhiw;->k:Lrss;

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
.end method


# virtual methods
.method public final a(Lpcg;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    new-instance p1, Lhhs;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/16 v0, 0x13

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

    :goto_3
    invoke-direct {p1, p0, v0}, Lhhs;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_5

    nop

    nop

    :goto_4
    invoke-interface {p0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lhiw;->p:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final declared-synchronized b()V
    .locals 4

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

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

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iput-boolean v0, p0, Lhiw;->i:Z

    nop

    iput-boolean v0, p0, Lhiw;->j:Z

    nop

    nop

    nop

    iget-boolean v1, p0, Lhiw;->h:Z

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    iget-object v1, p0, Lhiw;->f:Lrss;

    nop

    check-cast v1, Lrsx;

    nop

    nop

    iget-object v1, v1, Lrsx;->a:Ljava/lang/Object;

    nop

    nop

    move-object v2, v1

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lhii;

    nop

    nop

    nop

    iget-object v2, v2, Lhii;->d:Lrss;

    nop

    invoke-virtual {v2}, Lrss;->h()Z

    move-result v2

    nop

    if-eqz v2, :cond_1

    nop

    nop

    nop

    check-cast v1, Lhii;

    nop

    iget-object v1, v1, Lhii;->d:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    move-object v2, v1

    nop

    check-cast v2, Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->b:Lrss;

    nop

    nop

    nop

    invoke-virtual {v2}, Lrss;->h()Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    new-instance v2, Lhhs;

    nop

    const/16 v3, 0xf

    nop

    nop

    nop

    nop

    invoke-direct {v2, v1, v3}, Lhhs;-><init>(Ljava/lang/Object;I)V

    check-cast v1, Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v1, p0, Lhiw;->g:Lrss;

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lrsx;

    nop

    iget-object v1, v1, Lrsx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lixg;->e:Lixg;

    nop

    check-cast v1, Lixe;

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lixe;->h(Lixg;)V

    iput-boolean v0, p0, Lhiw;->h:Z

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    :goto_6
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    throw v0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x13

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

    nop

    nop

    :goto_e
    monitor-enter p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_f
    const v1, 0x20

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final dW()V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0, v1}, Lhiv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    const v0, 0x11

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Lhiv;

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

    nop

    :goto_9
    iget-object p0, p0, Lhiw;->p:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, v0}, Lhiw;->i(Z)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    invoke-interface {p0, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x0

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

    :goto_10
    const v1, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final dX(Lmel;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final dY()V
    .locals 2

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_f

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Lhiw;->i(Z)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_4
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

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, p0, v1}, Lhiv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Lhiv;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x1e

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p0, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lhiw;->p:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

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

    :goto_e
    return-void

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method

.method public final e()V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    sget-object v0, Lsmm;->c:Lsmm;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lhiw;->n:Lhjh;

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

    :goto_5
    iget-boolean v0, p0, Lhiw;->j:Z

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-boolean v0, p0, Lhiw;->h:Z

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v0, Lsmm;->b:Lsmm;

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

    :goto_a
    invoke-virtual {p0, v0}, Lhjh;->c(Lsmm;)V

    :goto_b
    goto/32 :goto_2

    nop

    nop

    :goto_c
    invoke-virtual {p0, v0}, Lhjh;->c(Lsmm;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method final declared-synchronized f()V
    .locals 5

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x5

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

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_7
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-static {v0}, Lrrf;->x(Z)V

    iget-object v0, p0, Lhiw;->r:Lrss;

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lhiw;->r:Lrss;

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Lows;

    nop

    nop

    invoke-virtual {v0}, Lows;->close()V

    :cond_1
    new-instance v0, Lows;

    nop

    nop

    invoke-direct {v0}, Lows;-><init>()V

    iget-object v1, p0, Lhiw;->f:Lrss;

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lrsx;

    nop

    nop

    iget-object v1, v1, Lrsx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Lhhs;

    nop

    nop

    nop

    nop

    const/16 v2, 0x14

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, p0, v2}, Lhhs;-><init>(Ljava/lang/Object;I)V

    iget-object v3, p0, Lhiw;->p:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v3}, Lhii;->f(Ljava/lang/Runnable;Ljava/util/concurrent/ScheduledExecutorService;)Lpci;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lows;->d(Lpci;)V

    iget-object v1, p0, Lhiw;->q:Loyn;

    nop

    new-instance v3, Lhih;

    nop

    nop

    nop

    const/4 v4, 0x3

    nop

    nop

    nop

    nop

    invoke-direct {v3, p0, v4}, Lhih;-><init>(Ljava/lang/Object;I)V

    iget-object v4, p0, Lhiw;->p:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    invoke-interface {v1, v3, v4}, Loyn;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v1

    nop

    nop

    invoke-virtual {v0, v1}, Lows;->d(Lpci;)V

    iget-object v1, p0, Lhiw;->e:Loyd;

    nop

    nop

    nop

    new-instance v3, Lhih;

    nop

    nop

    const/4 v4, 0x4

    nop

    nop

    nop

    nop

    invoke-direct {v3, p0, v4}, Lhih;-><init>(Ljava/lang/Object;I)V

    iget-object v4, p0, Lhiw;->p:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    invoke-interface {v1, v3, v4}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v1

    nop

    invoke-virtual {v0, v1}, Lows;->d(Lpci;)V

    iget-object v1, p0, Lhiw;->o:Llad;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p0}, Llad;->c(Lpqs;)V

    new-instance v1, Lgnw;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, p0, v2}, Lgnw;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lows;->d(Lpci;)V

    iget-object v1, p0, Lhiw;->n:Lhjh;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lhjh;->a()V

    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    iput-object v0, p0, Lhiw;->r:Lrss;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lhiw;->d:Lhiy;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lhiy;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    throw v0

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    const v0, 0x15

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

    :goto_b
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_c
    monitor-enter p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final i(Z)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lhiw;->b()V

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean p1, p0, Lhiw;->m:Z

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop
.end method

.method public final declared-synchronized j()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    throw v0

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    :try_start_0
    invoke-virtual {p0}, Lhiw;->b()V

    iget-object v0, p0, Lhiw;->r:Lrss;

    nop

    nop

    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lhiw;->r:Lrss;

    nop

    nop

    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Lows;

    nop

    nop

    nop

    invoke-virtual {v0}, Lows;->close()V

    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    iput-object v0, p0, Lhiw;->r:Lrss;

    nop

    nop

    :cond_0
    iget-object v0, p0, Lhiw;->n:Lhjh;

    nop

    nop

    invoke-virtual {v0}, Lhjh;->b()V

    iget-object v0, p0, Lhiw;->d:Lhiy;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lhiy;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

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

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method
