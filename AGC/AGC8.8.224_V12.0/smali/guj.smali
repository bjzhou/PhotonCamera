.class public final Lguj;
.super Ljava/lang/Object;

# interfaces
.implements Lgui;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lguj;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lgqr;)Lkab;
    .locals 1

    iget v0, p0, Lguj;->a:I

    packed-switch v0, :pswitch_data_0

    sget-object p1, Lkab;->a:Lkab;

    return-object p1

    :pswitch_0
    iget-object p1, p1, Lgqr;->b:Lkab;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lgqr;Ljava/nio/ByteBuffer;)I
    .locals 2

    iget v0, p0, Lguj;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p1, Lgqr;->a:Lkpb;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p2

    iget-object v1, p1, Lgqr;->e:Landroid/graphics/Rect;

    iget-object p1, p1, Lgqr;->b:Lkab;

    invoke-static {v0, p2, v1, p1}, Lcom/google/android/libraries/camera/jni/jpeg/JpegUtilNative;->a(Lkpb;Ljava/nio/ByteBuffer;Landroid/graphics/Rect;Lkab;)I

    move-result p1

    return p1

    :pswitch_0
    iget-object v0, p1, Lgqr;->a:Lkpb;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p2

    iget-object p1, p1, Lgqr;->e:Landroid/graphics/Rect;

    sget-object v1, Lkab;->a:Lkab;

    invoke-static {v0, p2, p1, v1}, Lcom/google/android/libraries/camera/jni/jpeg/JpegUtilNative;->a(Lkpb;Ljava/nio/ByteBuffer;Landroid/graphics/Rect;Lkab;)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lguj;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "byteRotatingCompressor"

    return-object v0

    :pswitch_0
    const-string v0, "exifRotatingCompressor"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
