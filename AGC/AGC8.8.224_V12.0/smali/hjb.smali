.class public final Lhjb;
.super Ljava/lang/Object;

# interfaces
.implements Lhip;


# static fields
.field public static final a:Lnak;

.field public static final b:J


# instance fields
.field public final c:Ljava/util/List;

.field public final d:Lnph;

.field private final e:Ljuh;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "com/google/android/apps/camera/stats/CameraActivitySettlementDetector"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhjb;->a:Lnak;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lhjb;->b:J

    return-void
.end method

.method public constructor <init>(Ljuh;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhjb;->c:Ljava/util/List;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iput-object v0, p0, Lhjb;->d:Lnph;

    iput-object p1, p0, Lhjb;->e:Ljuh;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    new-instance v1, Lchx;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lchx;-><init>(Lhjb;I)V

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public final run()V
    .locals 3

    iget-object v0, p0, Lhjb;->e:Ljuh;

    new-instance v1, Lhfi;

    const/16 v2, 0x13

    invoke-direct {v1, p0, v2}, Lhfi;-><init>(Lhjb;I)V

    invoke-virtual {v0, v1}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
