.class public final Ldxr;
.super Ljava/lang/Object;


# static fields
.field public static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xc

    const/4 v1, 0x2

    const v2, 0xbb80

    invoke-static {v2, v0, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    sput v0, Ldxr;->a:I

    return-void
.end method
