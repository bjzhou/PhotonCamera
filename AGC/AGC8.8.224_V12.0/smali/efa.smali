.class public final Lefa;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;

.field private final synthetic e:I


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;I)V
    .locals 0

    iput p5, p0, Lefa;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lefa;->a:Loiw;

    iput-object p2, p0, Lefa;->b:Loiw;

    iput-object p3, p0, Lefa;->c:Loiw;

    iput-object p4, p0, Lefa;->d:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;I[B)V
    .locals 0

    iput p5, p0, Lefa;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lefa;->c:Loiw;

    iput-object p2, p0, Lefa;->a:Loiw;

    iput-object p3, p0, Lefa;->d:Loiw;

    iput-object p4, p0, Lefa;->b:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;I[C)V
    .locals 0

    iput p5, p0, Lefa;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lefa;->d:Loiw;

    iput-object p2, p0, Lefa;->a:Loiw;

    iput-object p3, p0, Lefa;->c:Loiw;

    iput-object p4, p0, Lefa;->b:Loiw;

    return-void
.end method

.method public static a(Loiw;Loiw;Loiw;Loiw;)Lefa;
    .locals 7

    new-instance v6, Lefa;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lefa;-><init>(Loiw;Loiw;Loiw;Loiw;I)V

    return-object v6
.end method


# virtual methods
.method public final b()Ljvs;
    .locals 9

    iget v0, p0, Lefa;->e:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lefa;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljvs;

    iget-object v4, p0, Lefa;->a:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljvs;

    iget-object v5, p0, Lefa;->c:Loiw;

    check-cast v5, Lelq;

    invoke-virtual {v5}, Lelq;->a()Landroid/view/WindowManager;

    move-result-object v5

    iget-object v6, p0, Lefa;->b:Loiw;

    check-cast v6, Ldwh;

    invoke-virtual {v6}, Ldwh;->a()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Ldvo;

    const/4 v8, 0x6

    invoke-direct {v7, v5, v6, v8}, Ldvo;-><init>(Landroid/view/WindowManager;Landroid/content/Context;I)V

    invoke-static {v4, v7}, Ljvw;->j(Ljvs;Lmqi;)Ljvs;

    move-result-object v4

    new-array v2, v2, [Ljvs;

    aput-object v0, v2, v1

    aput-object v4, v2, v3

    invoke-static {v2}, Ljvw;->i([Ljvs;)Ljvs;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lefa;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    iget-object v1, p0, Lefa;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljwb;

    iget-object v2, p0, Lefa;->d:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lefa;->b:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Ldhc;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->e()V

    new-instance v0, Ldql;

    const/4 v4, 0x3

    invoke-direct {v0, v2, v3, v4}, Ldql;-><init>(ZZI)V

    invoke-static {v1, v0}, Ljvw;->j(Ljvs;Lmqi;)Ljvs;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lefa;->a:Loiw;

    check-cast v0, Legl;

    invoke-virtual {v0}, Legl;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v4, p0, Lefa;->b:Loiw;

    iget-object v5, p0, Lefa;->c:Loiw;

    iget-object v6, p0, Lefa;->d:Loiw;

    invoke-interface {v6}, Loiw;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldhi;

    if-eqz v0, :cond_0

    sget-object v0, Liuz;->o:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v0, :cond_0

    sget-object v0, Ldhg;->a:Ljava/lang/String;

    invoke-interface {v6}, Ldhi;->e()V

    new-array v0, v2, [Ljvs;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljvs;

    aput-object v2, v0, v1

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljvs;

    aput-object v1, v0, v3

    invoke-static {v0}, Ljvw;->b([Ljvs;)Ljvs;

    move-result-object v0

    new-instance v1, Ldeo;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ldeo;-><init>(I)V

    invoke-static {v0, v1}, Ljvw;->j(Ljvs;Lmqi;)Ljvs;

    move-result-object v0

    sget-object v1, Liuz;->o:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1, v0}, Lfwt;->f(Landroid/hardware/camera2/CaptureRequest$Key;Ljvs;)Ljvs;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lfwt;->e()Lfwn;

    move-result-object v0

    invoke-static {v0}, Ljvw;->g(Ljava/lang/Object;)Ljvs;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lefa;->e:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lefa;->b()Ljvs;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lefa;->b()Ljvs;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lefa;->b()Ljvs;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
