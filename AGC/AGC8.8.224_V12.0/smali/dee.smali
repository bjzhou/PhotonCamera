.class final Ldee;
.super Ljava/lang/Object;


# instance fields
.field public a:Lmqp;

.field private b:J

.field private c:Lmvv;

.field private d:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lmpx;->a:Lmpx;

    iput-object p1, p0, Ldee;->a:Lmqp;

    return-void
.end method


# virtual methods
.method public final a()Ldef;
    .locals 5

    iget-byte v0, p0, Ldee;->d:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ldee;->c:Lmvv;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ldef;

    iget-wide v2, p0, Ldee;->b:J

    iget-object v4, p0, Ldee;->a:Lmqp;

    invoke-direct {v1, v2, v3, v0, v4}, Ldef;-><init>(JLmvv;Lmqp;)V

    return-object v1

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v1, p0, Ldee;->d:B

    if-nez v1, :cond_2

    const-string v1, " timestampNs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Ldee;->c:Lmvv;

    if-nez v1, :cond_3

    const-string v1, " cameraVisionKitChipResults"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final b(Ljava/util/List;)V
    .locals 0

    invoke-static {p1}, Lmvv;->j(Ljava/util/Collection;)Lmvv;

    move-result-object p1

    iput-object p1, p0, Ldee;->c:Lmvv;

    return-void
.end method

.method public final c(J)V
    .locals 0

    iput-wide p1, p0, Ldee;->b:J

    const/4 p1, 0x1

    iput-byte p1, p0, Ldee;->d:B

    return-void
.end method
