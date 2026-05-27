.class public final Ldbb;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Lklv;

.field public e:Lika;

.field public f:Z

.field public g:B

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Ldbb;->f:Z

    iget-byte p1, p0, Ldbb;->g:B

    or-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    iput-byte p1, p0, Ldbb;->g:B

    return-void
.end method

.method public final b(Lklv;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Ldbb;->d:Lklv;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null cameraFacing"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Ldbb;->a:I

    iget-byte p1, p0, Ldbb;->g:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Ldbb;->g:B

    return-void
.end method

.method public final d(Lika;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Ldbb;->e:Lika;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null mode"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Ldbb;->c:I

    iget-byte p1, p0, Ldbb;->g:B

    or-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    iput-byte p1, p0, Ldbb;->g:B

    return-void
.end method

.method public final f(I)V
    .locals 0

    iput p1, p0, Ldbb;->b:I

    iget-byte p1, p0, Ldbb;->g:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Ldbb;->g:B

    return-void
.end method
