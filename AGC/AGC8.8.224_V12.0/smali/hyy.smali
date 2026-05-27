.class public final Lhyy;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final a:Lnak;


# instance fields
.field private final b:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/ui/layout/legacy/CaptureLayoutHelper"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhyy;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhyy;->b:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/RectF;
    .locals 5

    invoke-virtual {p0}, Lhyy;->b()Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyt;

    if-nez v0, :cond_0

    sget-object v0, Lhyy;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Preview rectangle is not available now"

    const/16 v2, 0xfc9

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0

    :cond_0
    iget-object v1, v0, Lhyt;->a:Lhys;

    iget-object v1, v1, Lhys;->i:Lhyn;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iget-object v3, v0, Lhyt;->d:Lhyw;

    sget-object v4, Lhyn;->b:Lhyn;

    invoke-virtual {v1, v4}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lhyn;->c:Lhyn;

    invoke-virtual {v1, v4}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, v3, Lhyw;->h:Landroid/util/Size;

    iget-object v2, v3, Lhyw;->g:Landroid/util/Size;

    invoke-virtual {v3, v1, v2}, Lhyw;->r(Landroid/util/Size;Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    return-object v0

    :cond_3
    :goto_0
    new-instance v2, Landroid/graphics/RectF;

    iget-object v0, v0, Lhyt;->b:Lhyq;

    iget-object v0, v0, Lhyq;->e:Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    :goto_1
    return-object v2
.end method

.method public final b()Lcom/google/android/apps/camera/ui/views/MainActivityLayout;
    .locals 2

    iget-object v0, p0, Lhyy;->b:Landroid/app/Activity;

    const v1, 0x7f0b0053

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lhyy;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    return v0
.end method
