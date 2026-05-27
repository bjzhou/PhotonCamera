.class public final Lmjm;
.super Ljava/lang/Object;


# static fields
.field public static final a:[I

.field public static final b:[I

.field public static final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lmjm;->a:[I

    const v0, 0x7f04033a

    const v1, 0x7f04033b

    const v2, 0x7f040338

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lmjm;->b:[I

    const v0, 0x7f040335

    const v1, 0x7f040339

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lmjm;->c:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1010139
        0x7f040305
        0x7f040337
        0x7f04047e
        0x7f040597
        0x7f040599
        0x7f04070b
        0x7f04070e
        0x7f040713
    .end array-data
.end method
