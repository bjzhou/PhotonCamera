.class public final Lete;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Leqt;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field final b:Landroid/content/Context;

.field public final c:Lexc;

.field public final d:Lere;

.field public final e:Lese;

.field final f:Lesv;

.field final g:Ljava/util/List;

.field h:Landroid/content/Intent;

.field public i:Letc;

.field public final j:Leur;

.field final k:Lts;

.field private final l:Lerj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const-string v0, "SystemAlarmDispatcher"

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Leqh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    sput-object v0, Lete;->a:Ljava/lang/String;

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v1, Lfdn;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1}, Lese;->b(Landroid/content/Context;)Lese;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p1, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v1, v0, p1}, Leur;-><init>(Lere;Lts;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p1, p1, Lese;->i:Lts;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, v1}, Lexc;-><init>(Lfdn;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x7

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {}, Ldxp;->j()Lerj;

    move-result-object v1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v0, p0, Lete;->d:Lere;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    iput-object v1, p0, Lete;->j:Leur;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_b
    iput-object v2, p0, Lete;->f:Lesv;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_c
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_e
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_f
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_10
    iget-object v1, v1, Lqpe;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_d

    nop

    :goto_12
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_13
    iput-object p1, p0, Lete;->e:Lese;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_14
    iget-object v1, p1, Lese;->h:Lqpe;

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

    :goto_15
    iget-object v3, p1, Lese;->h:Lqpe;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_16
    iput-object p1, p0, Lete;->k:Lts;

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
    invoke-direct {v2, v0, v1}, Lesv;-><init>(Landroid/content/Context;Lerj;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v3, v3, Lqpe;->h:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

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

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object p1, p0, Lete;->g:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1d
    new-instance v2, Lesv;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1e
    new-instance v0, Lexc;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    nop

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

    nop

    :goto_20
    iput-object p1, p0, Lete;->h:Landroid/content/Intent;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_22
    iput-object v1, p0, Lete;->l:Lerj;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v0, p1, Lese;->e:Lere;

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

    :goto_24
    invoke-virtual {v0, p0}, Lere;->a(Leqt;)V

    goto/32 :goto_3

    nop

    nop

    :goto_25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iput-object v0, p0, Lete;->b:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_27
    new-instance v1, Leur;

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

    :goto_28
    iput-object v0, p0, Lete;->c:Lexc;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop
.end method

.method public static final e()V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v1, "Needs to be invoked on the main thread."

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_2
    const v0, 0x17

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

    :goto_3
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    throw v0

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    :goto_d
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

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
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_12
    if-eq v0, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop
.end method


# virtual methods
.method public final a(Levg;Z)V
    .locals 4

    goto/32 :goto_15

    nop

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

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v2, "KEY_NEEDS_RESCHEDULE"

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

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

    :goto_5
    new-instance v1, Landroid/content/Intent;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_1

    nop

    :goto_7
    iget-object p0, p0, Lete;->k:Lts;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v1, p1}, Lesv;->f(Landroid/content/Intent;Levg;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p1, 0x0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lts;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_f
    const-class v3, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

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

    :goto_10
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0, p0, v1, p1}, Letb;-><init>(Lete;Landroid/content/Intent;I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v2, p0, Lete;->b:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_13
    const-string v2, "ACTION_EXECUTION_COMPLETED"

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_16
    const v1, 0x3

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v0, Letb;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iget-object v0, p0, Lete;->d:Lere;

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
    invoke-virtual {v0, p0}, Lere;->b(Leqt;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Lete;->i:Letc;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lete;->b:Landroid/content/Context;

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

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v0, v1}, Leww;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v1, p0, Lete;->e:Lese;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lese;->i:Lts;

    nop

    nop

    nop

    nop

    new-instance v2, Leta;

    nop

    nop

    nop

    nop

    invoke-direct {v2, p0}, Leta;-><init>(Lete;)V

    invoke-virtual {v1, v2}, Lts;->i(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_a
    invoke-static {}, Lete;->e()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_e
    const-string v1, "ProcessCommand"

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    throw p0

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Landroid/content/Intent;I)V
    .locals 4

    goto/32 :goto_d

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

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_23

    nop

    nop

    :goto_1
    iget-object p2, p0, Lete;->g:Ljava/util/List;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v2, p0, Lete;->g:Ljava/util/List;

    nop

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_2

    nop

    nop

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    check-cast v3, Landroid/content/Intent;

    nop

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    if-eqz v3, :cond_1

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :cond_2
    monitor-exit v0

    nop

    nop

    nop

    goto/16 :goto_14

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_13

    nop

    nop

    :goto_3
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_3
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_f
    monitor-enter p2

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lete;->g:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    nop

    iget-object v1, p0, Lete;->g:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lete;->c()V

    :cond_4
    monitor-exit p2

    nop

    return-void

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    monitor-exit p2

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/32 :goto_1

    nop

    nop

    :goto_11
    const-string p1, "Unknown command. Ignoring"

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

    :goto_12
    sget-object p0, Lete;->a:Ljava/lang/String;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_13
    throw p0

    nop

    nop

    :goto_14
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const-string v1, "ACTION_CONSTRAINTS_CHANGED"

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lete;->g:Ljava/util/List;

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

    nop

    nop

    :goto_17
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_18
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1a
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_1c
    sget-object v0, Lcom/google/android/apps/camera/keepalive/Rkn/deLMIrA;->AjAnNXyQUnMzDfO:Ljava/lang/String;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-string v1, "ACTION_CONSTRAINTS_CHANGED"

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1e
    if-lez v0, :cond_5

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_5

    nop

    :goto_1f
    const v1, 0xe

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

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

    :goto_21
    invoke-static {}, Lete;->e()V

    goto/32 :goto_e

    nop

    nop

    :goto_22
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_23
    invoke-static {}, Lete;->e()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop
.end method
