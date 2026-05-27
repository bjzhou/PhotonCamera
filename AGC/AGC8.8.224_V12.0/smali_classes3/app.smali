.class public final Lapp;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lvr;)V
    .locals 0

    iput-object p1, p0, Lapp;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    invoke-static {p1}, Lolp;->h(Z)Loom;

    move-result-object p1

    iput-object p1, p0, Lapp;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Loss;)V
    .locals 0

    iput-object p2, p0, Lapp;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lapp;->a:Ljava/lang/Object;

    check-cast v0, Loom;

    invoke-virtual {v0}, Loom;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lapp;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lvr;

    iget-object v1, v1, Lvr;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    move-object v2, v0

    check-cast v2, Lvr;

    iget v2, v2, Lvr;->c:I

    add-int/lit8 v2, v2, -0x1

    move-object v3, v0

    check-cast v3, Lvr;

    iput v2, v3, Lvr;->c:I

    if-nez v2, :cond_0

    move-object v2, v0

    check-cast v2, Lvr;

    iget-boolean v2, v2, Lvr;->e:Z

    if-nez v2, :cond_0

    check-cast v0, Lvr;

    invoke-virtual {v0}, Lvr;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    return-void
.end method
