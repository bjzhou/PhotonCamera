.class public final Lkfx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Lkeg;

.field public d:Z

.field public e:Lkou;

.field public f:Z

.field public g:Z

.field public h:Lkfg;

.field private final i:Ligo;


# direct methods
.method public constructor <init>(Ligo;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-object p2, p0, Lkfx;->h:Lkfg;

    iput-object p2, p0, Lkfx;->c:Lkeg;

    iput-object p2, p0, Lkfx;->e:Lkou;

    iput-object p1, p0, Lkfx;->i:Ligo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lkfx;->h:Lkfg;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v1, p0, Lkfx;->a:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lkfg;->bj()V

    :cond_0
    iget-boolean v0, p0, Lkfx;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkfx;->h:Lkfg;

    iget-object v1, p0, Lkfx;->c:Lkeg;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lkfg;->bF()V

    :cond_1
    iget-boolean v0, p0, Lkfx;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkfx;->h:Lkfg;

    iget-object v1, p0, Lkfx;->e:Lkou;

    invoke-virtual {v0, v1}, Lkfg;->bw(Lkou;)V

    :cond_2
    iget-boolean v0, p0, Lkfx;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkfx;->h:Lkfg;

    invoke-virtual {v0}, Lkfg;->bq()V

    :cond_3
    iget-boolean v0, p0, Lkfx;->g:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkfx;->h:Lkfg;

    invoke-virtual {v0}, Lkfg;->bk()V

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lkfx;->h:Lkfg;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lkfx;->a:Z

    iput-boolean v1, p0, Lkfx;->b:Z

    iput-object v0, p0, Lkfx;->c:Lkeg;

    iput-boolean v1, p0, Lkfx;->d:Z

    iput-object v0, p0, Lkfx;->e:Lkou;

    iput-boolean v1, p0, Lkfx;->f:Z

    iput-boolean v1, p0, Lkfx;->g:Z

    iget-object v0, p0, Lkfx;->i:Ligo;

    iget-object v1, v0, Ligo;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Ligo;->b:Ljava/lang/Object;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
