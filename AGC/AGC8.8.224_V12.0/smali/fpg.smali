.class public final Lfpg;
.super Ljava/lang/Object;

# interfaces
.implements Lfsm;


# instance fields
.field public final a:Lfsm;

.field public final b:Lgue;

.field private final c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lfsm;Landroid/os/Handler;Lgue;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfpg;->a:Lfsm;

    iput-object p2, p0, Lfpg;->c:Landroid/os/Handler;

    iput-object p3, p0, Lfpg;->b:Lgue;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public final b(Lkeb;Lgue;)Z
    .locals 1

    iget-object v0, p0, Lfpg;->a:Lfsm;

    invoke-interface {v0, p1, p2}, Lfsm;->b(Lkeb;Lgue;)Z

    move-result p1

    return p1
.end method

.method public final declared-synchronized c(Lkeb;Lfte;Lnom;Lfsl;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    new-instance v7, Lfpf;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lfpf;-><init>(Lfpg;Lkeb;Lfte;Lnom;[B[B)V

    iget-object p1, p0, Lfpg;->c:Landroid/os/Handler;

    new-instance p2, Lfqt;

    const/4 p3, 0x1

    invoke-direct {p2, p4, v7, p3}, Lfqt;-><init>(Lfsl;Lkpb;I)V

    const-wide/16 p3, 0x64

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
