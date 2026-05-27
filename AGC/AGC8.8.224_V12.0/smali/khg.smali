.class final Lkhg;
.super Ljava/lang/Object;

# interfaces
.implements Lkia;


# instance fields
.field final synthetic a:Lkhh;


# direct methods
.method public constructor <init>(Lkhh;)V
    .locals 0

    iput-object p1, p0, Lkhg;->a:Lkhh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    sget-object v0, Lkhh;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lkhg;->a:Lkhh;

    const/4 v2, 0x1

    iput v2, v1, Lkhh;->e:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b()V
    .locals 4

    sget-object v0, Lkhh;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lkhg;->a:Lkhh;

    iget v2, v1, Lkhh;->e:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x3

    iput v2, v1, Lkhh;->e:I

    const/4 v2, 0x1

    iput-boolean v2, v1, Lkhh;->b:Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    iget-object v0, p0, Lkhg;->a:Lkhh;

    invoke-virtual {v0}, Lkhh;->b()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
