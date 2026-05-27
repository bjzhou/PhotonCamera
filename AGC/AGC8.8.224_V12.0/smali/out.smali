.class public final Lout;
.super Ljava/lang/Object;


# static fields
.field public static final a:Loxb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Loxb;

    const-string v1, "NO_VALUE"

    invoke-direct {v0, v1}, Loxb;-><init>(Ljava/lang/String;)V

    sput-object v0, Lout;->a:Loxb;

    return-void
.end method

.method public static final a([Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    array-length v0, p0

    long-to-int p2, p1

    add-int/lit8 v0, v0, -0x1

    and-int p1, p2, v0

    aget-object p0, p0, p1

    return-object p0
.end method

.method public static final b([Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1

    array-length v0, p0

    long-to-int p2, p1

    add-int/lit8 v0, v0, -0x1

    and-int p1, p2, v0

    aput-object p3, p0, p1

    return-void
.end method

.method public static synthetic c(III)Loun;
    .locals 1

    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p2, p2, 0x1

    xor-int/lit8 p2, p2, 0x1

    and-int/2addr p0, p2

    new-instance p2, Lous;

    add-int/2addr p1, p0

    invoke-direct {p2, p0, p1}, Lous;-><init>(II)V

    return-object p2
.end method
