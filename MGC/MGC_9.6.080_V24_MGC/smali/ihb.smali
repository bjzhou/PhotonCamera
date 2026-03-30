.class public final synthetic Lihb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lsuu;

.field public final synthetic b:Lsuu;


# direct methods
.method public synthetic constructor <init>(Lsuu;Lsuu;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lihb;->b:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lihb;->a:Lsuu;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 5

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

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

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_3
    iget-object v0, p0, Lihb;->a:Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v1, v3, v0, v2}, Landroid/opengl/EGL15;->eglCreateSync(Landroid/opengl/EGLDisplay;I[JI)Landroid/opengl/EGLSync;

    move-result-object v0

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    invoke-virtual {p0, v0}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v2, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-boolean v1, Lqhh;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    goto/32 :goto_15

    nop

    nop

    :goto_a
    aput-wide v3, v0, v2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    const-wide/16 v3, 0x3038

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x1b

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_d
    const/16 v3, 0x30f9

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lihb;->b:Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_9

    nop

    nop

    :goto_13
    const v1, 0x11

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    new-array v0, v0, [J

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method
