.class public final Llug;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lluf;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Llug;->a:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method


# virtual methods
.method public final a(Llqw;)Lpcg;
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p1, Llqw;->b:Lpcg;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget p0, p0, Llug;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    nop

    :goto_5
    if-nez p0, :cond_0

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object p0, Lpcg;->a:Lpcg;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final b(Llqw;Ljava/nio/ByteBuffer;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Llug;->a:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    iget-object p1, p1, Llqw;->b:Lpcg;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p1, Llqw;->a:Lprw;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    iget-object v0, p1, Llqw;->d:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p1, p1, Llqw;->d:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p0, p2, v0, p1}, Lcom/google/android/libraries/camera/jni/jpeg/JpegUtilNative;->a(Lprw;Ljava/nio/ByteBuffer;Landroid/graphics/Rect;Lpcg;)I

    move-result p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v0, Lpcg;->a:Lpcg;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_c
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p0, p2, p1, v0}, Lcom/google/android/libraries/camera/jni/jpeg/JpegUtilNative;->a(Lprw;Ljava/nio/ByteBuffer;Landroid/graphics/Rect;Lpcg;)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p1, Llqw;->a:Lprw;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    const-string p0, "byteRotatingCompressor"

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    :goto_2
    sget-object p0, Lcom/google/android/apps/camera/debugui/aq/mYisgsXg;->oqzJhc:Ljava/lang/String;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget p0, p0, Llug;->a:I

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

    :goto_5
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop
.end method
