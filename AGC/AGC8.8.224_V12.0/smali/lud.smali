.class public final Llud;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lmqp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmqp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Llud;->a:Ljava/lang/String;

    iput-object p2, p0, Llud;->b:Lmqp;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null actionText"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/lang/String;)Llud;
    .locals 2

    new-instance v0, Llud;

    sget-object v1, Lmpx;->a:Lmpx;

    invoke-direct {v0, p0, v1}, Llud;-><init>(Ljava/lang/String;Lmqp;)V

    return-object v0
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)Llud;
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    new-instance v0, Llud;

    invoke-static {p1}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Llud;-><init>(Ljava/lang/String;Lmqp;)V

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Llud;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Llud;->b:Lmqp;

    invoke-virtual {v0}, Lmqp;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Llud;->d(Ljava/lang/String;Ljava/lang/String;)Llud;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/String;)Llud;
    .locals 1

    iget-object v0, p0, Llud;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Llud;->d(Ljava/lang/String;Ljava/lang/String;)Llud;

    move-result-object p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Llud;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Llud;

    iget-object v1, p0, Llud;->a:Ljava/lang/String;

    iget-object v3, p1, Llud;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Llud;->b:Lmqp;

    iget-object p1, p1, Llud;->b:Lmqp;

    invoke-virtual {v1, p1}, Lmqp;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Llud;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget-object v2, p0, Llud;->b:Lmqp;

    invoke-virtual {v2}, Lmqp;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Llud;->a:Ljava/lang/String;

    iget-object v1, p0, Llud;->b:Lmqp;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemanticResultText{actionText="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", displayText="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
