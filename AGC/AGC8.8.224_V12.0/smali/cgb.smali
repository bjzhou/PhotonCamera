.class public final Lcgb;
.super Ljava/lang/Object;


# static fields
.field public static final a:[Landroid/graphics/PointF;


# instance fields
.field public final b:Lcgn;

.field public final c:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/graphics/PointF;

    sput-object v0, Lcgb;->a:[Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>(Lcgn;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcgb;->b:Lcgn;

    iput-object p2, p0, Lcgb;->c:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 3

    iget-object v0, p0, Lcgb;->b:Lcgn;

    invoke-virtual {v0}, Lcgn;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcgn;->setPivotX(F)V

    iget-object v0, p0, Lcgb;->b:Lcgn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcgn;->setPivotY(F)V

    iget-object v0, p0, Lcgb;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Leug;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Leug;-><init>(Lcgb;FI)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
