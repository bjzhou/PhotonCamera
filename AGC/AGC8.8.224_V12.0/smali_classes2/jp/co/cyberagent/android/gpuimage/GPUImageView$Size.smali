.class public Ljp/co/cyberagent/android/gpuimage/GPUImageView$Size;
.super Ljava/lang/Object;
.source "GPUImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/cyberagent/android/gpuimage/GPUImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Size"
.end annotation


# instance fields
.field height:I

.field width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$Size;->width:I

    .line 450
    iput p2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$Size;->height:I

    .line 451
    return-void
.end method
