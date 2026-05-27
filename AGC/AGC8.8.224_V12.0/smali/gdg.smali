.class public final Lgdg;
.super Ljava/lang/Object;

# interfaces
.implements Lkai;


# static fields
.field private static final b:Lnak;


# instance fields
.field public final a:Lnph;

.field private final c:J

.field private d:Ljava/lang/Long;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/one/util/TimestampWaiter"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgdg;->b:Lnak;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgdg;->e:Z

    iput-wide p1, p0, Lgdg;->c:J

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object p1

    iput-object p1, p0, Lgdg;->a:Lnph;

    return-void
.end method


# virtual methods
.method public final b(Lkoq;)V
    .locals 8

    iget-boolean v0, p0, Lgdg;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lgdg;->d:Ljava/lang/Long;

    if-nez v0, :cond_1

    invoke-interface {p1}, Lkoq;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lgdg;->d:Ljava/lang/Long;

    :cond_1
    invoke-interface {p1}, Lkoq;->b()J

    move-result-wide v0

    iget-object v2, p0, Lgdg;->d:Ljava/lang/Long;

    invoke-static {v2}, Llkj;->C(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v2}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v5, p0, Lgdg;->c:J

    cmp-long v7, v3, v5

    if-gtz v7, :cond_2

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lgdg;->e:Z

    iget-object p1, p0, Lgdg;->a:Lnph;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnph;->e(Ljava/lang/Object;)Z

    return-void

    :cond_3
    :goto_0
    const-wide/16 v3, 0xa

    cmp-long v5, v0, v3

    if-ltz v5, :cond_4

    sget-object v3, Lgdg;->b:Lnak;

    invoke-virtual {v3}, Lnaf;->c()Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    const/16 v4, 0xa02

    invoke-interface {v3, v4}, Lnah;->G(I)Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    iget-wide v4, p0, Lgdg;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "timeout waiting for %d at %d, after %dframes"

    invoke-interface {v3, v1, v4, p1, v0}, Lnah;->B(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean v2, p0, Lgdg;->e:Z

    iget-object p1, p0, Lgdg;->a:Lnph;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnph;->e(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public final bridge synthetic bn(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lkoq;

    invoke-virtual {p0, p1}, Lgdg;->b(Lkoq;)V

    return-void
.end method
