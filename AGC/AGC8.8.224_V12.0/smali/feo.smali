.class public final synthetic Lfeo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, Lfeo;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfeo;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lckk;I)V
    .locals 0

    iput p2, p0, Lfeo;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfeo;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfeq;I)V
    .locals 0

    iput p2, p0, Lfeo;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfeo;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhig;I)V
    .locals 0

    iput p2, p0, Lfeo;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfeo;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhij;I)V
    .locals 0

    iput p2, p0, Lfeo;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfeo;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhsu;I)V
    .locals 0

    iput p2, p0, Lfeo;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfeo;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Libv;I)V
    .locals 0

    iput p2, p0, Lfeo;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfeo;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Life;I)V
    .locals 0

    iput p2, p0, Lfeo;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfeo;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lisi;I)V
    .locals 0

    iput p2, p0, Lfeo;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfeo;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lfeo;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfeo;->a:Ljava/lang/Object;

    check-cast v0, Lisi;

    iget-object v3, v0, Lisi;->F:Lklv;

    sget-object v4, Lklv;->a:Lklv;

    if-ne v3, v4, :cond_6

    iget-object v0, v0, Lisi;->ak:Ljew;

    const-string v3, "wide_selfie_tooltip_display_count"

    invoke-virtual {v0, v3}, Ljew;->X(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    goto/16 :goto_5

    :pswitch_0
    iget-object v0, p0, Lfeo;->a:Ljava/lang/Object;

    new-instance v1, Ljava/lang/IllegalStateException;

    check-cast v0, Life;

    iget-object v0, v0, Life;->q:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Could not find longest duration among animators "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v1

    :pswitch_1
    iget-object v0, p0, Lfeo;->a:Ljava/lang/Object;

    check-cast v0, Libv;

    iget-object v3, v0, Libv;->r:Ljew;

    const-string v4, "TRANSLATE_TOOLTIP"

    invoke-virtual {v3, v4}, Ljew;->X(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x6

    if-gt v3, v5, :cond_0

    rem-int/lit8 v6, v3, 0x3

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    if-ge v3, v5, :cond_1

    iget-object v0, v0, Libv;->r:Ljew;

    invoke-virtual {v0, v4}, Ljew;->Z(Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lfeo;->a:Ljava/lang/Object;

    :try_start_0
    move-object v1, v0

    check-cast v1, Lhsu;

    iget-object v1, v1, Lhsu;->b:Lchj;

    invoke-interface {v1}, Lchj;->a()I

    move-result v1

    move-object v3, v0

    check-cast v3, Lhsu;

    iget-object v3, v3, Lhsu;->b:Lchj;

    invoke-interface {v3}, Lchj;->b()Lchd;

    move-result-object v3

    check-cast v0, Lhsu;

    iget-object v0, v0, Lhsu;->c:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v4

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-double v6, v0

    const-wide v8, 0x3fe6666666666666L    # 0.7

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    const/4 v0, 0x0

    if-eqz v3, :cond_2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v8

    double-to-int v4, v4

    double-to-int v5, v6

    :try_start_1
    invoke-interface {v3, v4, v5}, Lchd;->i(II)Lkxr;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v0

    :goto_2
    if-eqz v3, :cond_3

    iget-object v4, v3, Lkxr;->b:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Lmqp;

    invoke-virtual {v5}, Lmqp;->g()Z

    move-result v5

    if-eqz v5, :cond_3

    check-cast v4, Lmqp;

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    new-instance v1, Lkaf;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v1, v2, v4}, Lkaf;-><init>(II)V

    iget v1, v3, Lkxr;->a:I

    new-instance v2, Lhsq;

    invoke-direct {v2, v0, v1}, Lhsq;-><init>(Landroid/graphics/Bitmap;I)V

    goto :goto_3

    :cond_3
    if-nez v1, :cond_4

    invoke-static {}, Lhsq;->a()Lhsq;

    move-result-object v2

    goto :goto_3

    :cond_4
    new-instance v1, Lhsq;

    invoke-direct {v1, v0, v2}, Lhsq;-><init>(Landroid/graphics/Bitmap;I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v1

    goto :goto_3

    :catch_0
    move-exception v0

    sget-object v1, Lhsu;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    const-string v2, "exception generating thumbnail"

    const/16 v3, 0xf63

    invoke-static {v1, v2, v3, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    invoke-static {}, Lhsq;->a()Lhsq;

    move-result-object v2

    :goto_3
    return-object v2

    :pswitch_3
    iget-object v0, p0, Lfeo;->a:Ljava/lang/Object;

    check-cast v0, Lhij;

    invoke-virtual {v0}, Lhij;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_4
    iget-object v0, p0, Lfeo;->a:Ljava/lang/Object;

    check-cast v0, Lhig;

    invoke-virtual {v0}, Lhig;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_5
    iget-object v0, p0, Lfeo;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lhbl;->b(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_6
    iget-object v0, p0, Lfeo;->a:Ljava/lang/Object;

    check-cast v0, Lckk;

    iget-object v3, v0, Lckk;->e:Ljwb;

    check-cast v3, Ljvk;

    iget-object v3, v3, Ljvk;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v0, v0, Lckk;->i:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_7
    iget-object v0, p0, Lfeo;->a:Ljava/lang/Object;

    check-cast v0, Lfeq;

    iget-object v0, v0, Lfeq;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_6
    const/4 v1, 0x0

    :goto_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
