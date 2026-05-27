.class public final Lelg;
.super Ljava/lang/Object;


# static fields
.field public static final a:[F


# instance fields
.field public b:Ljava/nio/FloatBuffer;

.field public final c:[F

.field public final d:[F

.field public final e:[F

.field public f:Lltt;

.field public g:Loxq;

.field public h:Loxq;

.field public i:Loxq;

.field public j:Loxq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x30

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lelg;->a:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lelg;->a:[F

    invoke-static {v0}, Lljr;->p([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lelg;->b:Ljava/nio/FloatBuffer;

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lelg;->c:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lelg;->d:[F

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lelg;->e:[F

    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method
