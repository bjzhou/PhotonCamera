.class public final Llma;
.super Ljava/lang/Object;

# interfaces
.implements Llhh;


# instance fields
.field public final a:Lmqp;

.field private final b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILmqp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Llma;->b:I

    iput-object p2, p0, Llma;->a:Lmqp;

    return-void
.end method

.method public static final c()Lllz;
    .locals 3

    new-instance v0, Lllz;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lllz;-><init>([B)V

    const/4 v1, 0x1

    iput-byte v1, v0, Lllz;->a:B

    sget-object v2, Lmpx;->a:Lmpx;

    iput-object v2, v0, Lllz;->c:Ljava/lang/Object;

    iput v1, v0, Lllz;->b:I

    return-object v0
.end method


# virtual methods
.method public final synthetic a()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public final b()Z
    .locals 2

    iget v0, p0, Llma;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Llma;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Llma;

    iget v1, p0, Llma;->b:I

    iget v3, p1, Llma;->b:I

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Llma;->a:Lmqp;

    iget-object p1, p1, Llma;->a:Lmqp;

    invoke-virtual {v1, p1}, Lmqp;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2

    :cond_2
    const/4 p1, 0x0

    throw p1

    :cond_3
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Llma;->b:I

    invoke-static {v0}, Llhi;->b(I)V

    iget-object v1, p0, Llma;->a:Lmqp;

    invoke-virtual {v1}, Lmqp;->hashCode()I

    move-result v1

    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int v0, v0, v2

    xor-int/lit16 v0, v0, 0x4d5

    mul-int v0, v0, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Llma;->b:I

    invoke-static {v0}, Llhi;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Llma;->a:Lmqp;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StorageConfigurations{enablement="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", manualCapture=false, dirStatsConfigurations="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
