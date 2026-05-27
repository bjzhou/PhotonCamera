.class public final Lfpi;
.super Ljava/lang/Object;

# interfaces
.implements Lfpz;


# static fields
.field private static final a:Lnak;


# instance fields
.field private final b:Lfri;

.field private final c:Lkxy;

.field private final d:Lkab;

.field private e:Lfpz;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/moments/EncoderStartingImageSink"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lfpi;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lfri;Lkxy;Lkab;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lfpi;->e:Lfpz;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfpi;->f:Z

    iput-object p1, p0, Lfpi;->b:Lfri;

    iput-object p2, p0, Lfpi;->c:Lkxy;

    iput-object p3, p0, Lfpi;->d:Lkab;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lkpb;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lfpi;->f:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lkpb;->d()J

    invoke-interface {p1}, Lkpb;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lfpi;->e:Lfpz;

    if-nez v0, :cond_1

    iget-object v0, p0, Lfpi;->b:Lfri;

    iget-object v1, p0, Lfpi;->c:Lkxy;

    iget-object v2, p0, Lfpi;->d:Lkab;

    invoke-interface {v0, v1, v2}, Lfri;->a(Lkxy;Lkab;)Lfpz;

    move-result-object v0

    iput-object v0, p0, Lfpi;->e:Lfpz;

    :cond_1
    iget-object v0, p0, Lfpi;->e:Lfpz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p1}, Lfpz;->a(Lkpb;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized close()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lfpi;->f:Z

    if-eqz v0, :cond_0

    sget-object v0, Lfpi;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Closing sink more than once"

    const/16 v2, 0x9a7

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lfpi;->e:Lfpz;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lfpz;->close()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lfpi;->c:Lkxy;

    invoke-interface {v0}, Lkxy;->close()V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfpi;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
