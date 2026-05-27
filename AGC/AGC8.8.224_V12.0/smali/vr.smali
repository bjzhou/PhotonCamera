.class public final Lvr;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lolz;

.field public final b:Ljava/lang/Object;

.field public c:I

.field public d:Lora;

.field public e:Z

.field private final f:Lopu;


# direct methods
.method public constructor <init>(Lopu;Lolz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvr;->f:Lopu;

    iput-object p2, p0, Lvr;->a:Lolz;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvr;->b:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p0}, Lvr;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lvr;->f:Lopu;

    new-instance v1, Lvq;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lvq;-><init>(Lvr;Loku;)V

    const/4 v3, 0x3

    invoke-static {v0, v2, v1, v3}, Lone;->j(Lopu;Lola;Lomo;I)Lora;

    move-result-object v0

    iput-object v0, p0, Lvr;->d:Lora;

    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lvr;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lvr;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lvr;->e:Z

    iget-object v1, p0, Lvr;->d:Lora;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lopx;->k(Lora;)V

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lvr;->d:Lora;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Lvr;->f:Lopu;

    new-instance v2, Lvp;

    invoke-direct {v2, p0, v1}, Lvp;-><init>(Lvr;Loku;)V

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lone;->j(Lopu;Lola;Lomo;I)Lora;

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
