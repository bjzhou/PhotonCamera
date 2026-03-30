.class public final Lmyg;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/content/Context;

.field final synthetic b:Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

.field c:I

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private f:Lpci;

.field private final g:Loiq;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Loiq;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lmyg;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lmyg;->b:Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    iput-object p4, p0, Lmyg;->e:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p5, p0, Lmyg;->g:Loiq;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p3, p0, Lmyg;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget v0, Lmsl;->z:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->setBackgroundColor(I)V

    :goto_4
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_5
    check-cast p0, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lmyg;->b:Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Loiq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_8
    goto/32 :goto_19

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lmyg;->b:Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x12

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, v0, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->a:Landroid/widget/ImageView;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, v0, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->a:Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x7f070290

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Lmyg;->g:Loiq;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->a()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_17
    check-cast v0, Landroid/widget/LinearLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_b

    nop

    nop

    :goto_1a
    if-lez v0, :cond_1

    nop

    goto/32 :goto_9

    nop

    :cond_1
    goto/32 :goto_8

    nop

    :goto_1b
    iget-object v1, p0, Lmyg;->e:Ljava/lang/String;

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

    :goto_1c
    iget-object p0, p0, Loiq;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1d
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v1, v0}, Lpuq;->w(ILandroid/content/Context;)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Z)V
    .locals 3

    goto/32 :goto_c

    nop

    nop

    :goto_0
    iput v1, p0, Lmyg;->c:I

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1
    const/16 v2, 0x8

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, v0, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->a:Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_3
    invoke-interface {v0}, Lpci;->close()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lmyg;->b:Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_5
    goto :goto_8

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_a
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_e
    if-nez v1, :cond_1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_2
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lmyg;->b:Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

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

    :goto_15
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_12

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-object v1, p0, Lmyg;->f:Lpci;

    nop

    nop

    :goto_1a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_20

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1e
    move-object v1, v0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Lmyg;->f:Lpci;

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_21
    if-eqz v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_5

    nop

    nop

    :goto_22
    check-cast v1, Landroid/app/Activity;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_6

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_25
    iget-object v0, v0, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->b:Landroid/widget/TextView;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_26
    iget-object v0, p0, Lmyg;->b:Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_27
    throw p0

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_29
    const/16 v2, 0x100

    nop

    nop

    :try_start_0
    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    const/4 v2, 0x3

    nop

    nop

    nop

    if-eq v1, v2, :cond_7

    nop

    nop

    nop

    if-eqz p1, :cond_5

    nop

    nop

    goto/16 :goto_2a

    nop

    :cond_5
    const/4 p1, 0x2

    nop

    nop

    if-ne v1, p1, :cond_6

    nop

    invoke-static {v0}, Lfia;->c(Landroid/content/Context;)Lfio;

    move-result-object p1

    nop

    iget-object v0, p0, Lmyg;->d:Ljava/lang/String;

    nop

    nop

    invoke-virtual {p1, v0}, Lfio;->d(Ljava/lang/String;)Lfim;

    move-result-object p1

    nop

    invoke-virtual {p1}, Lfsj;->I()Lfsj;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    check-cast p1, Lfim;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lfsj;->m()Lfsj;

    move-result-object p1

    nop

    nop

    nop

    nop

    check-cast p1, Lfim;

    nop

    nop

    nop

    nop

    nop

    new-instance v0, Lmye;

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    invoke-direct {v0, p0, v1}, Lmye;-><init>(Lmyg;I)V

    invoke-virtual {p1, v0}, Lfim;->a(Lfsq;)Lfim;

    move-result-object p1

    nop

    iget-object p0, p0, Lmyg;->b:Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->a:Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, p0}, Lfim;->j(Landroid/widget/ImageView;)Lftb;

    goto/16 :goto_2b

    nop

    :cond_6
    invoke-static {v0}, Lfia;->c(Landroid/content/Context;)Lfio;

    move-result-object v0

    nop

    nop

    nop

    iget-object v1, p0, Lmyg;->d:Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lfio;->d(Ljava/lang/String;)Lfim;

    move-result-object v0

    nop

    nop

    nop

    invoke-virtual {v0}, Lfsj;->K()Lfsj;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Lfim;

    nop

    nop

    nop

    invoke-virtual {v0}, Lfsj;->I()Lfsj;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lfim;

    nop

    nop

    invoke-virtual {v0}, Lfsj;->m()Lfsj;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Lfim;

    nop

    nop

    nop

    nop

    new-instance v1, Lmye;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, p0, p1}, Lmye;-><init>(Lmyg;I)V

    invoke-virtual {v0, v1}, Lfim;->a(Lfsq;)Lfim;

    move-result-object p1

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lmyg;->b:Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->a:Landroid/widget/ImageView;

    nop

    invoke-virtual {p1, p0}, Lfim;->j(Landroid/widget/ImageView;)Lftb;

    goto :goto_2b

    nop

    nop

    nop

    :cond_7
    :goto_2a
    invoke-static {v0}, Lfia;->c(Landroid/content/Context;)Lfio;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lmyg;->d:Ljava/lang/String;

    nop

    nop

    invoke-virtual {p1, v0}, Lfio;->d(Ljava/lang/String;)Lfim;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lfsj;->m()Lfsj;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    check-cast p1, Lfim;

    nop

    nop

    new-instance v0, Lmye;

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    invoke-direct {v0, p0, v1}, Lmye;-><init>(Lmyg;I)V

    invoke-virtual {p1, v0}, Lfim;->a(Lfsq;)Lfim;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lmyg;->b:Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    nop

    iget-object p0, p0, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->a:Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, p0}, Lfim;->j(Landroid/widget/ImageView;)Lftb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2b
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-lez v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_8
    goto/32 :goto_11

    nop

    :goto_2d
    invoke-static {v0}, Lnzk;->N(Landroid/content/Context;)I

    move-result v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2f
    instance-of v1, v0, Landroid/app/Activity;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, p0}, Lmyd;-><init>(Lmyg;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v1}, Lpci;->close()V

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    iget-object v1, p0, Lmyg;->f:Lpci;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    invoke-static {v1, v0}, Lnzk;->M(Landroid/content/Context;Landroid/net/ConnectivityManager$NetworkCallback;)Lpci;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_11

    nop

    nop

    :goto_8
    iput-object v0, p0, Lmyg;->f:Lpci;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    :goto_a
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    iget-object v1, p0, Lmyg;->a:Landroid/content/Context;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    :goto_11
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v0, Lmyd;

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method
