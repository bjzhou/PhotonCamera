.class public final Lkfh;
.super Ljava/lang/Object;


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkfh;->b:I

    iput p2, p0, Lkfh;->c:I

    iput p3, p0, Lkfh;->d:I

    iput-boolean p4, p0, Lkfh;->a:Z

    return-void
.end method

.method public static a()Lkff;
    .locals 2

    new-instance v0, Lkff;

    invoke-direct {v0}, Lkff;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lkff;->d(Z)V

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 2

    iget v0, p0, Lkfh;->b:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final c()Z
    .locals 2

    iget v0, p0, Lkfh;->d:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final d()Z
    .locals 2

    iget v0, p0, Lkfh;->c:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lkfh;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    check-cast p1, Lkfh;

    iget v1, p0, Lkfh;->b:I

    iget v3, p1, Lkfh;->b:I

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    if-ne v1, v3, :cond_3

    iget v1, p0, Lkfh;->c:I

    iget v3, p1, Lkfh;->c:I

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_3

    iget v1, p0, Lkfh;->d:I

    iget v3, p1, Lkfh;->d:I

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_3

    iget-boolean v1, p0, Lkfh;->a:Z

    iget-boolean p1, p1, Lkfh;->a:Z

    if-ne v1, p1, :cond_3

    return v0

    :cond_1
    throw v4

    :cond_2
    throw v4

    :cond_3
    return v2

    :cond_4
    throw v4

    :cond_5
    return v2
.end method

.method public final hashCode()I
    .locals 5

    iget v0, p0, Lkfh;->b:I

    invoke-static {v0}, Lkfg;->t(I)V

    iget v1, p0, Lkfh;->c:I

    invoke-static {v1}, Lkfg;->t(I)V

    iget v2, p0, Lkfh;->d:I

    invoke-static {v2}, Lkfg;->t(I)V

    const/4 v3, 0x1

    iget-boolean v4, p0, Lkfh;->a:Z

    if-eq v3, v4, :cond_0

    const/16 v3, 0x4d5

    goto :goto_0

    :cond_0
    const/16 v3, 0x4cf

    :goto_0
    const v4, 0xf4243

    xor-int/2addr v0, v4

    mul-int v0, v0, v4

    xor-int/2addr v0, v1

    mul-int v0, v0, v4

    xor-int/2addr v0, v2

    mul-int v0, v0, v4

    xor-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lkfh;->b:I

    invoke-static {v0}, Lkfg;->s(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lkfh;->c:I

    invoke-static {v1}, Lkfg;->s(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lkfh;->d:I

    invoke-static {v2}, Lkfg;->s(I)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lkfh;->a:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Spec3A{exposure="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", focus="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", whiteBalance="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", forCapture="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
