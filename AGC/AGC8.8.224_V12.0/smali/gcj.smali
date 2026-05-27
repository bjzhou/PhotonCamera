.class public final Lgcj;
.super Ljava/lang/Object;

# interfaces
.implements Lkee;
.implements Lkad;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Z

.field public final synthetic c:Lgcl;

.field private final d:Lmrl;

.field private e:J


# direct methods
.method public constructor <init>(Lgcl;Lmrl;)V
    .locals 0

    iput-object p1, p0, Lgcj;->c:Lgcl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgcj;->a:Ljava/lang/Object;

    iput-object p2, p0, Lgcj;->d:Lmrl;

    return-void
.end method


# virtual methods
.method public final c(Lkhr;)V
    .locals 7

    invoke-virtual {p1}, Lkhr;->b()Lkeg;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v1, v0, Lkeg;->c:J

    iget-wide v3, p0, Lgcj;->e:J

    iget-object v5, p0, Lgcj;->d:Lmrl;

    invoke-interface {v5}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    return-void

    :cond_1
    iput-wide v1, p0, Lgcj;->e:J

    new-instance v1, Lctg;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v0, v2}, Lctg;-><init>(Lgcj;Lkeg;I)V

    invoke-static {p1, v1}, Lkfg;->B(Lkhr;Lkex;)V

    return-void
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Lgcj;->c:Lgcl;

    iget-object v0, v0, Lgcl;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lgcj;->c:Lgcl;

    iget-object v1, v1, Lgcl;->k:Lgci;

    invoke-virtual {v1}, Lgci;->c()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
