.class public final Lnbm;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnbm;

.field private static final e:J


# instance fields
.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x7

    if-ge v3, v4, :cond_0

    const-string v4, " #(+,-0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x20

    int-to-long v5, v3

    int-to-long v7, v4

    const-wide/16 v9, 0x3

    mul-long v7, v7, v9

    const-wide/16 v9, 0x1

    add-long/2addr v5, v9

    long-to-int v4, v7

    shl-long v4, v5, v4

    or-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sput-wide v1, Lnbm;->e:J

    new-instance v1, Lnbm;

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2, v2}, Lnbm;-><init>(III)V

    sput-object v1, Lnbm;->a:Lnbm;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnbm;->b:I

    iput p2, p0, Lnbm;->c:I

    iput p3, p0, Lnbm;->d:I

    return-void
.end method

.method public static a(C)I
    .locals 4

    add-int/lit8 p0, p0, -0x20

    sget-wide v0, Lnbm;->e:J

    mul-int/lit8 p0, p0, 0x3

    ushr-long/2addr v0, p0

    const-wide/16 v2, 0x7

    and-long/2addr v0, v2

    long-to-int p0, v0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static b(Ljava/lang/String;II)I
    .locals 5

    if-eq p1, p2, :cond_5

    const/4 v0, 0x0

    move v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    int-to-char v3, v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_1

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v3

    const v3, 0xf423f

    if-gt v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "precision too large"

    invoke-static {v0, p0, p1, p2}, Lndv;->b(Ljava/lang/String;Ljava/lang/String;II)Lndv;

    move-result-object p0

    throw p0

    :cond_1
    const-string p1, "invalid precision character"

    invoke-static {p1, p0, v1}, Lndv;->a(Ljava/lang/String;Ljava/lang/String;I)Lndv;

    move-result-object p0

    throw p0

    :cond_2
    if-nez v2, :cond_4

    add-int/lit8 v1, p1, 0x1

    if-ne p2, v1, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "invalid precision"

    invoke-static {v0, p0, p1, p2}, Lndv;->b(Ljava/lang/String;Ljava/lang/String;II)Lndv;

    move-result-object p0

    throw p0

    :cond_4
    move v0, v2

    :goto_1
    return v0

    :cond_5
    add-int/lit8 p1, p1, -0x1

    const-string p2, "missing precision"

    invoke-static {p2, p0, p1}, Lndv;->a(Ljava/lang/String;Ljava/lang/String;I)Lndv;

    move-result-object p0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public final c()Z
    .locals 1

    sget-object v0, Lnbm;->a:Lnbm;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 1

    iget v0, p0, Lnbm;->b:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e(IZ)Z
    .locals 5

    invoke-virtual {p0}, Lnbm;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lnbm;->b:I

    const/4 v2, -0x1

    xor-int/2addr p1, v2

    and-int/2addr p1, v0

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    return v3

    :cond_1
    if-nez p2, :cond_3

    iget p1, p0, Lnbm;->d:I

    if-ne p1, v2, :cond_2

    goto :goto_0

    :cond_2
    return v3

    :cond_3
    :goto_0
    iget p1, p0, Lnbm;->c:I

    and-int/lit8 p2, v0, 0x9

    const/16 v4, 0x9

    if-ne p2, v4, :cond_4

    :goto_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    const/16 p2, 0x60

    and-int/2addr v0, p2

    if-ne v0, p2, :cond_5

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_7

    if-eq p1, v2, :cond_6

    goto :goto_2

    :cond_6
    return v3

    :cond_7
    :goto_2
    return v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lnbm;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lnbm;

    iget v1, p1, Lnbm;->b:I

    iget v3, p0, Lnbm;->b:I

    if-ne v1, v3, :cond_1

    iget v1, p1, Lnbm;->c:I

    iget v3, p0, Lnbm;->c:I

    if-ne v1, v3, :cond_1

    iget p1, p1, Lnbm;->d:I

    iget v1, p0, Lnbm;->d:I

    if-ne p1, v1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final f(Ljava/lang/StringBuilder;)V
    .locals 3

    invoke-virtual {p0}, Lnbm;->c()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lnbm;->b:I

    and-int/lit16 v0, v0, -0x81

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    shl-int/2addr v2, v1

    if-gt v2, v0, :cond_1

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    const-string v2, " #(+,-0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lnbm;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    iget v0, p0, Lnbm;->d:I

    if-eq v0, v1, :cond_3

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Lnbm;->d:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    return-void
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lnbm;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnbm;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnbm;->d:I

    add-int/2addr v0, v1

    return v0
.end method
