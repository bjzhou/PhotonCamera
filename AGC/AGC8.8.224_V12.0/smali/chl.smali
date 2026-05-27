.class public final Lchl;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljuf;

.field public c:Ljuf;

.field private d:Ljty;

.field private e:Ljuf;

.field private f:Ljty;

.field private g:Lcjd;

.field private h:Lcjd;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljuf;

    invoke-direct {v0}, Ljuf;-><init>()V

    iput-object v0, p0, Lchl;->b:Ljuf;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lchl;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljuf;->c()Ljuf;

    move-result-object v1

    iput-object v1, p0, Lchl;->e:Ljuf;

    invoke-direct {p0, v1}, Lchl;->d(Ljuf;)Ljty;

    move-result-object v1

    iput-object v1, p0, Lchl;->f:Ljty;

    iget-object v1, p0, Lchl;->e:Ljuf;

    invoke-virtual {v1}, Ljuf;->c()Ljuf;

    move-result-object v1

    iput-object v1, p0, Lchl;->c:Ljuf;

    invoke-direct {p0, v1}, Lchl;->d(Ljuf;)Ljty;

    move-result-object v1

    iput-object v1, p0, Lchl;->d:Ljty;

    new-instance v1, Lcjd;

    invoke-direct {v1}, Lcjd;-><init>()V

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Lchl;->e:Ljuf;

    new-instance v1, Lcjd;

    invoke-direct {v1}, Lcjd;-><init>()V

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iput-object v1, p0, Lchl;->h:Lcjd;

    iget-object v0, p0, Lchl;->c:Ljuf;

    new-instance v1, Lcjd;

    invoke-direct {v1}, Lcjd;-><init>()V

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iput-object v1, p0, Lchl;->g:Lcjd;

    return-void
.end method

.method private final d(Ljuf;)Ljty;
    .locals 3

    new-instance v0, Ljty;

    new-instance v1, Ljtx;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Ljtx;-><init>(Lchl;Ljuf;I)V

    invoke-direct {v0, v1}, Ljty;-><init>(Lkad;)V

    invoke-virtual {p1, v0}, Ljuf;->d(Lkad;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljuf;)Ljuf;
    .locals 3

    invoke-virtual {p1}, Ljuf;->c()Ljuf;

    move-result-object p1

    iget-object v0, p0, Lchl;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lchl;->g:Lcjd;

    invoke-virtual {v1}, Lcjd;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lchl;->e:Ljuf;

    invoke-virtual {v1}, Ljuf;->c()Ljuf;

    move-result-object v1

    iput-object v1, p0, Lchl;->c:Ljuf;

    sget-object v2, Lcgk;->e:Lcgk;

    invoke-virtual {v1, v2}, Ljuf;->d(Lkad;)V

    iget-object v1, p0, Lchl;->c:Ljuf;

    invoke-direct {p0, v1}, Lchl;->d(Ljuf;)Ljty;

    move-result-object v1

    iput-object v1, p0, Lchl;->d:Ljty;

    iget-object v1, p0, Lchl;->c:Ljuf;

    new-instance v2, Lcjd;

    invoke-direct {v2}, Lcjd;-><init>()V

    invoke-virtual {v1, v2}, Ljuf;->d(Lkad;)V

    iput-object v2, p0, Lchl;->g:Lcjd;

    :cond_0
    iget-object v1, p0, Lchl;->d:Ljty;

    invoke-virtual {v1}, Ljty;->a()Lkad;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Ljuf;->d(Lkad;)V

    :cond_1
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b()Ljuf;
    .locals 1

    iget-object v0, p0, Lchl;->b:Ljuf;

    invoke-virtual {v0}, Ljuf;->c()Ljuf;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljuf;)Ljuf;
    .locals 3

    invoke-virtual {p1}, Ljuf;->c()Ljuf;

    move-result-object p1

    iget-object v0, p0, Lchl;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lchl;->h:Lcjd;

    invoke-virtual {v1}, Lcjd;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lchl;->b:Ljuf;

    invoke-virtual {v1}, Ljuf;->c()Ljuf;

    move-result-object v1

    iput-object v1, p0, Lchl;->e:Ljuf;

    sget-object v2, Lcgk;->c:Lcgk;

    invoke-virtual {v1, v2}, Ljuf;->d(Lkad;)V

    iget-object v1, p0, Lchl;->e:Ljuf;

    invoke-direct {p0, v1}, Lchl;->d(Ljuf;)Ljty;

    move-result-object v1

    iput-object v1, p0, Lchl;->f:Ljty;

    iget-object v1, p0, Lchl;->e:Ljuf;

    new-instance v2, Lcjd;

    invoke-direct {v2}, Lcjd;-><init>()V

    invoke-virtual {v1, v2}, Ljuf;->d(Lkad;)V

    iput-object v2, p0, Lchl;->h:Lcjd;

    iget-object v1, p0, Lchl;->e:Ljuf;

    invoke-virtual {v1}, Ljuf;->c()Ljuf;

    move-result-object v1

    iput-object v1, p0, Lchl;->c:Ljuf;

    sget-object v2, Lcgk;->d:Lcgk;

    invoke-virtual {v1, v2}, Ljuf;->d(Lkad;)V

    iget-object v1, p0, Lchl;->c:Ljuf;

    invoke-direct {p0, v1}, Lchl;->d(Ljuf;)Ljty;

    move-result-object v1

    iput-object v1, p0, Lchl;->d:Ljty;

    iget-object v1, p0, Lchl;->c:Ljuf;

    new-instance v2, Lcjd;

    invoke-direct {v2}, Lcjd;-><init>()V

    invoke-virtual {v1, v2}, Ljuf;->d(Lkad;)V

    iput-object v2, p0, Lchl;->g:Lcjd;

    :cond_0
    iget-object v1, p0, Lchl;->f:Ljty;

    invoke-virtual {v1}, Ljty;->a()Lkad;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Ljuf;->d(Lkad;)V

    :cond_1
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
