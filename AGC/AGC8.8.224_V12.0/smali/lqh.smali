.class public final Llqh;
.super Ljava/lang/Object;


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lhrz;Loiw;ZLgus;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Llqh;->c:Ljava/lang/Object;

    iput-boolean p4, p0, Llqh;->a:Z

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Llqh;->b:Ljava/lang/Object;

    move-object p4, p2

    check-cast p4, Landroid/view/ViewGroup;

    const v0, 0x7f0e0050

    invoke-static {p1, v0, p4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-object p4, p2

    check-cast p4, Landroid/widget/FrameLayout;

    const p4, 0x7f0b01c8

    invoke-virtual {p2, p4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lgdu;

    const/16 v1, 0xf

    invoke-direct {v0, p1, v1}, Lgdu;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Llqh;->d:Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0e00ee

    invoke-static {p1, v1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-object v0, p2

    check-cast v0, Landroid/widget/FrameLayout;

    const v0, 0x7f0b028f

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v6, Lhzi;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p5

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lhzi;-><init>(Llqh;Lgus;Loiw;I[B)V

    invoke-virtual {p2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Llqh;->e:Ljava/lang/Object;

    move-object p3, p2

    check-cast p3, Landroid/view/ViewGroup;

    const p5, 0x7f0e0061

    invoke-static {p1, p5, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-object p3, p2

    check-cast p3, Landroid/widget/FrameLayout;

    invoke-virtual {p2, p4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lgdu;

    const/16 p4, 0x10

    invoke-direct {p3, p1, p4}, Lgdu;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public constructor <init>(Lkou;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Liuy;->n:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, p1}, Llqh;->f(Landroid/hardware/camera2/CaptureResult$Key;Lkou;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Llqh;->b:Ljava/lang/Object;

    sget-object v0, Liuy;->o:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, p1}, Llqh;->f(Landroid/hardware/camera2/CaptureResult$Key;Lkou;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Llqh;->e:Ljava/lang/Object;

    sget-object v0, Liuy;->p:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, p1}, Llqh;->f(Landroid/hardware/camera2/CaptureResult$Key;Lkou;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Llqh;->d:Ljava/lang/Object;

    sget-object v0, Liuw;->t:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, p1}, Llqh;->f(Landroid/hardware/camera2/CaptureResult$Key;Lkou;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Llqh;->c:Ljava/lang/Object;

    sget-object v0, Liva;->g:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, p1}, Llqh;->f(Landroid/hardware/camera2/CaptureResult$Key;Lkou;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    :goto_0
    iput-boolean v0, p0, Llqh;->a:Z

    return-void
.end method

.method public constructor <init>(Llon;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llqh;->b:Ljava/lang/Object;

    iput-object p2, p0, Llqh;->d:Ljava/lang/Object;

    iput-object p3, p0, Llqh;->e:Ljava/lang/Object;

    iput-boolean p4, p0, Llqh;->a:Z

    move-object v0, p1

    check-cast v0, Llon;

    iget-object p1, p1, Llon;->c:Landroid/content/Context;

    invoke-static {p1}, Llri;->a(Landroid/content/Context;)Llrh;

    move-result-object p1

    const-string v0, "phenotype"

    invoke-virtual {p1, v0}, Llrh;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object p3, p2

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".pb"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Llrh;->c(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    sget p2, Lktm;->a:I

    sget-object p2, Llri;->d:Ljava/util/Set;

    const-string p3, "directboot-files"

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    const/4 v0, 0x0

    sget-object v1, Llri;->d:Ljava/util/Set;

    aput-object v1, p4, v0

    const/4 v0, 0x1

    aput-object p3, p4, v0

    const-string v0, "The only supported locations are %s: %s"

    invoke-static {p2, v0, p4}, Lljz;->e(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-object p3, p1, Llrh;->a:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Llrh;->a()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Llqh;->c:Ljava/lang/Object;

    return-void
.end method

.method public static a(Llqi;)Lmwa;
    .locals 11

    iget-object v0, p0, Llqi;->g:Lnxa;

    invoke-interface {v0}, Lnxa;->size()I

    move-result v0

    const/4 v1, 0x3

    add-int/2addr v0, v1

    invoke-static {v0}, Lmwa;->j(I)Lmvw;

    move-result-object v0

    iget-object v2, p0, Llqi;->g:Lnxa;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llqj;

    iget v4, v3, Llqj;->b:I

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x6

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    const/4 v10, 0x0

    goto :goto_1

    :pswitch_1
    const/4 v10, 0x5

    goto :goto_1

    :pswitch_2
    const/4 v10, 0x4

    goto :goto_1

    :pswitch_3
    const/4 v10, 0x3

    goto :goto_1

    :pswitch_4
    const/4 v10, 0x2

    goto :goto_1

    :pswitch_5
    const/4 v10, 0x1

    goto :goto_1

    :pswitch_6
    const/4 v10, 0x6

    :goto_1
    if-eqz v10, :cond_5

    add-int/lit8 v10, v10, -0x1

    packed-switch v10, :pswitch_data_1

    goto :goto_0

    :pswitch_7
    iget-object v5, v3, Llqj;->d:Ljava/lang/String;

    if-ne v4, v9, :cond_0

    iget-object v3, v3, Llqj;->c:Ljava/lang/Object;

    check-cast v3, Lnvt;

    goto :goto_2

    :cond_0
    sget-object v3, Lnvt;->b:Lnvt;

    :goto_2
    invoke-virtual {v3}, Lnvt;->A()[B

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_8
    iget-object v5, v3, Llqj;->d:Ljava/lang/String;

    if-ne v4, v6, :cond_1

    iget-object v3, v3, Llqj;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    goto :goto_3

    :cond_1
    const-string v3, ""

    :goto_3
    invoke-virtual {v0, v5, v3}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_9
    iget-object v5, v3, Llqj;->d:Ljava/lang/String;

    if-ne v4, v7, :cond_2

    iget-object v3, v3, Llqj;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    goto :goto_4

    :cond_2
    const-wide/16 v3, 0x0

    :goto_4
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_a
    iget-object v6, v3, Llqj;->d:Ljava/lang/String;

    if-ne v4, v1, :cond_3

    iget-object v3, v3, Llqj;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_5

    :cond_3
    :goto_5
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_b
    iget-object v5, v3, Llqj;->d:Ljava/lang/String;

    if-ne v4, v8, :cond_4

    iget-object v3, v3, Llqj;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_6

    :cond_4
    const-wide/16 v3, 0x0

    :goto_6
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    const/4 p0, 0x0

    throw p0

    :cond_6
    iget-object v1, p0, Llqi;->d:Ljava/lang/String;

    const-string v2, "__phenotype_server_token"

    invoke-virtual {v0, v2, v1}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Llqi;->b:Ljava/lang/String;

    const-string v2, "__phenotype_snapshot_token"

    invoke-virtual {v0, v2, v1}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-wide v1, p0, Llqi;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v1, "__phenotype_configuration_version"

    invoke-virtual {v0, v1, p0}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lmvw;->d()Lmwa;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public static final e([BBZ)[B
    .locals 3

    array-length v0, p0

    const/4 v1, 0x1

    if-eq v1, p2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    :goto_0
    add-int/2addr v1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object p1

    if-eqz p2, :cond_1

    const/4 p2, 0x4

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_1
    int-to-byte p2, v0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_1
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method private static f(Landroid/hardware/camera2/CaptureResult$Key;Lkou;)Ljava/lang/Object;
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method final b(Ljava/lang/String;)Lnou;
    .locals 2

    iget-object v0, p0, Llqh;->b:Ljava/lang/Object;

    check-cast v0, Llon;

    invoke-virtual {v0}, Llon;->e()Llhz;

    move-result-object v0

    iget-object v1, p0, Llqh;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Llhz;->c(Ljava/lang/String;Ljava/lang/String;)Lnou;

    move-result-object p1

    sget-object v0, Llqg;->a:Llqg;

    iget-object v1, p0, Llqh;->b:Ljava/lang/Object;

    check-cast v1, Llon;

    invoke-virtual {v1}, Llon;->b()Lnox;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    return-object p1
.end method

.method public final c(Llqi;)Lnou;
    .locals 2

    new-instance v0, Lcop;

    const/16 v1, 0xb

    invoke-direct {v0, p0, p1, v1}, Lcop;-><init>(Llqh;Llqi;I)V

    iget-object p1, p0, Llqh;->b:Ljava/lang/Object;

    check-cast p1, Llon;

    invoke-virtual {p1}, Llon;->b()Lnox;

    move-result-object p1

    invoke-static {v0, p1}, Lnsy;->F(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    return-object p1
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Llqh;->c:Ljava/lang/Object;

    iget-object v1, p0, Llqh;->b:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    check-cast v0, Lhrz;

    const/16 v2, 0x9

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3, v1}, Lhrz;->l(IILandroid/view/View;)V

    return-void
.end method
