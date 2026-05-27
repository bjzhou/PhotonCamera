.class public final Llax;
.super Llbk;


# direct methods
.method protected constructor <init>(Llbd;Lkzc;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Llbk;-><init>(Llbd;Lkzc;)V

    return-void
.end method

.method public static b(Llbd;ILjava/nio/ByteBuffer;)Llax;
    .locals 2

    new-instance v0, Llax;

    new-instance v1, Llaw;

    invoke-direct {v1, p0, p1, p2}, Llaw;-><init>(Llbd;ILjava/nio/ByteBuffer;)V

    invoke-static {p0, v1}, Llbk;->d(Llbd;Ljava/util/concurrent/Callable;)Lkzc;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Llax;-><init>(Llbd;Lkzc;)V

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Llbk;->f()Llcv;

    move-result-object v0

    check-cast v0, Llcm;

    invoke-virtual {v0}, Llcm;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GLBuffer{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
