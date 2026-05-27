.class public final Lnon;
.super Lnmw;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lnou;


# direct methods
.method public constructor <init>(Lnou;)V
    .locals 0

    invoke-direct {p0}, Lnmw;-><init>()V

    iput-object p1, p0, Lnon;->a:Lnou;

    return-void
.end method


# virtual methods
.method protected final bY()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnon;->a:Lnou;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delegate=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnon;->a:Lnou;

    return-void
.end method

.method public final run()V
    .locals 1

    iget-object v0, p0, Lnon;->a:Lnou;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lnnb;->f(Lnou;)Z

    :cond_0
    return-void
.end method
