.class public final Landroidx/media3/muxer/AnnexBToAvcc;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "annexbtoavcc"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static native processNative(Ljava/nio/ByteBuffer;I)V
.end method
