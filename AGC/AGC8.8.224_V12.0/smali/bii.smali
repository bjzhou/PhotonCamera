.class public final Lbii;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:F

.field public final d:I

.field public final e:F

.field public final f:F

.field public final g:I

.field public final h:I

.field public final i:F

.field public final j:Z

.field public final k:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FIIFFIIFZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbii;->a:Ljava/lang/String;

    iput-object p2, p0, Lbii;->b:Ljava/lang/String;

    iput p3, p0, Lbii;->c:F

    iput p4, p0, Lbii;->k:I

    iput p5, p0, Lbii;->d:I

    iput p6, p0, Lbii;->e:F

    iput p7, p0, Lbii;->f:F

    iput p8, p0, Lbii;->g:I

    iput p9, p0, Lbii;->h:I

    iput p10, p0, Lbii;->i:F

    iput-boolean p11, p0, Lbii;->j:Z

    return-void
.end method


# virtual methods
.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lbii;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lbii;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    int-to-float v0, v0

    iget v1, p0, Lbii;->c:F

    add-float/2addr v0, v1

    iget v1, p0, Lbii;->k:I

    add-int/lit8 v2, v1, -0x1

    if-eqz v1, :cond_0

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lbii;->d:I

    add-int/2addr v0, v1

    iget v1, p0, Lbii;->e:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v1, v1

    mul-int/lit8 v0, v0, 0x1f

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lbii;->g:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method
