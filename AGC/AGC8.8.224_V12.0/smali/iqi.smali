.class final Liqi;
.super Ljava/lang/Object;

# interfaces
.implements Lhfv;


# instance fields
.field final synthetic a:Liqj;


# direct methods
.method public constructor <init>(Liqj;)V
    .locals 0

    iput-object p1, p0, Liqi;->a:Liqj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Liqi;->a:Liqj;

    iget-object v0, v0, Liqj;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Liqi;->a:Liqj;

    iget-object v1, v0, Liqj;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Liqj;->g(Ljava/lang/String;)V

    iget-object v0, p0, Liqi;->a:Liqj;

    const/4 v1, 0x0

    iput-object v1, v0, Liqj;->y:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final synthetic b()V
    .locals 0

    return-void
.end method

.method public final synthetic c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Liqi;->a:Liqj;

    iget-object v0, v0, Liqj;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Liqi;->a:Liqj;

    iget-object v2, v1, Liqj;->x:Ljava/lang/String;

    iput-object v2, v1, Liqj;->y:Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Liqi;->a:Liqj;

    invoke-virtual {v0}, Liqj;->f()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final synthetic e()V
    .locals 0

    return-void
.end method
