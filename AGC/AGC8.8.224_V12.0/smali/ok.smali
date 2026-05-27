.class final Lok;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:I

.field private static final b:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x14

    new-array v0, v0, [[I

    const/16 v1, 0xa9

    filled-new-array {v1, v1}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x203c

    filled-new-array {v1, v1}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x2049

    filled-new-array {v1, v1}, [I

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x2122

    filled-new-array {v1, v1}, [I

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0x2139

    filled-new-array {v1, v1}, [I

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0x2194

    const/16 v2, 0x21aa

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/16 v1, 0x231a

    const/16 v2, 0x2328

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/16 v1, 0x23cf

    const/16 v2, 0x23fa

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0x24c2

    filled-new-array {v1, v1}, [I

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v1, 0x25aa

    const/16 v2, 0x27bf

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/16 v1, 0x2934

    const/16 v2, 0x2935

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/16 v1, 0x2b05

    const/16 v2, 0x2b55

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const/16 v1, 0x3030

    filled-new-array {v1, v1}, [I

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const/16 v1, 0x303d

    filled-new-array {v1, v1}, [I

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const/16 v1, 0x3297

    const/16 v2, 0x3299

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const v1, 0x1f004

    filled-new-array {v1, v1}, [I

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const v1, 0x1f0cf

    filled-new-array {v1, v1}, [I

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const v1, 0x1f170

    const v2, 0x1f251

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const v1, 0x1f300

    const v2, 0x1f6f6

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const v1, 0x1f910

    const v2, 0x1f9c0

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sput-object v0, Lok;->b:[[I

    return-void
.end method

.method static a(I)Z
    .locals 5

    sget-object v0, Lok;->b:[[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x14

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    aget v4, v3, v1

    if-lt p0, v4, :cond_1

    const/4 v4, 0x1

    aget v3, v3, v4

    if-le p0, v3, :cond_0

    goto :goto_1

    :cond_0
    return v4

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method
