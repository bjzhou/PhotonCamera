.class public final Lllo;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lllo;


# instance fields
.field public volatile b:Z

.field public volatile c:J

.field public volatile d:J

.field public volatile e:J

.field public volatile f:J

.field public volatile g:J

.field public volatile h:J

.field public volatile i:J

.field public volatile j:J

.field public volatile k:Llfu;

.field public final l:Llln;

.field public final m:Lllh;

.field public final n:Lllh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lllo;

    invoke-direct {v0}, Lllo;-><init>()V

    sput-object v0, Lllo;->a:Lllo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Llln;

    invoke-direct {v0}, Llln;-><init>()V

    iput-object v0, p0, Lllo;->l:Llln;

    new-instance v0, Lllh;

    invoke-direct {v0}, Lllh;-><init>()V

    iput-object v0, p0, Lllo;->m:Lllh;

    new-instance v0, Lllh;

    invoke-direct {v0}, Lllh;-><init>()V

    iput-object v0, p0, Lllo;->n:Lllh;

    return-void
.end method

.method public static a(Ljava/lang/String;J)V
    .locals 2

    invoke-static {}, Landroid/os/Process;->getStartElapsedRealtime()J

    move-result-wide v0

    sub-long/2addr p1, v0

    invoke-static {p0, p1, p2}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    const-wide/16 p1, 0x0

    invoke-static {p0, p1, p2}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    return-void
.end method
