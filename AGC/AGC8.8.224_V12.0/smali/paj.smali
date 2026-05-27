.class public final Lpaj;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789abcdef"

    invoke-static {v0}, Lljz;->q(Ljava/lang/String;)[B

    return-void
.end method

.method public static final a(Lpaf;I[BI)Z
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lpaf;->c:I

    iget-object v1, p0, Lpaf;->a:[B

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    if-ge v3, p3, :cond_2

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lpaf;->f:Lpaf;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lpaf;->a:[B

    iget v0, p0, Lpaf;->b:I

    iget v1, p0, Lpaf;->c:I

    move v6, v1

    move-object v1, p1

    move p1, v0

    move v0, v6

    :cond_0
    aget-byte v4, v1, p1

    aget-byte v5, p2, v3

    if-eq v4, v5, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method
