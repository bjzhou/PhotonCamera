.class public final Ldso;
.super Ljava/lang/Object;

# interfaces
.implements Lioq;


# instance fields
.field private final synthetic a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lgkr;I[B[B[B[B[B)V
    .locals 0

    iput p2, p0, Ldso;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldso;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljvs;I)V
    .locals 0

    iput p2, p0, Ldso;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldso;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lios;)Lioo;
    .locals 9

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ldso;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ldqt;

    goto :goto_0

    :pswitch_0
    new-instance v0, Ldsn;

    invoke-interface {p1}, Lios;->b()Llbd;

    move-result-object v2

    iget-object p1, p0, Ldso;->b:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lgkr;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ldsn;-><init>(Llbd;Lgkr;[B[B[B[B[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    :try_start_1
    invoke-interface {p1}, Lios;->b()Llbd;

    check-cast p1, Liok;

    iget-object p1, p1, Liok;->b:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Ldso;->b:Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Ldqt;-><init>(Ljava/util/concurrent/Executor;Ljvs;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
