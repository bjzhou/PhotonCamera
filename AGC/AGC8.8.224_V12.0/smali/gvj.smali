.class public final synthetic Lgvj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic a:Lnph;


# direct methods
.method public synthetic constructor <init>(Lnph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgvj;->a:Lnph;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 2

    iget-object p1, p0, Lgvj;->a:Lnph;

    new-instance p2, Ljad;

    invoke-direct {p2}, Ljad;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p2, Ljad;->a:J

    invoke-virtual {p1, p2}, Lnph;->e(Ljava/lang/Object;)Z

    return-void
.end method
