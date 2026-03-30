.class public final Lihf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lihf;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

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

    nop

    :goto_3
    iput p2, p0, Lihf;->b:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I[B)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lihf;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Lihf;->b:I

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
.end method


# virtual methods
.method public final run()V
    .locals 7

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :pswitch_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Lcom/google/googlex/gcam/base/OwningNativePointer;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lcom/google/googlex/gcam/base/OwningNativePointer;->close()V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v5}, Loxv;->a(Ljava/lang/Object;)V

    goto/32 :goto_2f

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p0}, La;->aG(Loyn;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p0, Lijm;

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_8
    check-cast p0, Loxv;

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lihr;->b()V

    :goto_c
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    :pswitch_2
    goto/32 :goto_7e

    nop

    nop

    :goto_e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v1, v0, Lihg;->f:Ljavax/microedition/khronos/egl/EGL10;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_10
    check-cast p0, Lihg;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, v0, Lihg;->j:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_12
    iget-object v0, v0, Lihg;->e:Ljavax/microedition/khronos/egl/EGLSurface;

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

    :goto_13
    iget-object p0, p0, Lihf;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_14
    if-nez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {}, Lipi;->h()V

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_16
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lihr;->e:Loyn;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {p0, v0}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    monitor-enter v0

    nop

    :try_start_0
    iget-object v1, p0, Lihf;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    move-object v2, v1

    nop

    check-cast v2, Lihg;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lihg;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_2

    nop

    nop

    nop

    move-object v2, v1

    nop

    nop

    nop

    check-cast v2, Lihg;

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lihg;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_2

    nop

    nop

    move-object v2, v1

    nop

    nop

    nop

    nop

    check-cast v2, Lihg;

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lihg;->l:Lkek;

    nop

    nop

    check-cast v1, Lihg;

    nop

    nop

    nop

    iget-object v1, v1, Lihg;->g:Ljavax/microedition/khronos/opengles/GL10;

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lkek;->r:Ljmx;

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v1}, Ljmx;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    :cond_1
    iget-object v1, p0, Lihf;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    move-object v2, v1

    nop

    nop

    check-cast v2, Lihg;

    nop

    nop

    nop

    iget-object v2, v2, Lihg;->f:Ljavax/microedition/khronos/egl/EGL10;

    nop

    nop

    nop

    move-object v3, v1

    nop

    nop

    check-cast v3, Lihg;

    nop

    iget-object v3, v3, Lihg;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lihg;

    nop

    iget-object v1, v1, Lihg;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    nop

    nop

    invoke-interface {v2, v3, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    iget-object v1, p0, Lihf;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v1, Lihg;

    nop

    iput-boolean v4, v1, Lihg;->h:Z

    nop

    nop

    :cond_2
    iget-object p0, p0, Lihf;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Lihg;

    nop

    iget-object p0, p0, Lihg;->j:Ljava/lang/Object;

    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Lihv;->b()V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {p0}, La;->aF(Loyn;)V

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    :pswitch_4
    goto/32 :goto_2c

    nop

    nop

    :goto_1f
    iget-object p0, p0, Lihf;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_6c

    nop

    nop

    :goto_21
    iget-object v2, v0, Lihg;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_23
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_1
    check-cast p0, Lijm;

    nop

    nop

    iput-object v6, p0, Lijm;->c:Ljava/util/concurrent/Future;

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_24
    check-cast p0, Lign;

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_25
    iget-object p0, p0, Lihf;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_26
    invoke-interface {p0, v0}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v0, v0, Lihg;->d:Ljavax/microedition/khronos/egl/EGLContext;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_28
    return-void

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_29
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_59

    nop

    nop

    nop

    :goto_2a
    return-void

    nop

    :pswitch_7
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v2, v0, Lihg;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object p0, p0, Lihf;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_2d
    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_2e
    iget-object v0, v0, Lihg;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_2f
    return-void

    nop

    :pswitch_8
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const/high16 v0, 0x3f000000    # 0.5f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_31
    const v1, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_32
    return-void

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_68

    nop

    nop

    nop

    :goto_33
    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_34
    check-cast v0, Ljava/lang/Boolean;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_35
    iget-object v0, p0, Lihf;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-interface {p0}, Lpci;->close()V

    goto/32 :goto_76

    nop

    nop

    :goto_37
    invoke-virtual {p0, v0}, Lijm;->c(F)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_38
    check-cast v0, Lijm;

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iput-object v6, p0, Lihg;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_3a
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p0, v3}, Loxv;->a(Ljava/lang/Object;)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    check-cast p0, Lihr;

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

    nop

    nop

    :goto_3d
    iget-object v1, v0, Lihg;->f:Ljavax/microedition/khronos/egl/EGL10;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object p0, p0, Lihf;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3f
    return-void

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_75

    nop

    nop

    nop

    :goto_40
    iget-object p0, p0, Lihf;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_41
    iget-object p0, p0, Lihf;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_42
    move-object v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_43
    iget-object p0, p0, Lihf;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_44
    check-cast p0, Loxv;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_45
    invoke-virtual {p0, v1}, Lijm;->c(F)V

    goto/32 :goto_d

    nop

    nop

    :goto_46
    iget v0, p0, Lihf;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_47
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_49
    check-cast p0, Lijm;

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    return-void

    nop

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_4b
    return-void

    nop

    :pswitch_e
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_4c
    return-void

    nop

    :pswitch_f
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_4d
    throw p0

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_b
        :pswitch_13
        :pswitch_a
        :pswitch_e
        :pswitch_2
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_5
        :pswitch_4
        :pswitch_d
        :pswitch_9
        :pswitch_7
        :pswitch_c
        :pswitch_1
        :pswitch_f
        :pswitch_8
        :pswitch_10
        :pswitch_6
    .end packed-switch

    :goto_4e
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object p0, p0, Lihf;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {p0}, Lign;->invalidate()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_51
    iget-object p0, p0, Lihf;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_52
    check-cast v0, Lihg;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_53
    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_54
    return-void

    nop

    nop

    nop

    :pswitch_10
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_55
    const/4 v6, 0x0

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_7d

    nop

    nop

    :goto_56
    iput-object v6, p0, Lihg;->d:Ljavax/microedition/khronos/egl/EGLContext;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_57
    iget-object v1, v0, Lihg;->f:Ljavax/microedition/khronos/egl/EGL10;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_58
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :cond_3
    goto/32 :goto_6b

    nop

    :goto_59
    iget-object p0, p0, Lihf;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {p0, v3}, Loxv;->a(Ljava/lang/Object;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iget-object v0, p0, Lihf;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iget-object v0, p0, Lihf;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-interface {v1, v0, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    check-cast p0, Loxv;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {p0, v5}, Loxv;->a(Ljava/lang/Object;)V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    iget-object p0, p0, Lihf;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iget-object p0, p0, Lihf;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_65
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_66
    monitor-enter v0

    nop

    nop

    :try_start_2
    iget-object p0, p0, Lihf;->a:Ljava/lang/Object;

    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_67
    throw p0

    nop

    nop

    nop

    nop

    :pswitch_11
    goto/32 :goto_3e

    nop

    nop

    :goto_68
    iget-object p0, p0, Lihf;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_6a
    check-cast p0, Loxv;

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_6b
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_6c
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_6d
    iget-object v0, p0, Lihf;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_6e
    check-cast p0, Lihv;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    check-cast v0, Lihg;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_70
    iget-object p0, p0, Lihf;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_71
    iput-object v6, p0, Lihg;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_72
    invoke-interface {p0}, Lpci;->close()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_73
    const v0, 0x9

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    check-cast v0, Lihg;

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_75
    iget-object p0, p0, Lihf;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_76
    return-void

    nop

    nop

    :pswitch_12
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_77
    iget-object v0, p0, Lihf;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_78
    check-cast v0, Lihg;

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_79
    throw p0

    nop

    nop

    nop

    :pswitch_13
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {v0, v1}, Lijm;->c(F)V

    goto/32 :goto_7c

    nop

    nop

    :goto_7c
    iget-object v0, v0, Lijm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_7d
    iget-object p0, p0, Lihf;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    iget-object p0, p0, Lihf;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop
.end method
