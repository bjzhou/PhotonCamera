.class public final Lkyh;
.super Ljava/lang/Object;

# interfaces
.implements Lkye;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/libraries/oliveoil/gl/EGLImage;I)V
    .locals 0

    iput p2, p0, Lkyh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkyh;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lkyh;->b:I

    iput-object p1, p0, Lkyh;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Runnable;I)V
    .locals 0

    iput p2, p0, Lkyh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkyh;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;I)V
    .locals 0

    iput p2, p0, Lkyh;->b:I

    iput-object p1, p0, Lkyh;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkzd;I)V
    .locals 0

    iput p2, p0, Lkyh;->b:I

    iput-object p1, p0, Lkyh;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Llfb;I)V
    .locals 0

    iput p2, p0, Lkyh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkyh;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lkyh;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lkyh;->a:Ljava/lang/Object;

    check-cast p1, Llcn;

    invoke-interface {p1}, Llcn;->k()V

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    invoke-interface {p1}, Llcn;->m()V

    sget-object p1, Lkyd;->a:Lkyd;

    return-object p1

    :pswitch_0
    iget-object v0, p0, Lkyh;->a:Ljava/lang/Object;

    check-cast p1, Llcn;

    invoke-interface {p1}, Llcn;->k()V

    check-cast v0, Llfc;

    invoke-virtual {v0}, Llfc;->c()Llfg;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Llfg;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/Buffer;

    invoke-interface {p1, v1}, Llcn;->l(Ljava/nio/Buffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Llfg;->close()V

    sget-object p1, Lkyd;->a:Lkyd;

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-interface {v0}, Llfg;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_2
    const-class v1, Ljava/lang/Throwable;

    const-string v2, "addSuppressed"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Throwable;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    throw p1

    :pswitch_1
    iget-object v0, p0, Lkyh;->a:Ljava/lang/Object;

    check-cast p1, Llda;

    invoke-virtual {p1}, Llda;->e()V

    check-cast v0, Lcom/google/android/libraries/oliveoil/gl/EGLImage;

    iget-wide v0, v0, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->a:J

    invoke-static {v0, v1}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->attachToTexture(J)V

    sget-object p1, Lkyd;->a:Lkyd;

    return-object p1

    :pswitch_2
    iget-object p1, p0, Lkyh;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :pswitch_3
    iget-object p1, p0, Lkyh;->a:Ljava/lang/Object;

    return-object p1

    :pswitch_4
    iget-object p1, p0, Lkyh;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
