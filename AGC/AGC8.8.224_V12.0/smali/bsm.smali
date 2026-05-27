.class public final Lbsm;
.super Ljava/lang/Object;

# interfaces
.implements Lbsn;
.implements Lcbb;


# static fields
.field private static final a:Laed;


# instance fields
.field private b:Lbsn;

.field private c:Z

.field private d:Z

.field private final e:Lfkg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbtr;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lbtr;-><init>(I)V

    const/16 v1, 0x14

    invoke-static {v1, v0}, Lcbd;->b(ILcaz;)Laed;

    move-result-object v0

    sput-object v0, Lbsm;->a:Laed;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lfkg;->d()Lfkg;

    move-result-object v0

    iput-object v0, p0, Lbsm;->e:Lfkg;

    return-void
.end method

.method static d(Lbsn;)Lbsm;
    .locals 2

    sget-object v0, Lbsm;->a:Laed;

    invoke-interface {v0}, Laed;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsm;

    invoke-static {v0}, Lbze;->v(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lbsm;->d:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lbsm;->c:Z

    iput-object p0, v0, Lbsm;->b:Lbsn;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lbsm;->b:Lbsn;

    invoke-interface {v0}, Lbsn;->a()I

    move-result v0

    return v0
.end method

.method public final b()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lbsm;->b:Lbsn;

    invoke-interface {v0}, Lbsn;->b()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbsm;->b:Lbsn;

    invoke-interface {v0}, Lbsn;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized e()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbsm;->e:Lfkg;

    invoke-virtual {v0}, Lfkg;->c()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbsm;->d:Z

    iget-boolean v0, p0, Lbsm;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbsm;->b:Lbsn;

    invoke-interface {v0}, Lbsn;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbsm;->b:Lbsn;

    sget-object v0, Lbsm;->a:Laed;

    invoke-interface {v0, p0}, Laed;->b(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f()Lfkg;
    .locals 1

    iget-object v0, p0, Lbsm;->e:Lfkg;

    return-object v0
.end method

.method final declared-synchronized g()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbsm;->e:Lfkg;

    invoke-virtual {v0}, Lfkg;->c()V

    iget-boolean v0, p0, Lbsm;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbsm;->c:Z

    iget-boolean v0, p0, Lbsm;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbsm;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already unlocked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
