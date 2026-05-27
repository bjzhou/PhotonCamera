.class public final Ljzf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Ljzf;->c:I

    iput-object p1, p0, Ljzf;->a:Ljava/lang/Object;

    iput-object p2, p0, Ljzf;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljzi;Ljxy;I)V
    .locals 0

    iput p3, p0, Ljzf;->c:I

    iput-object p1, p0, Ljzf;->b:Ljava/lang/Object;

    iput-object p2, p0, Ljzf;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Llwu;Lapy;I)V
    .locals 0

    iput p3, p0, Ljzf;->c:I

    iput-object p1, p0, Ljzf;->b:Ljava/lang/Object;

    iput-object p2, p0, Ljzf;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Llzn;Lapy;I)V
    .locals 0

    iput p3, p0, Ljzf;->c:I

    iput-object p1, p0, Ljzf;->b:Ljava/lang/Object;

    iput-object p2, p0, Ljzf;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Llzn;Llwq;I)V
    .locals 0

    iput p3, p0, Ljzf;->c:I

    iput-object p1, p0, Ljzf;->b:Ljava/lang/Object;

    iput-object p2, p0, Ljzf;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Ljzf;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ljzf;->b:Ljava/lang/Object;

    check-cast v0, Llzn;

    iget-object v0, v0, Llzn;->a:Lapt;

    invoke-virtual {v0}, Lapt;->m()V

    goto/16 :goto_5

    :pswitch_0
    iget-object v0, p0, Ljzf;->b:Ljava/lang/Object;

    check-cast v0, Llzn;

    iget-object v0, v0, Llzn;->a:Lapt;

    iget-object v3, p0, Ljzf;->a:Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Laey;->e(Lapt;Laqv;Z)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Ljzf;->a:Ljava/lang/Object;

    check-cast v0, Lapy;

    invoke-virtual {v0}, Lapy;->j()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Ljzf;->a:Ljava/lang/Object;

    check-cast v0, Lapy;

    invoke-virtual {v0}, Lapy;->j()V

    throw v1

    :pswitch_1
    iget-object v0, p0, Ljzf;->b:Ljava/lang/Object;

    check-cast v0, Llwu;

    iget-object v0, v0, Llwu;->a:Lapt;

    iget-object v3, p0, Ljzf;->a:Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Laey;->e(Lapt;Laqv;Z)Landroid/database/Cursor;

    move-result-object v0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Llyc;->k(Ljava/lang/Long;)Lnyy;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :cond_3
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Ljzf;->a:Ljava/lang/Object;

    check-cast v0, Lapy;

    invoke-virtual {v0}, Lapy;->j()V

    return-object v1

    :catchall_1
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Ljzf;->a:Ljava/lang/Object;

    check-cast v0, Lapy;

    invoke-virtual {v0}, Lapy;->j()V

    throw v1

    :pswitch_2
    iget-object v0, p0, Ljzf;->a:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iget-boolean v2, v0, Lcom/airbnb/lottie/LottieAnimationView;->e:Z

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ljzf;->b:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "asset_"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lbgd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lbgp;

    move-result-object v0

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Ljzf;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lbgd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lbgp;

    move-result-object v0

    :goto_3
    return-object v0

    :pswitch_3
    iget-object v0, p0, Ljzf;->b:Ljava/lang/Object;

    check-cast v0, Ljzi;

    iget-object v0, v0, Ljzi;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    iget-object v3, p0, Ljzf;->b:Ljava/lang/Object;

    check-cast v3, Ljzi;

    iget v3, v3, Ljzi;->d:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    :goto_4
    invoke-static {v2}, Lmoz;->p(Z)V

    iget-object v2, p0, Ljzf;->b:Ljava/lang/Object;

    check-cast v2, Ljzi;

    iget-object v2, v2, Ljzi;->b:Ljzd;

    new-instance v3, Ljze;

    invoke-direct {v3, p0}, Ljze;-><init>(Ljzf;)V

    invoke-interface {v2, v3}, Ljzd;->t(Landroid/media/MediaRecorder$OnInfoListener;)V

    iget-object v2, p0, Ljzf;->b:Ljava/lang/Object;

    check-cast v2, Ljzi;

    iget-object v2, v2, Ljzi;->b:Ljzd;

    invoke-interface {v2}, Ljzd;->C()V

    iget-object v2, p0, Ljzf;->b:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Ljzi;

    iget-object v3, v3, Ljzi;->c:Ljye;

    if-eqz v3, :cond_6

    check-cast v2, Ljzi;

    iget-object v2, v2, Ljzi;->b:Ljzd;

    invoke-interface {v2}, Ljzd;->a()Landroid/media/MediaRecorder;

    move-result-object v2

    invoke-interface {v3, v2}, Ljye;->b(Landroid/media/AudioRouting;)V

    :cond_6
    iget-object v2, p0, Ljzf;->b:Ljava/lang/Object;

    check-cast v2, Ljzi;

    const/4 v3, 0x2

    iput v3, v2, Ljzi;->d:I

    monitor-exit v0

    return-object v1

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    :goto_5
    :try_start_3
    iget-object v0, p0, Ljzf;->b:Ljava/lang/Object;

    check-cast v0, Llzn;

    iget-object v0, v0, Llzn;->b:Lapn;

    iget-object v1, p0, Ljzf;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lapn;->a(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Ljzf;->b:Ljava/lang/Object;

    check-cast v1, Llzn;

    iget-object v1, v1, Llzn;->a:Lapt;

    invoke-virtual {v1}, Lapt;->q()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    iget-object v1, p0, Ljzf;->b:Ljava/lang/Object;

    check-cast v1, Llzn;

    iget-object v1, v1, Llzn;->a:Lapt;

    invoke-virtual {v1}, Lapt;->o()V

    return-object v0

    :catchall_3
    move-exception v0

    iget-object v1, p0, Ljzf;->b:Ljava/lang/Object;

    check-cast v1, Llzn;

    iget-object v1, v1, Llzn;->a:Lapt;

    invoke-virtual {v1}, Lapt;->o()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
