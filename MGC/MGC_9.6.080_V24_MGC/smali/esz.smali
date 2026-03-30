.class public final Lesz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Leto;
.implements Lexb;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:I

.field public final c:Levg;

.field public final d:Lete;

.field public e:I

.field public final f:Ljava/util/concurrent/Executor;

.field public final g:Ljava/util/concurrent/Executor;

.field public h:Landroid/os/PowerManager$WakeLock;

.field public i:Z

.field public final j:Lufp;

.field public volatile k:Lugy;

.field public final l:Lfdn;

.field public final m:Lfdn;

.field private final n:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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
    const/4 v3, 0x0

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

    :goto_2
    rem-int v0, v0, v1

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

    :goto_3
    invoke-static {v3, v4, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    aput-object v0, v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    new-array v1, v1, [Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    const v1, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    const/16 v3, 0x3e9

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x3

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

    :goto_d
    const-string v0, "DelayMetCommandHandler"

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

    :goto_e
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop
.end method

.method public constructor <init>(Landroid/content/Context;ILete;Lfdn;)V
    .locals 0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lesz;->b:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Lesz;->f:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_2
    check-cast p2, Lufp;

    nop

    goto/32 :goto_e

    nop

    nop

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

    nop

    :goto_4
    iput-object p4, p0, Lesz;->m:Lfdn;

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

    :goto_5
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6
    iget-object p2, p2, Lts;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p3, p0, Lesz;->d:Lete;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p3, p0, Lesz;->g:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Lesz;->c:Levg;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a
    iput-object p1, p0, Lesz;->a:Landroid/content/Context;

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

    :goto_b
    check-cast p1, Levg;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    iput p1, p0, Lesz;->e:I

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p1, p4, Lfdn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object p2, p0, Lesz;->j:Lufp;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance p2, Lfdn;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p1, p3, Lete;->e:Lese;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_12
    iput-object p1, p0, Lesz;->n:Ljava/lang/Object;

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

    :goto_13
    new-instance p1, Ljava/lang/Object;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_14
    iget-object p3, p2, Lts;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {p2, p1}, Lfdn;-><init>(Lhwy;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput-boolean p1, p0, Lesz;->i:Z

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

    :goto_17
    iget-object p3, p2, Lts;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_18
    iget-object p2, p3, Lete;->k:Lts;

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

    :goto_19
    const/4 p1, 0x0

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

    :goto_1a
    iput-object p2, p0, Lesz;->l:Lfdn;

    nop

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

    nop

    :goto_1b
    iget-object p1, p1, Lese;->j:Lhwy;

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
.end method


# virtual methods
.method public final a()V
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x10

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

    :goto_3
    goto/32 :goto_1

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    :goto_5
    iget-object v0, p0, Lesz;->n:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    const v0, 0xa

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_a
    rem-int v0, v0, v1

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

    :goto_b
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lesz;->k:Lugy;

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lesz;->k:Lugy;

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lugy;->p(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    iget-object v1, p0, Lesz;->d:Lete;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lete;->c:Lexc;

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lesz;->c:Levg;

    nop

    nop

    invoke-virtual {v1, v2}, Lexc;->a(Levg;)V

    iget-object v1, p0, Lesz;->h:Landroid/os/PowerManager$WakeLock;

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    nop

    if-eqz v1, :cond_2

    nop

    invoke-static {}, Leqh;->b()V

    iget-object v1, p0, Lesz;->h:Landroid/os/PowerManager$WakeLock;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object v1, p0, Lesz;->c:Levg;

    nop

    nop

    nop

    nop

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object p0, p0, Lesz;->h:Landroid/os/PowerManager$WakeLock;

    nop

    nop

    nop

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    monitor-exit v0

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

    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Levg;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lesz;->f:Ljava/util/concurrent/Executor;

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

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p1, p0, v0}, Lesy;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    new-instance p1, Lesy;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(Levq;Leao;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    :goto_2
    instance-of p1, p2, Leti;

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
    return-void

    nop

    nop

    :goto_4
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p1, p0, Lesz;->f:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_3

    nop

    nop

    :goto_7
    invoke-direct {p2, p0, v0}, Lesy;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    new-instance p2, Lesy;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p2, p0, v0}, Lesy;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_4

    nop

    nop

    :goto_a
    iget-object p1, p0, Lesz;->f:Ljava/util/concurrent/Executor;

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

    :goto_b
    new-instance p2, Lesy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop
.end method
