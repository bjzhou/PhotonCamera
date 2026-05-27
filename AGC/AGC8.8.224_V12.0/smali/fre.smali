.class final Lfre;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lnph;

.field public final b:J

.field public c:Z

.field public d:Z

.field public e:J

.field public f:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iput-object v0, p0, Lfre;->a:Lnph;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lfre;->b:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfre;->c:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lfre;->e:J

    const/4 v0, 0x0

    iput-object v0, p0, Lfre;->f:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic a(Lfre;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfre;->c:Z

    return-void
.end method
