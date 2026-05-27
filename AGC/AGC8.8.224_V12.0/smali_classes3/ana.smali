.class public final Lana;
.super Ljava/lang/Object;


# static fields
.field public static final a:[[S

.field public static final b:[S


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xa

    new-array v0, v0, [[S

    const/4 v1, 0x2

    new-array v2, v1, [S

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [S

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [S

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [S

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [S

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [S

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [S

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [S

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [S

    fill-array-data v2, :array_8

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v1, v1, [S

    fill-array-data v1, :array_9

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lana;->a:[[S

    new-array v0, v3, [S

    fill-array-data v0, :array_a

    sput-object v0, Lana;->b:[S

    return-void

    :array_0
    .array-data 2
        0x2s
        0x2s
    .end array-data

    :array_1
    .array-data 2
        0x1s
        0x1s
    .end array-data

    :array_2
    .array-data 2
        0x5s
        0x6s
    .end array-data

    :array_3
    .array-data 2
        0x5s
        0x1s
    .end array-data

    :array_4
    .array-data 2
        0x6s
        0x6s
    .end array-data

    :array_5
    .array-data 2
        0x6s
        0x7s
    .end array-data

    :array_6
    .array-data 2
        0x9s
        0x9s
    .end array-data

    :array_7
    .array-data 2
        0x9s
        0xas
    .end array-data

    :array_8
    .array-data 2
        0x4s
        0x4s
    .end array-data

    :array_9
    .array-data 2
        0x8s
        0x9s
    .end array-data

    :array_a
    .array-data 2
        0x2s
        0x8s
        0xds
        0x1s
        0x4s
        0x5s
        0x10s
        0x12s
    .end array-data
.end method

.method public static a(Landroid/media/MediaFormat;Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
