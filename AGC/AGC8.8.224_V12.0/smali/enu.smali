.class public final Lenu;
.super Ljava/lang/Object;


# static fields
.field private static final d:Lnak;


# instance fields
.field public final a:Lgxn;

.field public final b:Lgxr;

.field public final c:Lhjc;

.field private final e:Ldzf;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/kepler/VideoAstrolapseSession"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lenu;->d:Lnak;

    return-void
.end method

.method public constructor <init>(Lkpo;Ldzf;Lhjc;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, 0x0

    iput-boolean p4, p0, Lenu;->f:Z

    sget-object p4, Lnmh;->a:Lnmh;

    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    move-result-object p4

    invoke-virtual {p4}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide p4

    invoke-virtual {p1, p4, p5}, Lkpo;->h(J)Lgxr;

    move-result-object p1

    iput-object p1, p0, Lenu;->b:Lgxr;

    sget-object p4, Lkqi;->e:Lkqi;

    iget-object p4, p4, Lkqi;->j:Ljava/lang/String;

    invoke-virtual {p1, p4}, Lgxr;->a(Ljava/lang/String;)Lgxn;

    move-result-object p1

    iput-object p1, p0, Lenu;->a:Lgxn;

    iput-object p2, p0, Lenu;->e:Ldzf;

    iput-object p3, p0, Lenu;->c:Lhjc;

    sget-object p1, Lnbk;->a:Lnbc;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lkph;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lenu;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lenu;->e:Ldzf;

    sget-object v1, Ldyy;->f:Ldyy;

    invoke-interface {v0, p1, v1}, Ldzf;->c(Lkph;Ldyy;)V

    iget-object p1, p0, Lenu;->c:Lhjc;

    check-cast p1, Lhjd;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lhjd;->t:Z

    iput-boolean v0, p0, Lenu;->f:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    :try_start_2
    sget-object v0, Lenu;->d:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    sget-object v1, Lnbk;->a:Lnbc;

    const-string v2, "VideoKeplerSession"

    invoke-interface {v0, v1, v2}, Lnaz;->g(Lnbc;Ljava/lang/Object;)Lnaz;

    move-result-object v0

    const-string v1, "Error adding badge to output file."

    const/16 v2, 0x688

    invoke-static {v0, v1, v2, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
