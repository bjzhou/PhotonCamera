.class public final Lxh;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lxh;->a:Ljava/lang/Object;

    return-void
.end method

.method public static final a(Lxg;I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lxg;->b:[I

    iget v1, p0, Lxg;->d:I

    invoke-static {v0, v1, p1}, Lxi;->a([III)I

    move-result p1

    if-ltz p1, :cond_1

    iget-object p0, p0, Lxg;->c:[Ljava/lang/Object;

    aget-object p0, p0, p1

    sget-object p1, Lxh;->a:Ljava/lang/Object;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final b(Lxg;)V
    .locals 8

    iget v0, p0, Lxg;->d:I

    iget-object v1, p0, Lxg;->b:[I

    iget-object v2, p0, Lxg;->c:[Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    aget-object v6, v2, v4

    sget-object v7, Lxh;->a:Ljava/lang/Object;

    if-eq v6, v7, :cond_1

    if-eq v4, v5, :cond_0

    aget v7, v1, v4

    aput v7, v1, v5

    aput-object v6, v2, v5

    const/4 v6, 0x0

    aput-object v6, v2, v4

    :cond_0
    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Lxg;->a:Z

    iput v5, p0, Lxg;->d:I

    return-void
.end method
