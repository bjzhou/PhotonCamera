.class public final Lkfw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkjc;


# instance fields
.field public final a:Lkjc;

.field public final b:Llgc;

.field private final c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lkjc;Landroid/os/Handler;Llgc;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iput-object p2, p0, Lkfw;->c:Landroid/os/Handler;

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

    :goto_3
    iput-object p1, p0, Lkfw;->a:Lkjc;

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
    iput-object p3, p0, Lkfw;->b:Llgc;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    const p0, 0x7fffffff

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
.end method

.method public final declared-synchronized b(Lpge;Lkmq;Lkjj;Lkjb;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    monitor-exit p0

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

    :goto_1
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    :try_start_1
    new-instance v0, Lkfv;

    nop

    invoke-direct {v0, p0, p1, p2, p3}, Lkfv;-><init>(Lkfw;Lpge;Lkmq;Lkjj;)V

    new-instance p1, Lkbu;

    nop

    nop

    const/4 p2, 0x6

    nop

    nop

    invoke-direct {p1, p4, v0, p2}, Lkbu;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p2, p0, Lkfw;->c:Landroid/os/Handler;

    nop

    const-wide/16 p3, 0x64

    nop

    invoke-virtual {p2, p1, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
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
    throw p1

    nop

    nop
.end method

.method public final c(Lpge;Llgc;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    iget-object p0, p0, Lkfw;->a:Lkjc;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0, p1, p2}, Lkjc;->c(Lpge;Llgc;)Z

    move-result p0

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
.end method
