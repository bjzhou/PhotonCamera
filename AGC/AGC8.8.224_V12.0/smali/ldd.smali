.class public final Lldd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Llbd;

.field final synthetic b:Llar;

.field final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public constructor <init>(Llbd;Llar;Landroid/graphics/Bitmap;I)V
    .locals 0

    iput p4, p0, Lldd;->d:I

    iput-object p1, p0, Lldd;->a:Llbd;

    iput-object p2, p0, Lldd;->b:Llar;

    iput-object p3, p0, Lldd;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Llbd;Llar;Lkym;I)V
    .locals 0

    iput p4, p0, Lldd;->d:I

    iput-object p1, p0, Lldd;->a:Llbd;

    iput-object p2, p0, Lldd;->b:Llar;

    iput-object p3, p0, Lldd;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lldd;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lldd;->a:Llbd;

    invoke-interface {v0}, Llbd;->e()Lldg;

    move-result-object v0

    iget-object v1, p0, Lldd;->b:Llar;

    new-instance v2, Llda;

    invoke-static {}, Llda;->b()I

    move-result v3

    const v4, 0x8d65

    invoke-direct {v2, v0, v3, v4, v1}, Llda;-><init>(Lldg;IILlaq;)V

    return-object v2

    :pswitch_0
    iget-object v0, p0, Lldd;->a:Llbd;

    invoke-interface {v0}, Llbd;->e()Lldg;

    move-result-object v0

    iget-object v1, p0, Lldd;->b:Llar;

    invoke-static {v0, v1}, Llda;->h(Lldg;Llaq;)Llda;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lldd;->c:Ljava/lang/Object;

    iget-object v2, v0, Llda;->f:Llaq;

    iget-object v2, v2, Llaq;->a:Lkym;

    move-object v3, v1

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Lkyn;->b()I

    move-result v4

    if-ne v3, v4, :cond_2

    move-object v3, v1

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Lkyn;->a()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-virtual {v0}, Llda;->e()V

    iget-boolean v2, v0, Llda;->e:Z

    if-nez v2, :cond_1

    iget-object v2, v0, Llda;->a:Lldg;

    sget-object v3, Lldg;->a:Lldg;

    invoke-virtual {v2, v3}, Lldg;->b(Lldg;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Llda;->d()V

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Llda;->f(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    iget-boolean v2, v0, Llda;->e:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lmoz;->p(Z)V

    iget v2, v0, Llda;->c:I

    check-cast v1, Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    goto :goto_0

    :cond_1
    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Llda;->f(Landroid/graphics/Bitmap;)V

    :goto_0
    invoke-static {}, Llci;->b()Z

    move-result v1

    invoke-static {v1}, Llda;->g(Z)V

    return-object v0

    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bitmap of size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cannot be assigned to texture of size "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "!"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    invoke-virtual {v0}, Llcw;->close()V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lldd;->d:I

    const-string v1, ")"

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lldd;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createExternalTexture("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lldd;->c:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v2, p0, Lldd;->c:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createFromBitmap("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
