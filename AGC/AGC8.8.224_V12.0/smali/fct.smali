.class public final Lfct;
.super Ljava/lang/Object;

# interfaces
.implements Lfde;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lhrz;

.field private final c:Lmqp;

.field private final d:F

.field private final e:Ljwb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lhrz;Lmqp;Ldhi;Ljwb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfct;->a:Landroid/content/Context;

    iput-object p2, p0, Lfct;->b:Lhrz;

    iput-object p3, p0, Lfct;->c:Lmqp;

    iput-object p5, p0, Lfct;->e:Ljwb;

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object p2, Ldhq;->r:Ldhk;

    invoke-interface {p4, p2}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object p2

    invoke-virtual {p2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    long-to-float p1, p1

    const/high16 p2, 0x42700000    # 60.0f

    div-float/2addr p1, p2

    iput p1, p0, Lfct;->d:F

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 15

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lfct;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lfct;->a:Landroid/content/Context;

    const v2, 0x7f0e0029

    invoke-static {v1, v2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v1, 0x7f0b008b

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    iget-object v2, p0, Lfct;->a:Landroid/content/Context;

    const v3, 0x7f140090

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfct;->a:Landroid/content/Context;

    const v4, 0x7f14008a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->a()V

    new-instance v1, Lbgj;

    invoke-direct {v1}, Lbgj;-><init>()V

    iget-object v2, p0, Lfct;->a:Landroid/content/Context;

    const v3, 0x7f130003

    invoke-static {v2, v3}, Lbgd;->c(Landroid/content/Context;I)Lbgp;

    move-result-object v2

    iget-object v2, v2, Lbgp;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Lbga;

    invoke-virtual {v1, v2}, Lbgj;->q(Lbga;)Z

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lbgj;->o(I)V

    const v2, 0x7f0b008a

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lfct;->c:Lmqp;

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lfct;->e:Ljwb;

    invoke-interface {v2}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lfct;->a:Landroid/content/Context;

    iget-object v4, p0, Lfct;->c:Lmqp;

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgmf;

    const/4 v4, 0x2

    new-array v10, v4, [Ljava/lang/Object;

    const-string v4, "count"

    aput-object v4, v10, v3

    iget v4, p0, Lfct;->d:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v10, v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f140255

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v13

    :try_start_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v14, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v5, Lj;

    invoke-direct {v5, v2, v4}, Lj;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v11, Lir;

    invoke-direct {v11, v14}, Lir;-><init>(Ljava/lang/StringBuilder;)V

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Lj;->b(ILh;[Ljava/lang/Object;Ljava/util/Map;[Ljava/lang/Object;Lir;Ljava/text/FieldPosition;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v13}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const v4, 0x7f0b01c0

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0b01bf

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v13}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0

    :cond_0
    :goto_0
    new-instance v2, Lfcs;

    invoke-direct {v2, v1, v0, v3}, Lfcs;-><init>(Lbgj;Landroid/widget/FrameLayout;I)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v1, p0, Lfct;->b:Lhrz;

    const/4 v2, 0x6

    const v3, 0x7f140092

    invoke-virtual {v1, v2, v3, v0}, Lhrz;->l(IILandroid/view/View;)V

    return-void
.end method
