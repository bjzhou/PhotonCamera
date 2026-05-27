.class public final Lnda;
.super Ljava/lang/Object;

# interfaces
.implements Lncs;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Ljava/util/logging/Level;

.field public final d:Z

.field public final e:Ljava/util/Set;

.field public final f:Lncb;

.field private volatile g:Lndb;


# direct methods
.method public constructor <init>()V
    .locals 7

    sget-object v3, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    sget-object v5, Lndc;->a:Ljava/util/Set;

    sget-object v6, Lndc;->b:Lncb;

    const-string v1, ""

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lnda;-><init>(Ljava/lang/String;ZLjava/util/logging/Level;ZLjava/util/Set;Lncb;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/util/logging/Level;ZLjava/util/Set;Lncb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnda;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lnda;->b:Z

    iput-object p3, p0, Lnda;->c:Ljava/util/logging/Level;

    iput-boolean p4, p0, Lnda;->d:Z

    iput-object p5, p0, Lnda;->e:Ljava/util/Set;

    iput-object p6, p0, Lnda;->f:Lncb;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lnbq;
    .locals 8

    iget-boolean v0, p0, Lnda;->d:Z

    if-eqz v0, :cond_2

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lnda;->g:Lndb;

    if-nez p1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lnda;->g:Lndb;

    if-nez p1, :cond_0

    new-instance p1, Lndb;

    iget-object v1, p0, Lnda;->a:Ljava/lang/String;

    iget-boolean v3, p0, Lnda;->b:Z

    iget-object v4, p0, Lnda;->c:Ljava/util/logging/Level;

    iget-object v6, p0, Lnda;->e:Ljava/util/Set;

    iget-object v7, p0, Lnda;->f:Lncb;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lndb;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/logging/Level;ZLjava/util/Set;Lncb;)V

    iput-object p1, p0, Lnda;->g:Lndb;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    new-instance v7, Lndc;

    iget-object v1, p0, Lnda;->a:Ljava/lang/String;

    iget-boolean v3, p0, Lnda;->b:Z

    iget-object v4, p0, Lnda;->c:Ljava/util/logging/Level;

    iget-object v5, p0, Lnda;->e:Ljava/util/Set;

    iget-object v6, p0, Lnda;->f:Lncb;

    move-object v0, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lndc;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/logging/Level;Ljava/util/Set;Lncb;)V

    return-object v7
.end method
