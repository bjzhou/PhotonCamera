.class public final Leir;
.super Ljava/lang/Object;


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public final f:[F

.field public g:F

.field public h:Z

.field public final i:[F

.field public j:I

.field public k:I

.field public l:F

.field public m:Z

.field public n:Z

.field public o:Lcom/google/android/libraries/vision/opengl/Texture;

.field public p:F

.field public q:F


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Leir;->a:F

    const/4 v1, 0x0

    iput v1, p0, Leir;->b:F

    iput v1, p0, Leir;->c:F

    const/16 v2, 0x10

    new-array v2, v2, [F

    iput-object v2, p0, Leir;->f:[F

    iput v1, p0, Leir;->g:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Leir;->h:Z

    const/4 v2, 0x4

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, Leir;->i:[F

    const/4 v2, 0x1

    iput v2, p0, Leir;->j:I

    iput v2, p0, Leir;->k:I

    iput v0, p0, Leir;->l:F

    iput-boolean v2, p0, Leir;->m:Z

    iput-boolean v1, p0, Leir;->n:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method
