.class public Ljfn;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Ljava/util/List;

.field public c:Z

.field public final d:Lhwy;

.field private final e:I

.field private final f:Ljava/util/List;

.field private g:Ljfm;

.field private h:Lljr;

.field private i:Lsuu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    sput-object v0, Ljfn;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    const-string v0, "jfn"

    nop

    goto/32 :goto_1

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
.end method

.method public constructor <init>(Lhwy;I)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Ljfn;->e:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean v0, p0, Ljfn;->c:Z

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Ljfn;->d:Lhwy;

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

    nop

    :goto_5
    new-instance v0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Ljfn;->b:Ljava/util/List;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    iput-object v0, p0, Ljfn;->f:Ljava/util/List;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_6

    nop

    nop

    :goto_b
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a()Lsui;
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iput-boolean v0, p0, Ljfn;->c:Z

    nop

    nop

    nop

    nop

    nop

    new-instance v0, Lsuu;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Lsuu;-><init>()V

    iput-object v0, p0, Ljfn;->i:Lsuu;

    nop

    new-instance v1, Ljfm;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, p0, v0}, Ljfm;-><init>(Ljfn;Lsuu;)V

    iput-object v1, p0, Ljfn;->g:Ljfm;

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    return-object v0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    monitor-exit p0

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

    :goto_7
    goto/32 :goto_c

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    monitor-enter p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_b
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized b()V
    .locals 4

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    goto/32 :goto_5

    nop

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

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    :goto_4
    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    :try_start_1
    iput-boolean v0, p0, Ljfn;->c:Z

    nop

    nop

    nop

    nop

    iget-object v1, p0, Ljfn;->i:Lsuu;

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    invoke-virtual {v1, v0}, Lsuu;->e(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Ljfn;->b:Ljava/util/List;

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    if-nez v0, :cond_2

    nop

    nop

    iget-object v0, p0, Ljfn;->b:Ljava/util/List;

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Ltcv;

    nop

    iget-object v2, v1, Ltcv;->b:Lcom/google/googlex/gcam/FrameMetadata;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lcom/google/googlex/gcam/FrameMetadata;->d()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    nop

    nop

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    const-string v3, "Closing cached filtered frame %s."

    nop

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v1, v1, Ltcv;->d:Ljava/lang/Runnable;

    nop

    nop

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_6

    nop

    :cond_2
    iget-object v0, p0, Ljfn;->f:Ljava/util/List;

    nop

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    if-eqz v1, :cond_3

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lpge;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lpge;->b()Lpgi;

    move-result-object v2

    nop

    nop

    nop

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    nop

    const-string v3, "Closing unfiltered frame %s."

    nop

    nop

    nop

    nop

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-interface {v1}, Lpge;->close()V

    goto :goto_7

    nop

    nop

    :cond_3
    iget-object v0, p0, Ljfn;->f:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Ljfn;->g:Ljfm;

    nop

    nop

    if-eqz v0, :cond_4

    nop

    const/4 v1, 0x0

    nop

    iput-object v1, v0, Ljfm;->b:Ljfx;

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_9
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    :goto_c
    const v0, 0x3

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

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

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    throw v0

    nop

    nop

    :goto_11
    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized c(FFJ)V
    .locals 8

    goto/32 :goto_9

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_1
    goto/32 :goto_7

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x1d

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x2

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

    :goto_a
    throw p1

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    monitor-enter p0

    nop

    nop

    :try_start_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    nop

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    nop

    nop

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    nop

    nop

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    nop

    const-string v1, "Capturing PSL frames for %s seconds at %s fps starting at %s"

    nop

    nop

    nop

    nop

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-instance v0, Lljr;

    nop

    iget-object v7, p0, Ljfn;->g:Ljfm;

    nop

    nop

    nop

    nop

    move-object v2, v0

    nop

    nop

    nop

    nop

    nop

    move-wide v3, p3

    nop

    nop

    nop

    nop

    move v5, p1

    nop

    nop

    nop

    nop

    move v6, p2

    nop

    nop

    invoke-direct/range {v2 .. v7}, Lljr;-><init>(JFFLjfm;)V

    iput-object v0, p0, Ljfn;->h:Lljr;

    nop

    iget-object p1, p0, Ljfn;->f:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    nop

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    const-string p2, "Filtering %s cached frames"

    nop

    nop

    nop

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object p1, p0, Ljfn;->f:Ljava/util/List;

    nop

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    nop

    nop

    nop

    nop

    if-eqz p2, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    check-cast p2, Lpge;

    nop

    nop

    nop

    iget-object p3, p0, Ljfn;->h:Lljr;

    nop

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3, p2}, Lljr;->a(Lpge;)V

    goto :goto_d

    nop

    nop

    nop

    nop

    :cond_1
    iget-object p1, p0, Ljfn;->f:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop
.end method

.method public final declared-synchronized d(Ljfx;)V
    .locals 3

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-boolean v0, p0, Ljfn;->c:Z

    nop

    nop

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    const-string v1, "Capture in progress: %s"

    nop

    nop

    nop

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Ljfn;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    nop

    if-nez v0, :cond_1

    nop

    iget-object v0, p0, Ljfn;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Processing %s cached frames"

    nop

    nop

    nop

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Ljfn;->b:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Ltcv;

    nop

    nop

    nop

    nop

    invoke-interface {p1, v1}, Ljfx;->b(Ltcv;)V

    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    iget-object v0, p0, Ljfn;->b:Ljava/util/List;

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_5

    nop

    nop

    nop

    nop

    :cond_1
    sget-object v0, Ljfn;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    const/16 v1, 0x8f6

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    iget v1, p0, Ljfn;->e:I

    nop

    nop

    nop

    nop

    const-string v2, "[shot-%s] Filtered cache is empty"

    nop

    nop

    invoke-interface {v0, v2, v1}, Lscz;->t(Ljava/lang/String;I)V

    :goto_5
    iget-boolean v0, p0, Ljfn;->c:Z

    nop

    nop

    nop

    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    invoke-interface {p1, v0}, Ljfx;->e(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_3
    :try_start_1
    monitor-enter p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Ljfn;->g:Ljfm;

    nop

    nop

    nop

    nop

    nop

    iput-object p1, v0, Ljfm;->b:Ljfx;

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    throw p1

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
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_3
    monitor-exit p0

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_10
    const v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized e(Lpge;)V
    .locals 4

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    :try_start_0
    const-string v0, "Received PSL frame %s"

    nop

    nop

    nop

    invoke-interface {p1}, Lpge;->b()Lpgi;

    move-result-object v1

    nop

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-boolean v0, p0, Ljfn;->c:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    invoke-interface {p1}, Lpge;->a()Lpge;

    move-result-object v0

    nop

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    new-instance v0, Liis;

    nop

    nop

    invoke-interface {p1}, Lpge;->b()Lpgi;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Lpge;->c()Lpgo;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Lpge;->d()Lpro;

    move-result-object v3

    nop

    invoke-direct {v0, v1, v2, v3}, Liis;-><init>(Lpgi;Lpgo;Lpro;)V

    const-string v1, "Could not fork frame %s, passing an empty frame"

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Lpge;->b()Lpgi;

    move-result-object v2

    nop

    nop

    nop

    nop

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    nop

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Ljfn;->h:Lljr;

    nop

    nop

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Caching unfiltered frame %s"

    nop

    nop

    nop

    invoke-interface {p1}, Lpge;->b()Lpgi;

    move-result-object v2

    nop

    nop

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v1, p0, Ljfn;->f:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    nop

    :cond_1
    const-string v1, "filtering frame: %s"

    nop

    invoke-interface {p1}, Lpge;->b()Lpgi;

    move-result-object v2

    nop

    nop

    nop

    nop

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v1, p0, Ljfn;->h:Lljr;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0}, Lljr;->a(Lpge;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {p1}, Lpge;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_a

    nop

    nop

    :goto_2
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_c

    nop

    :goto_3
    throw p1

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0xa

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a
    monitor-exit p0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_2
    invoke-interface {p1}, Lpge;->close()V

    throw v0

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_3

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized f()Z
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    throw v0

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0xf

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    :cond_0
    :try_start_0
    iget-object v0, p0, Ljfn;->f:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Ljfn;->b:Ljava/util/List;

    nop

    nop

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Capture was done already, keeping %s unfiltered and %s filtered frames."

    nop

    nop

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    monitor-exit p0

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

    :goto_b
    return p0

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    monitor-enter p0

    nop

    nop

    nop

    :try_start_2
    iget-boolean v0, p0, Ljfn;->c:Z

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    invoke-virtual {p0}, Ljfn;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    const/4 p0, 0x1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_f
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method
