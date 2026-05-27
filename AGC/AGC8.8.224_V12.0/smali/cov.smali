.class final Lcov;
.super Ljava/lang/Object;

# interfaces
.implements Lenz;


# instance fields
.field final synthetic a:Lcox;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Lcox;)V
    .locals 0

    iput-object p1, p0, Lcov;->a:Lcox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcov;->b:Z

    iput-boolean p1, p0, Lcov;->c:Z

    return-void
.end method


# virtual methods
.method public final synthetic a(Z)V
    .locals 0

    return-void
.end method

.method public final synthetic b(Z)V
    .locals 0

    return-void
.end method

.method public final synthetic c()V
    .locals 0

    return-void
.end method

.method public final d(Z)V
    .locals 4

    iget-boolean v0, p0, Lcov;->b:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcov;->b:Z

    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcov;->c:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcov;->c:Z

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lcov;->a:Lcox;

    iget-object v0, v0, Lcox;->t:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcov;->a:Lcox;

    iget-object v1, v1, Lcox;->o:Lcrz;

    iget-object v1, v1, Lcrz;->g:Ljwb;

    check-cast v1, Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    check-cast v1, Lcrx;

    if-nez p1, :cond_3

    sget-object v2, Lcrx;->e:Lcrx;

    if-ne v1, v2, :cond_4

    :cond_3
    if-eqz p1, :cond_6

    sget-object v2, Lcrx;->e:Lcrx;

    if-ne v1, v2, :cond_6

    :cond_4
    iget-object v1, p0, Lcov;->a:Lcox;

    iget-object v1, v1, Lcox;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcqs;

    invoke-interface {v2, v3}, Lcqs;->i(Z)V

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_6

    iput-boolean v3, p0, Lcov;->c:Z

    :cond_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcov;->a:Lcox;

    iget-object v0, v0, Lcox;->f:Liff;

    invoke-interface {v0, p1}, Liff;->z(Z)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final e(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcov;->a:Lcox;

    iget-object p1, p1, Lcox;->e:Litm;

    invoke-interface {p1}, Litm;->S()V

    :cond_0
    return-void
.end method

.method public final f(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcov;->a:Lcox;

    iget-object p1, p1, Lcox;->e:Litm;

    invoke-interface {p1}, Litm;->T()V

    :cond_0
    return-void
.end method
