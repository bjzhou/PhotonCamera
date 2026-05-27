.class public final Lcti;
.super Ljava/lang/Object;

# interfaces
.implements Lkdy;


# instance fields
.field final synthetic a:Lnph;

.field final synthetic b:Lctl;


# direct methods
.method public constructor <init>(Lctl;Lnph;)V
    .locals 0

    iput-object p1, p0, Lcti;->b:Lctl;

    iput-object p2, p0, Lcti;->a:Lnph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkbo;J)V
    .locals 4

    iget-object v0, p0, Lcti;->b:Lctl;

    iget-object v0, v0, Lctl;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcti;->a:Lnph;

    new-instance v2, Ldnt;

    iget-object v3, p0, Lcti;->b:Lctl;

    iget-object v3, v3, Lctl;->i:Lcsc;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Lcsc;->a:Lkll;

    invoke-direct {v2, v3, p1, p2, p3}, Ldnt;-><init>(Lkll;Lkbo;J)V

    invoke-virtual {v1, v2}, Lnph;->a(Ljava/lang/Throwable;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lcti;->b:Lctl;

    iget-object v1, v0, Lctl;->x:Ldde;

    iget-object v2, v0, Lctl;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lctl;->C:Lkha;

    iget-object v3, v3, Lkha;->a:Lklj;

    iget-object v0, v0, Lctl;->i:Lcsc;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcsc;->a:Lkll;

    invoke-interface {v3, v0}, Lklj;->a(Lkll;)Lkli;

    move-result-object v0

    invoke-interface {v0}, Lkli;->k()Lklv;

    move-result-object v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1, v0}, Ldde;->g(Lklv;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
