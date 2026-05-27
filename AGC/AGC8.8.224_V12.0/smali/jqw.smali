.class public final Ljqw;
.super Ljava/lang/Object;

# interfaces
.implements Ljpv;


# instance fields
.field private final a:Ljpw;


# direct methods
.method public constructor <init>(Ljpw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljqw;->a:Ljpw;

    return-void
.end method


# virtual methods
.method public final b(Ljqy;)V
    .locals 0

    invoke-static {p1}, Ljde;->i(Ljqy;)V

    return-void
.end method

.method public final c(Ljqy;)V
    .locals 0

    invoke-static {p1}, Ljde;->i(Ljqy;)V

    return-void
.end method

.method public final d(Ljqy;)V
    .locals 0

    invoke-static {p1}, Ljde;->i(Ljqy;)V

    return-void
.end method

.method public final e(Ljqy;)V
    .locals 0

    invoke-static {p1}, Ljde;->i(Ljqy;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Ljqw;

    iget-object v0, p0, Ljqw;->a:Ljpw;

    iget-object p1, p1, Ljqw;->a:Ljpw;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Ljqw;->a:Ljpw;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
