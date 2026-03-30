.class public final synthetic Lgnb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lgni;

.field public final synthetic b:Lsuu;


# direct methods
.method public synthetic constructor <init>(Lgni;Lsuu;)V
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

    nop

    :goto_1
    iput-object p1, p0, Lgnb;->a:Lgni;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-object p2, p0, Lgnb;->b:Lsuu;

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

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 8

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lgnb;->b:Lsuu;

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

    :goto_1
    const v0, 0x7

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v1, p0, Lgnb;->a:Lgni;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    :goto_6
    if-ne v3, v4, :cond_0

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

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lgni;->close()V

    new-instance v3, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lgni;->C:Lgnh;

    nop

    nop

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lsuu;->a(Ljava/lang/Throwable;)Z

    monitor-exit v2

    nop

    nop

    nop

    return-void

    nop

    nop

    :goto_7
    const-string v0, "Start video recorder."

    nop

    invoke-virtual {v1, v0}, Lgni;->f(Ljava/lang/String;)V

    iget-object v0, v1, Lgni;->D:Lgsz;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lgsz;->a:Lpak;

    nop

    nop

    nop

    iget-object v3, v1, Lgni;->p:Lmkv;

    nop

    nop

    nop

    nop

    nop

    sget-object v4, Lmku;->c:Lmku;

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Lmkp;->h(Ljava/lang/Enum;)V

    sget-object v3, Lhly;->a:Lhmo;

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lpak;->h(Lpah;)Lsui;

    move-result-object v3

    nop

    nop

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    iget-object v5, v1, Lgni;->o:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v6, 0xbb8

    nop

    nop

    invoke-static {v3, v6, v7, v4, v5}, Lsgj;->V(Lsui;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lsui;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    new-instance v4, Lgfq;

    nop

    nop

    nop

    nop

    const/4 v5, 0x4

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v4, v1, v0, v5, v6}, Lgfq;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[C)V

    sget-object v5, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    invoke-static {v3, v4, v5}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    new-instance v4, Lgnf;

    nop

    nop

    nop

    nop

    invoke-direct {v4, v1, v0, p0}, Lgnf;-><init>(Lgni;Lpak;Lsuu;)V

    iget-object p0, v1, Lgni;->b:Lowu;

    nop

    invoke-static {v3, v4, p0}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    monitor-exit v2

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v2

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    throw p0

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    iget-object v2, v1, Lgni;->e:Ljava/lang/Object;

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

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    monitor-enter v2

    nop

    nop

    :try_start_1
    iget-object v3, v1, Lgni;->C:Lgnh;

    nop

    nop

    sget-object v4, Lgnh;->b:Lgnh;

    nop

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

    :goto_d
    const-string v0, "Trying to delayedStart recording with state="

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_e
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop
.end method
