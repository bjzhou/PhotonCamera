.class public final Lhwy;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/content/Context;

.field final synthetic b:Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

.field c:I

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private f:Lkad;

.field private final g:Ljes;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljes;[B)V
    .locals 0

    iput-object p1, p0, Lhwy;->b:Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lhwy;->a:Landroid/content/Context;

    iput-object p3, p0, Lhwy;->d:Ljava/lang/String;

    iput-object p4, p0, Lhwy;->e:Ljava/lang/String;

    iput-object p5, p0, Lhwy;->g:Ljes;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lhwy;->b:Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    iget-object v0, v0, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lhwy;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lhwy;->b:Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    iget-object v0, v0, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lhwy;->g:Ljes;

    if-eqz v0, :cond_0

    iget-object v2, v0, Ljes;->b:Ljava/lang/Object;

    iget-object v0, v0, Ljes;->a:Ljava/lang/Object;

    sget v3, Lhse;->z:I

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    check-cast v0, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->a()V

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0701a2

    invoke-static {v2, v1}, Lllj;->r(ILandroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 3

    iget-object v0, p0, Lhwy;->b:Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    iget-object v0, v0, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lhwy;->b:Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    iget-object v0, v0, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->b:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lhwy;->f:Lkad;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkad;->close()V

    iput-object v1, p0, Lhwy;->f:Lkad;

    :cond_0
    iget-object v0, p0, Lhwy;->b:Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    invoke-static {v0}, Linb;->w(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lhwy;->c:I

    const/16 v2, 0x100

    :try_start_0
    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 p1, 0x2

    if-ne v1, p1, :cond_5

    invoke-static {v0}, Lbol;->c(Landroid/content/Context;)Lbpd;

    move-result-object p1

    iget-object v0, p0, Lhwy;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lbpd;->d(Ljava/lang/String;)Lbpb;

    move-result-object p1

    invoke-virtual {p1}, Lbzg;->J()Lbzg;

    move-result-object p1

    check-cast p1, Lbpb;

    invoke-virtual {p1}, Lbzg;->I()Lbzg;

    move-result-object p1

    check-cast p1, Lbpb;

    invoke-virtual {p1}, Lbzg;->m()Lbzg;

    move-result-object p1

    check-cast p1, Lbpb;

    new-instance v0, Lhww;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lhww;-><init>(Lhwy;I)V

    invoke-virtual {p1, v0}, Lbpb;->a(Lbzo;)Lbpb;

    move-result-object p1

    iget-object v0, p0, Lhwy;->b:Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    iget-object v0, v0, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lbpb;->k(Landroid/widget/ImageView;)Lcab;

    goto :goto_3

    :cond_5
    invoke-static {v0}, Lbol;->c(Landroid/content/Context;)Lbpd;

    move-result-object v0

    iget-object v1, p0, Lhwy;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbpd;->d(Ljava/lang/String;)Lbpb;

    move-result-object v0

    invoke-virtual {v0}, Lbzg;->J()Lbzg;

    move-result-object v0

    check-cast v0, Lbpb;

    invoke-virtual {v0}, Lbzg;->I()Lbzg;

    move-result-object v0

    check-cast v0, Lbpb;

    invoke-virtual {v0}, Lbzg;->m()Lbzg;

    move-result-object v0

    check-cast v0, Lbpb;

    new-instance v1, Lhww;

    invoke-direct {v1, p0, p1}, Lhww;-><init>(Lhwy;I)V

    invoke-virtual {v0, v1}, Lbpb;->a(Lbzo;)Lbpb;

    move-result-object p1

    iget-object v0, p0, Lhwy;->b:Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    iget-object v0, v0, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lbpb;->k(Landroid/widget/ImageView;)Lcab;

    goto :goto_3

    :cond_6
    :goto_2
    invoke-static {v0}, Lbol;->c(Landroid/content/Context;)Lbpd;

    move-result-object p1

    iget-object v0, p0, Lhwy;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lbpd;->d(Ljava/lang/String;)Lbpb;

    move-result-object p1

    invoke-virtual {p1}, Lbzg;->m()Lbzg;

    move-result-object p1

    check-cast p1, Lbpb;

    new-instance v0, Lhww;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lhww;-><init>(Lhwy;I)V

    invoke-virtual {p1, v0}, Lbpb;->a(Lbzo;)Lbpb;

    move-result-object p1

    iget-object v0, p0, Lhwy;->b:Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    iget-object v0, v0, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lbpb;->k(Landroid/widget/ImageView;)Lcab;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    throw p1
.end method

.method public final c()V
    .locals 2

    new-instance v0, Lhwv;

    invoke-direct {v0, p0}, Lhwv;-><init>(Lhwy;)V

    iget-object v1, p0, Lhwy;->f:Lkad;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lkad;->close()V

    :cond_0
    iget-object v1, p0, Lhwy;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Linb;->v(Landroid/content/Context;Landroid/net/ConnectivityManager$NetworkCallback;)Lkad;

    move-result-object v0

    iput-object v0, p0, Lhwy;->f:Lkad;

    return-void
.end method
