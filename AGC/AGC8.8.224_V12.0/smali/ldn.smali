.class public final Lldn;
.super Ljava/lang/Object;

# interfaces
.implements Lkyk;


# instance fields
.field public final a:Landroid/hardware/HardwareBuffer;

.field public final b:Lldc;

.field private final c:Lcom/google/android/libraries/oliveoil/gl/EGLImage;


# direct methods
.method public constructor <init>(Lldc;Lcom/google/android/libraries/oliveoil/gl/EGLImage;Landroid/hardware/HardwareBuffer;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lldn;->b:Lldc;

    iput-object p2, p0, Lldn;->c:Lcom/google/android/libraries/oliveoil/gl/EGLImage;

    iput-object p3, p0, Lldn;->a:Landroid/hardware/HardwareBuffer;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lldn;->b:Lldc;

    invoke-virtual {v0}, Llbk;->close()V

    iget-object v0, p0, Lldn;->c:Lcom/google/android/libraries/oliveoil/gl/EGLImage;

    invoke-virtual {v0}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close()V

    iget-object v0, p0, Lldn;->a:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    return-void
.end method
