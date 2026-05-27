.class public final Lokq;
.super Ljava/lang/Object;

# interfaces
.implements Loky;


# instance fields
.field private final a:Lomk;

.field private final b:Loky;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public constructor <init>(Loky;Lomk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lokq;->a:Lomk;

    instance-of p2, p1, Lokq;

    if-eqz p2, :cond_0

    check-cast p1, Lokq;

    iget-object p1, p1, Lokq;->b:Loky;

    :cond_0
    iput-object p1, p0, Lokq;->b:Loky;

    return-void
.end method


# virtual methods
.method public final a(Lokx;)Lokx;
    .locals 1

    iget-object v0, p0, Lokq;->a:Lomk;

    invoke-interface {v0, p1}, Lomk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokx;

    return-object p1
.end method

.method public final b(Loky;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lokq;->b:Loky;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
