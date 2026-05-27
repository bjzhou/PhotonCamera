.class public final Ldsc;
.super Ljava/lang/Object;

# interfaces
.implements Ldry;


# instance fields
.field private final synthetic a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0

    iput p2, p0, Ldsc;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldsc;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/HardwareBuffer;I)V
    .locals 0

    iput p2, p0, Ldsc;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldsc;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Landroid/hardware/HardwareBuffer;
    .locals 7

    iget v0, p0, Ldsc;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ldsc;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v0, p0, Ldsc;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/16 v5, 0x103

    invoke-static/range {v1 .. v6}, Landroid/hardware/HardwareBuffer;->create(IIIIJ)Landroid/hardware/HardwareBuffer;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Ldsc;->b:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v1

    iget-object v0, p0, Ldsc;->b:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v2

    iget-object v0, p0, Ldsc;->b:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v3

    iget-object v0, p0, Ldsc;->b:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getLayers()I

    move-result v4

    iget-object v0, p0, Ldsc;->b:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getUsage()J

    move-result-wide v5

    invoke-static/range {v1 .. v6}, Landroid/hardware/HardwareBuffer;->create(IIIIJ)Landroid/hardware/HardwareBuffer;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Landroid/hardware/HardwareBuffer;)Ldrz;
    .locals 2

    iget v0, p0, Ldsc;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ldsb;

    iget-object v1, p0, Ldsc;->b:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, p1}, Ldsb;-><init>(Landroid/graphics/Bitmap;Landroid/hardware/HardwareBuffer;)V

    return-object v0

    :pswitch_0
    new-instance v0, Ldsd;

    invoke-direct {v0, p1}, Ldsd;-><init>(Landroid/hardware/HardwareBuffer;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Llbd;)Llde;
    .locals 5

    iget v0, p0, Ldsc;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ldsc;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lkyn;->d(II)Lkym;

    move-result-object v1

    new-instance v2, Llar;

    invoke-direct {v2, v1}, Llar;-><init>(Lkym;)V

    new-instance v1, Llde;

    new-instance v3, Lldd;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v2, v0, v4}, Lldd;-><init>(Llbd;Llar;Landroid/graphics/Bitmap;I)V

    invoke-static {p1, v3}, Llbk;->d(Llbd;Ljava/util/concurrent/Callable;)Lkzc;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Llde;-><init>(Llbd;Lkzc;)V

    return-object v1

    :pswitch_0
    invoke-static {p1}, Lldf;->a(Llbd;)Lldf;

    move-result-object v0

    :try_start_0
    new-instance v1, Lcom/google/android/libraries/oliveoil/gl/EGLImage;

    iget-object v2, p0, Ldsc;->b:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/HardwareBuffer;

    invoke-direct {v1, v2}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;-><init>(Landroid/hardware/HardwareBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    invoke-static {p1, v1}, Llcd;->b(Llbd;Lcom/google/android/libraries/oliveoil/gl/EGLImage;)Llcd;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    invoke-virtual {v2}, Llcd;->g()Llaq;

    move-result-object v3

    invoke-static {p1, v3}, Llde;->g(Llbd;Llaq;)Llde;

    move-result-object p1

    invoke-static {p1}, Lktf;->k(Ljava/lang/Object;)Llfg;

    move-result-object v3

    invoke-static {v3}, Lldc;->m(Llfg;)Lldc;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v0, v2, v3}, Lldf;->e(Llcd;Lldc;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v3}, Llbk;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v2}, Llbk;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-virtual {v1}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    invoke-virtual {v0}, Lldf;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_7
    invoke-virtual {v3}, Llbk;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_8
    invoke-static {p1, v3}, Ldsj;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_9
    invoke-virtual {v2}, Llbk;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v2

    :try_start_a
    invoke-static {p1, v2}, Ldsj;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p1

    :try_start_b
    invoke-virtual {v1}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v1

    :try_start_c
    invoke-static {p1, v1}, Ldsj;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :catchall_6
    move-exception p1

    :try_start_d
    invoke-virtual {v0}, Lldf;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_3

    :catchall_7
    move-exception v0

    invoke-static {p1, v0}, Ldsj;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_3
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic d()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ldsc;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ldsc;->b:Ljava/lang/Object;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Ldsc;->b:Ljava/lang/Object;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()V
    .locals 1

    iget v0, p0, Ldsc;->a:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Ldsc;->b:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
