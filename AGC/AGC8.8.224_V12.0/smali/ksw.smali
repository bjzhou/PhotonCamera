.class public final Lksw;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lkrw;

.field public final b:Lkse;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lkse;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lksz;

    invoke-direct {v0}, Lksz;-><init>()V

    new-instance v1, Lkrv;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lkrv;-><init>([B)V

    invoke-virtual {v1}, Lkrv;->a()V

    if-eqz p1, :cond_4

    iput-object p1, v1, Lkrv;->a:Landroid/content/Context;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    iput-object p1, v1, Lkrv;->c:Lmqp;

    invoke-virtual {v1}, Lkrv;->a()V

    iget-byte p1, v1, Lkrv;->e:B

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, v1, Lkrv;->a:Landroid/content/Context;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lkrw;

    iget-object v2, v1, Lkrv;->b:Lmqp;

    iget-object v3, v1, Lkrv;->c:Lmqp;

    iget-object v1, v1, Lkrv;->d:Lmqp;

    invoke-direct {v0, p1, v2, v3, v1}, Lkrw;-><init>(Landroid/content/Context;Lmqp;Lmqp;Lmqp;)V

    iput-object v0, p0, Lksw;->a:Lkrw;

    iput-object p2, p0, Lksw;->b:Lkse;

    return-void

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, v1, Lkrv;->a:Landroid/content/Context;

    if-nez p2, :cond_2

    const-string p2, " context"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-byte p2, v1, Lkrv;->e:B

    if-nez p2, :cond_3

    const-string p2, " googlerOverridesCheckbox"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Missing required properties:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null context"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Landroid/content/Context;Lkru;)Lksw;
    .locals 2

    new-instance v0, Lksw;

    new-instance v1, Lkse;

    invoke-direct {v1, p1}, Lkse;-><init>(Lkru;)V

    invoke-direct {v0, p0, v1}, Lksw;-><init>(Landroid/content/Context;Lkse;)V

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CollectionBasisLogVerifier{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "collectionBasisContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lksw;->a:Lkrw;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", basis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lksw;->b:Lkse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
