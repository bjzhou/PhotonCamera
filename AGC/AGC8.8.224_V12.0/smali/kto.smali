.class public final Lkto;
.super Lnnb;


# instance fields
.field a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lnnb;-><init>()V

    iput-object p1, p0, Lkto;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-super {p0, p1}, Lnnb;->a(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public final bY()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkto;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lkto;->a:Ljava/lang/Object;

    return-void
.end method

.method public final e(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lnnb;->e(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
