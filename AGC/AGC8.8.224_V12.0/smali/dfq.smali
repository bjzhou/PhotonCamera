.class public final Ldfq;
.super Ljava/lang/Object;


# static fields
.field public static final a:F

.field public static final b:F

.field public static final c:F

.field public static final d:F


# instance fields
.field public final e:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

.field public final f:Landroid/graphics/Paint;

.field public final g:Landroid/graphics/Paint;

.field public final h:Landroid/graphics/Paint;

.field public i:Z

.field public j:Z

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Likp;->b(F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Ldfq;->a:F

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Likp;->b(F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Ldfq;->b:F

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Likp;->b(F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Ldfq;->c:F

    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0}, Likp;->b(F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Ldfq;->d:F

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/coach/CameraCoachHudView;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x4116cbe4

    iput v0, p0, Ldfq;->m:F

    iput v0, p0, Ldfq;->n:F

    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Ldfq;->o:F

    iput-object p1, p0, Ldfq;->e:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Ldfq;->f:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Likp;->b(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 v2, 0x99

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v3, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Ldfq;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Ldfq;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-boolean v0, p0, Ldfq;->i:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Ldfq;->i:Z

    if-eqz v0, :cond_0

    const v0, 0x4116cbe4

    iput v0, p0, Ldfq;->m:F

    iput v0, p0, Ldfq;->n:F

    iget-object v0, p0, Ldfq;->e:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->invalidate()V

    :cond_0
    return-void
.end method
