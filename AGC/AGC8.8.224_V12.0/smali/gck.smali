.class public final Lgck;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# instance fields
.field public final a:Lmqq;

.field final synthetic b:Lgcl;

.field private c:Z


# direct methods
.method public constructor <init>(Lgcl;Lmqq;)V
    .locals 0

    iput-object p1, p0, Lgck;->b:Lgcl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lgck;->a:Lmqq;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 5

    iget-object v0, p0, Lgck;->b:Lgcl;

    iget-object v0, v0, Lgcl;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lgck;->c:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lgck;->c:Z

    iget-object v2, p0, Lgck;->b:Lgcl;

    iget v3, v2, Lgcl;->i:I

    if-lez v3, :cond_0

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lgcl;->i:I

    goto :goto_0

    :cond_0
    sget-object v2, Lgcl;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->c()Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const/16 v3, 0x9f1

    invoke-interface {v2, v3}, Lnah;->G(I)Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const-string v3, "Metering lock was invalid."

    invoke-interface {v2, v3}, Lnah;->o(Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lgck;->b:Lgcl;

    iget v3, v2, Lgcl;->i:I

    const/4 v4, 0x0

    if-nez v3, :cond_1

    iget-boolean v2, v2, Lgcl;->j:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    iget-object v0, p0, Lgck;->b:Lgcl;

    invoke-virtual {v0}, Lgcl;->b()V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
