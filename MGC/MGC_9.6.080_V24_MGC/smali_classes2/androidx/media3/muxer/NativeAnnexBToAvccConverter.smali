.class public final Landroidx/media3/muxer/NativeAnnexBToAvccConverter;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ledx;


# static fields
.field private static final b:Ledl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_2

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_4
    new-instance v0, Ledl;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0, v1}, Ledl;-><init>([Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    :goto_6
    const v0, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    sput-object v0, Landroidx/media3/muxer/NativeAnnexBToAvccConverter;->b:Ledl;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    const v1, 0x9

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v1, "annexbtoavcc"

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    :goto_e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method private static native processNative(Ljava/nio/ByteBuffer;I)V
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_18

    nop

    nop

    :goto_2
    invoke-static {p0, v0}, Ldvz;->e(ZLjava/lang/Object;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    const-string v0, "The input buffer should have position set to 0."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object p1

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    :goto_8
    invoke-static {p1, p0}, Landroidx/media3/muxer/NativeAnnexBToAvccConverter;->processNative(Ljava/nio/ByteBuffer;I)V

    goto/32 :goto_b

    nop

    nop

    :goto_9
    sget-object p0, Landroidx/media3/muxer/NativeAnnexBToAvccConverter;->b:Ledl;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_a
    throw p0

    nop

    :goto_b
    return-object p1

    nop

    :goto_c
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_d
    if-eqz p0, :cond_1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    :goto_e
    const-string p1, "Failed to load native library"

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez p0, :cond_2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_14
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p0, v0}, Ldvz;->e(ZLjava/lang/Object;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_17
    const-string v0, "Conversion only works with direct ByteBuffers"

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_18
    const/4 p0, 0x0

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Ledl;->a()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop
.end method
