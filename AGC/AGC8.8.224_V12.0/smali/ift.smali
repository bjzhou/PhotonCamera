.class public final Lift;
.super Ljava/lang/Object;


# instance fields
.field public final a:J

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lift;->b:Ljava/lang/Object;

    iput-object p2, p0, Lift;->c:Ljava/lang/Object;

    iput-wide p3, p0, Lift;->a:J

    return-void
.end method

.method public constructor <init>([Landroid/hardware/camera2/params/Face;Landroid/graphics/Rect;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lift;->c:Ljava/lang/Object;

    iput-object p2, p0, Lift;->b:Ljava/lang/Object;

    iput-wide p3, p0, Lift;->a:J

    return-void
.end method
