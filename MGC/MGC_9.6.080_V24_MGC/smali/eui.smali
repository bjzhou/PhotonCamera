.class public abstract Leui;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/util/LinkedHashSet;

.field public d:Ljava/lang/Object;

.field private final e:Lts;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lts;)V
    .locals 0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Leui;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    new-instance p1, Ljava/lang/Object;

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

    :goto_5
    new-instance p1, Ljava/util/LinkedHashSet;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Leui;->c:Ljava/util/LinkedHashSet;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_8
    iput-object p1, p0, Leui;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    iput-object p2, p0, Leui;->e:Lts;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public abstract b()Ljava/lang/Object;
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 5

    goto/32 :goto_a

    nop

    nop

    :goto_0
    if-eqz v1, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_7

    nop

    nop

    :goto_4
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :goto_7
    :try_start_0
    iput-object p1, p0, Leui;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    iget-object p1, p0, Leui;->c:Ljava/util/LinkedHashSet;

    nop

    nop

    nop

    invoke-static {p1}, Lrkm;->aC(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    nop

    nop

    nop

    nop

    iget-object v1, p0, Leui;->e:Lts;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lts;->c:Ljava/lang/Object;

    nop

    nop

    new-instance v2, Less;

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x2

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    invoke-direct {v2, p1, p0, v3, v4}, Less;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x8

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

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    monitor-exit v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

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

    :goto_f
    iget-object v0, p0, Leui;->b:Ljava/lang/Object;

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

    :goto_10
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_11
    monitor-enter v0

    nop

    :try_start_1
    iget-object v1, p0, Leui;->d:Ljava/lang/Object;

    nop

    if-eqz v1, :cond_1

    nop

    invoke-static {v1, p1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

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

    :goto_12
    monitor-exit v0

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

    :goto_13
    monitor-exit v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_2

    nop

    goto/32 :goto_c

    nop

    :cond_2
    goto/32 :goto_b

    nop
.end method
