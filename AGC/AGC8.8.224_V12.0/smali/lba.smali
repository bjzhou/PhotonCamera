.class public final Llba;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;I)V
    .locals 0

    iput p2, p0, Llba;->b:I

    iput-object p1, p0, Llba;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Llfg;I)V
    .locals 0

    iput p2, p0, Llba;->b:I

    iput-object p1, p0, Llba;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lloi;I[B[B)V
    .locals 0

    iput p2, p0, Llba;->b:I

    iput-object p1, p0, Llba;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Llba;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Llcx;

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    invoke-direct {v0, v1}, Llcx;-><init>(I)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Llba;->a:Ljava/lang/Object;

    invoke-static {v0}, Llcu;->c(Llfg;)Llcn;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Llba;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    sget-object v0, Lkyd;->a:Lkyd;

    return-object v0

    :pswitch_2
    iget-object v0, p0, Llba;->a:Ljava/lang/Object;

    invoke-static {v0}, Llcu;->c(Llfg;)Llcn;

    move-result-object v0

    return-object v0

    :goto_0
    :try_start_0
    iget-object v1, p0, Llba;->a:Ljava/lang/Object;

    check-cast v1, Lloi;

    iget-object v1, v1, Lloi;->b:Ljava/lang/Object;

    check-cast v1, Lkyi;

    invoke-virtual {v1}, Lkyi;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llfg;

    invoke-interface {v2}, Llfg;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lldc;

    invoke-virtual {v2}, Llbk;->c()Llcv;

    move-result-object v2

    check-cast v2, Llcy;

    iget v3, v0, Llcx;->b:I

    iget v2, v2, Llcw;->b:I

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    goto :goto_1

    :cond_0
    iget v1, v0, Llcx;->b:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 v1, 0x1

    new-array v1, v1, [I

    iget v2, v0, Llcx;->b:I

    const/4 v3, 0x0

    const v4, 0x8b82

    invoke-static {v2, v4, v1, v3}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v1, v1, v3

    if-eqz v1, :cond_2

    iget-object v1, p0, Llba;->a:Ljava/lang/Object;

    check-cast v1, Lloi;

    iget-object v1, v1, Lloi;->b:Ljava/lang/Object;

    check-cast v1, Lkyi;

    invoke-virtual {v1}, Lkyi;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llfg;

    invoke-interface {v2}, Llfg;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lldc;

    invoke-virtual {v2}, Llbk;->c()Llcv;

    move-result-object v2

    check-cast v2, Llcy;

    iget v3, v0, Llcx;->b:I

    iget v2, v2, Llcw;->b:I

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glDetachShader(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_1
    iget-object v1, p0, Llba;->a:Ljava/lang/Object;

    check-cast v1, Lloi;

    iget-object v1, v1, Lloi;->b:Ljava/lang/Object;

    check-cast v1, Lkyl;

    invoke-virtual {v1}, Lkyl;->close()V

    return-object v0

    :cond_2
    :try_start_1
    iget v1, v0, Llcx;->b:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lldj;

    invoke-direct {v2, v1}, Lldj;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v0}, Llcw;->close()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    iget-object v1, p0, Llba;->a:Ljava/lang/Object;

    check-cast v1, Lloi;

    iget-object v1, v1, Lloi;->b:Ljava/lang/Object;

    check-cast v1, Lkyl;

    invoke-virtual {v1}, Lkyl;->close()V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Llba;->b:I

    const-string v1, "RGBA8888"

    const-string v2, "createCanvasForTexture("

    const-string v3, ")"

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Llba;->a:Ljava/lang/Object;

    check-cast v0, Lloi;

    iget-object v0, v0, Lloi;->b:Ljava/lang/Object;

    check-cast v0, Lkyi;

    invoke-virtual {v0}, Lkyi;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkProgram(n="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Llba;->a:Ljava/lang/Object;

    invoke-interface {v0}, Llfg;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llde;

    invoke-virtual {v0}, Llde;->b()Llaq;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Llba;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Llba;->a:Ljava/lang/Object;

    invoke-interface {v0}, Llfg;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llde;

    invoke-virtual {v0}, Llde;->b()Llaq;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
