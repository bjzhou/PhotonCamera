.class public abstract Loll;
.super Lolf;


# direct methods
.method public constructor <init>(Loku;)V
    .locals 1

    invoke-direct {p0, p1}, Lolf;-><init>(Loku;)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Loku;->d()Lola;

    move-result-object p1

    sget-object v0, Lolb;->a:Lolb;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Coroutines with restricted suspension must have EmptyCoroutineContext"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final d()Lola;
    .locals 1

    sget-object v0, Lolb;->a:Lolb;

    return-object v0
.end method
