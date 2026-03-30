.class public final Lqkf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqfb;


# instance fields
.field public final a:Landroid/hardware/HardwareBuffer;

.field public final b:Lqjs;

.field private final c:Lcom/google/android/libraries/oliveoil/gl/EGLImage;


# direct methods
.method public constructor <init>(Lqjs;Lcom/google/android/libraries/oliveoil/gl/EGLImage;Landroid/hardware/HardwareBuffer;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lqkf;->b:Lqjs;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lqkf;->c:Lcom/google/android/libraries/oliveoil/gl/EGLImage;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    iput-object p3, p0, Lqkf;->a:Landroid/hardware/HardwareBuffer;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final close()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lqkf;->a:Landroid/hardware/HardwareBuffer;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lqkf;->b:Lqjs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->close()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lqkf;->c:Lcom/google/android/libraries/oliveoil/gl/EGLImage;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Lqia;->close()V

    goto/32 :goto_4

    nop

    nop

    nop
.end method
