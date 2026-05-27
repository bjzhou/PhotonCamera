.class public final Lnzn;
.super Ljava/lang/Object;


# static fields
.field static final a:I

.field static final b:I

.field static final c:I

.field static final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lnzn;->c(II)I

    move-result v2

    sput v2, Lnzn;->a:I

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lnzn;->c(II)I

    move-result v0

    sput v0, Lnzn;->b:I

    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-static {v2, v0}, Lnzn;->c(II)I

    move-result v0

    sput v0, Lnzn;->c:I

    invoke-static {v1, v2}, Lnzn;->c(II)I

    move-result v0

    sput v0, Lnzn;->d:I

    return-void
.end method

.method public static a(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public static b(I)I
    .locals 0

    and-int/lit8 p0, p0, 0x7

    return p0
.end method

.method public static c(II)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    or-int/2addr p0, p1

    return p0
.end method
