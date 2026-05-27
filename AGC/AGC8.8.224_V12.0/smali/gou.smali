.class public final Lgou;
.super Lhdr;


# instance fields
.field public final a:Lflf;

.field public final b:Lcmo;

.field private final c:Landroid/content/res/Resources;

.field private final d:Ljvs;

.field private e:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lflf;Ljew;Ljvs;Ljava/util/concurrent/ScheduledExecutorService;Lcmo;[B[B[B[B)V
    .locals 9

    move-object v8, p0

    const-string v3, "portrait_smarts_chip"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p5

    move-object v2, p3

    invoke-direct/range {v0 .. v7}, Lhdr;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Ljew;Ljava/lang/String;[B[B[B[B)V

    move-object v0, p1

    iput-object v0, v8, Lgou;->c:Landroid/content/res/Resources;

    move-object v0, p2

    iput-object v0, v8, Lgou;->a:Lflf;

    move-object v0, p4

    iput-object v0, v8, Lgou;->d:Ljvs;

    move-object v0, p6

    iput-object v0, v8, Lgou;->b:Lcmo;

    return-void
.end method


# virtual methods
.method public final c(Lkli;)V
    .locals 1

    invoke-super {p0, p1}, Lhdr;->c(Lkli;)V

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p1, v0}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iput-object p1, p0, Lgou;->e:Landroid/graphics/Rect;

    return-void
.end method

.method protected final d()Lhdq;
    .locals 4

    invoke-static {}, Lheb;->a()Lhea;

    move-result-object v0

    iget-object v1, p0, Lgou;->c:Landroid/content/res/Resources;

    const v2, 0x7f1403bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lhea;->a:Ljava/lang/String;

    iget-object v1, p0, Lgou;->c:Landroid/content/res/Resources;

    const v2, 0x7f080377

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lhea;->b:Landroid/graphics/drawable/Drawable;

    new-instance v1, Lgot;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lgot;-><init>(Lgou;I)V

    iput-object v1, v0, Lhea;->c:Ljava/lang/Runnable;

    new-instance v1, Lgot;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lgot;-><init>(Lgou;I)V

    iput-object v1, v0, Lhea;->g:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lhea;->e(J)V

    invoke-virtual {v0}, Lhea;->a()Lheb;

    move-result-object v0

    invoke-static {}, Lhdq;->a()Lhdp;

    move-result-object v1

    iput-object v0, v1, Lhdp;->a:Lheb;

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Lhdp;->b(I)V

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Lhdp;->c(I)V

    invoke-virtual {v1}, Lhdp;->a()Lhdq;

    move-result-object v0

    return-object v0
.end method

.method protected final e(Lkou;)Z
    .locals 6

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/camera2/params/Face;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lgou;->e:Landroid/graphics/Rect;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget-object v5, p0, Lgou;->e:Landroid/graphics/Rect;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v4

    div-float/2addr v2, v5

    mul-float v3, v3, v2

    const v2, 0x3d4ccccd    # 0.05f

    cmpl-float v2, v3, v2

    if-ltz v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-lez v2, :cond_3

    const/4 p1, 0x1

    if-gt v2, p1, :cond_3

    iget-object v1, p0, Lgou;->d:Ljvs;

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    return v0
.end method
