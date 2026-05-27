.class public final Ljur;
.super Ljava/lang/Object;


# static fields
.field private static final e:Ljup;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Z

.field private final f:Ljup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljup;->a:Ljup;

    sput-object v0, Ljur;->e:Ljup;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IZLjup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljur;->a:I

    iput-object p2, p0, Ljur;->b:Ljava/lang/String;

    iput p3, p0, Ljur;->c:I

    iput-boolean p4, p0, Ljur;->d:Z

    iput-object p5, p0, Ljur;->f:Ljup;

    return-void
.end method

.method public static a()Ljuq;
    .locals 2

    new-instance v0, Ljuq;

    invoke-direct {v0}, Ljuq;-><init>()V

    sget-object v1, Ljur;->e:Ljup;

    iput-object v1, v0, Ljuq;->d:Ljup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljuq;->b(I)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Ljuq;->b:Z

    iget-byte v1, v0, Ljuq;->c:B

    or-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    iput-byte v1, v0, Ljuq;->c:B

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljur;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Ljur;

    iget v1, p0, Ljur;->a:I

    iget v3, p1, Ljur;->a:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Ljur;->b:Ljava/lang/String;

    iget-object v3, p1, Ljur;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Ljur;->c:I

    iget v3, p1, Ljur;->c:I

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Ljur;->d:Z

    iget-boolean v3, p1, Ljur;->d:Z

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Ljur;->f:Ljup;

    iget-object p1, p1, Ljur;->f:Ljup;

    invoke-virtual {v1, p1}, Ljup;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Ljur;->a:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget-object v2, p0, Ljur;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Ljur;->c:I

    xor-int/2addr v0, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Ljur;->d:Z

    if-eq v2, v3, :cond_0

    const/16 v2, 0x4d5

    goto :goto_0

    :cond_0
    const/16 v2, 0x4cf

    :goto_0
    iget-object v3, p0, Ljur;->f:Ljup;

    invoke-virtual {v3}, Ljup;->hashCode()I

    move-result v3

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Ljur;->a:I

    iget-object v1, p0, Ljur;->b:Ljava/lang/String;

    iget v2, p0, Ljur;->c:I

    iget-boolean v3, p0, Ljur;->d:Z

    iget-object v4, p0, Ljur;->f:Ljup;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NamedExecutorOptions{threadCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", name="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", androidThreadPriority="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", propagateErrors="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", threadBodyDecorator="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
