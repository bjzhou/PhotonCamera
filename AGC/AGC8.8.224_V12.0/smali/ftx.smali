.class public final Lftx;
.super Lkfg;


# instance fields
.field final synthetic a:Lgxb;


# direct methods
.method public constructor <init>(Lgxb;[B[B[B)V
    .locals 0

    iput-object p1, p0, Lftx;->a:Lgxb;

    invoke-direct {p0}, Lkfg;-><init>()V

    return-void
.end method


# virtual methods
.method public final bC(Lkou;)V
    .locals 1

    iget-object p1, p0, Lftx;->a:Lgxb;

    iget-object p1, p1, Lgxb;->b:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
