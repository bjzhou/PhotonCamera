.class public final synthetic Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public synthetic f$0:Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;

.field public synthetic f$1:Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$OnBufferReleasedListener;

.field public synthetic f$2:Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$OnPresentationTimestampAvailableListener;

.field public synthetic f$3:Landroid/hardware/HardwareBuffer;

.field public synthetic f$4:Landroid/graphics/Rect;

.field public synthetic f$5:Landroid/graphics/Rect;

.field public synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$OnBufferReleasedListener;Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$OnPresentationTimestampAvailableListener;Landroid/hardware/HardwareBuffer;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;

    iput-object p2, p0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$$ExternalSyntheticLambda1;->f$1:Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$OnBufferReleasedListener;

    iput-object p3, p0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$$ExternalSyntheticLambda1;->f$2:Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$OnPresentationTimestampAvailableListener;

    iput-object p4, p0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$$ExternalSyntheticLambda1;->f$3:Landroid/hardware/HardwareBuffer;

    iput-object p5, p0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$$ExternalSyntheticLambda1;->f$4:Landroid/graphics/Rect;

    iput-object p6, p0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$$ExternalSyntheticLambda1;->f$5:Landroid/graphics/Rect;

    iput p7, p0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$$ExternalSyntheticLambda1;->f$6:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;

    iget-object v1, p0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$$ExternalSyntheticLambda1;->f$1:Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$OnBufferReleasedListener;

    iget-object v2, p0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$$ExternalSyntheticLambda1;->f$2:Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$OnPresentationTimestampAvailableListener;

    iget-object v3, p0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$$ExternalSyntheticLambda1;->f$3:Landroid/hardware/HardwareBuffer;

    iget-object v4, p0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$$ExternalSyntheticLambda1;->f$4:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$$ExternalSyntheticLambda1;->f$5:Landroid/graphics/Rect;

    iget v6, p0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$$ExternalSyntheticLambda1;->f$6:I

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->lambda$displayBuffer$1$com-google-android-libraries-oliveoil-bufferflinger-BufferFlinger(Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$OnBufferReleasedListener;Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$OnPresentationTimestampAvailableListener;Landroid/hardware/HardwareBuffer;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    return-void
.end method
