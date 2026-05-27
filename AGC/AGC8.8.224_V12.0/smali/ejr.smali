.class public final Lejr;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/Byte;


# instance fields
.field public final b:Lkli;

.field public final c:Lekc;

.field public final d:Ldhi;

.field private final e:Lkll;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lejr;->a:Ljava/lang/Byte;

    return-void
.end method

.method public constructor <init>(Lklj;Ldhi;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lejr;->d:Ldhi;

    sget-object p2, Lklv;->b:Lklv;

    invoke-interface {p1, p2}, Lklj;->e(Lklv;)Lkll;

    move-result-object p2

    invoke-static {p2}, Llkj;->C(Ljava/lang/Object;)V

    iput-object p2, p0, Lejr;->e:Lkll;

    invoke-interface {p1, p2}, Lklj;->a(Lkll;)Lkli;

    move-result-object p1

    iput-object p1, p0, Lejr;->b:Lkli;

    new-instance p2, Lekc;

    invoke-direct {p2}, Lekc;-><init>()V

    sget-object v0, Ljwu;->i:Ljwu;

    invoke-virtual {v0}, Ljwu;->b()Lkaf;

    move-result-object v0

    iget v1, v0, Lkaf;->a:I

    iput v1, p2, Lekc;->a:I

    iget v0, v0, Lkaf;->b:I

    iput v0, p2, Lekc;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p2, Lekc;->e:Z

    invoke-interface {p1}, Lkli;->f()I

    move-result v1

    iput v1, p2, Lekc;->c:I

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p1, v1}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SizeF;

    invoke-static {v1}, Llkj;->C(Ljava/lang/Object;)V

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p1, v2}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    invoke-static {p1}, Llkj;->C(Ljava/lang/Object;)V

    aget p1, p1, v0

    const/high16 v0, 0x42100000    # 36.0f

    mul-float p1, p1, v0

    invoke-virtual {v1}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    div-float/2addr p1, v0

    iput p1, p2, Lekc;->d:F

    iput-object p2, p0, Lejr;->c:Lekc;

    return-void
.end method


# virtual methods
.method public final a()D
    .locals 2

    iget-object v0, p0, Lejr;->c:Lekc;

    iget v0, v0, Lekc;->d:F

    add-float/2addr v0, v0

    const/high16 v1, 0x42100000    # 36.0f

    div-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    add-double/2addr v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    return-wide v0
.end method
