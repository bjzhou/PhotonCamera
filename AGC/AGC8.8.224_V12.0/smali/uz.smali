.class public final Luz;
.super Ljava/lang/Object;

# interfaces
.implements Luk;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Object;

.field public c:Z

.field public final d:Lott;

.field public e:Lora;

.field public f:Lapp;

.field private final g:I

.field private final h:Loun;

.field private i:Ljo;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luz;->a:Ljava/lang/String;

    sget-object p1, Lul;->a:Loon;

    invoke-virtual {p1}, Loon;->b()I

    move-result p1

    iput p1, p0, Luz;->g:I

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luz;->b:Ljava/lang/Object;

    const/4 p1, 0x3

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Lout;->c(III)Loun;

    move-result-object p1

    iput-object p1, p0, Luz;->h:Loun;

    invoke-static {p1}, Louc;->a(Lott;)Lott;

    move-result-object v0

    iput-object v0, p0, Luz;->d:Lott;

    sget-object v0, Lts;->a:Lts;

    iput-object v0, p0, Luz;->i:Ljo;

    invoke-interface {p1, v0}, Loun;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Lqy;)V
    .locals 12

    iget-object v0, p0, Luz;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Luz;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Luz;->c:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnecting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Luz;->e:Lora;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lopx;->k(Lora;)V

    :cond_1
    iget-object v1, p0, Luz;->f:Lapp;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lapp;->a()V

    :cond_2
    invoke-virtual {p0}, Luz;->b()Ljo;

    move-result-object v1

    instance-of v1, v1, Ltn;

    if-nez v1, :cond_4

    iget-object v1, p0, Luz;->i:Ljo;

    instance-of v1, v1, Lto;

    if-nez v1, :cond_3

    new-instance v1, Lto;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lto;-><init>(Lqy;)V

    invoke-virtual {p0, v1}, Luz;->c(Ljo;)V

    :cond_3
    new-instance v11, Ltn;

    iget-object v2, p0, Luz;->a:Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v11

    move-object v10, p1

    invoke-direct/range {v1 .. v10}, Ltn;-><init>(Ljava/lang/String;ILjava/lang/Integer;Lvk;Ljava/lang/Throwable;Lvk;Lvk;Lvk;Lqy;)V

    invoke-virtual {p0, v11}, Luz;->c(Ljo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final b()Ljo;
    .locals 2

    iget-object v0, p0, Luz;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Luz;->i:Ljo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final c(Ljo;)V
    .locals 2

    iput-object p1, p0, Luz;->i:Ljo;

    iget-object v0, p0, Luz;->h:Loun;

    invoke-interface {v0, p1}, Loun;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to emit "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VirtualCamera-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Luz;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
