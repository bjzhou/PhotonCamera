.class public final Ljdc;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljdd;
    .locals 4

    iget-object v0, p0, Ljdc;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Ljfc;

    invoke-direct {v0}, Ljfc;-><init>()V

    iput-object v0, p0, Ljdc;->b:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Ljdc;->a:Ljava/lang/Object;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Ljdc;->a:Ljava/lang/Object;

    :cond_1
    new-instance v0, Ljdd;

    iget-object v1, p0, Ljdc;->b:Ljava/lang/Object;

    iget-object v2, p0, Ljdc;->a:Ljava/lang/Object;

    check-cast v2, Landroid/os/Looper;

    check-cast v1, Ljfc;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljdd;-><init>(Ljfc;Landroid/os/Looper;[B)V

    return-object v0
.end method

.method public final b()Lhnc;
    .locals 3

    iget-object v0, p0, Ljdc;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v1, p0, Ljdc;->b:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lhnc;

    check-cast v1, Lhna;

    check-cast v0, Lhna;

    invoke-direct {v2, v0, v1}, Lhnc;-><init>(Lhna;Lhna;)V

    return-object v2

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljdc;->a:Ljava/lang/Object;

    if-nez v1, :cond_2

    const-string v1, " early"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Ljdc;->b:Ljava/lang/Object;

    if-nez v1, :cond_3

    const-string v1, " late"

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

.method public final c(Lhna;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Ljdc;->a:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null early"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Lhna;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Ljdc;->b:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null late"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
