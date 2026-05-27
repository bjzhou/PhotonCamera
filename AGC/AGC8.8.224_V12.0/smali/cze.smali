.class public final synthetic Lcze;
.super Ljava/lang/Object;

# interfaces
.implements Lkai;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcxb;I)V
    .locals 0

    iput p2, p0, Lcze;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcze;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lczf;I)V
    .locals 0

    iput p2, p0, Lcze;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcze;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lczp;I)V
    .locals 0

    iput p2, p0, Lcze;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcze;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lczz;I)V
    .locals 0

    iput p2, p0, Lcze;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcze;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldec;I)V
    .locals 0

    iput p2, p0, Lcze;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcze;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldfb;I)V
    .locals 0

    iput p2, p0, Lcze;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcze;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldfo;I)V
    .locals 0

    iput p2, p0, Lcze;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcze;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldfv;I)V
    .locals 0

    iput p2, p0, Lcze;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcze;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldgh;I)V
    .locals 0

    iput p2, p0, Lcze;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcze;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldkp;I)V
    .locals 0

    iput p2, p0, Lcze;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcze;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldoq;I)V
    .locals 0

    iput p2, p0, Lcze;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcze;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldqj;I)V
    .locals 0

    iput p2, p0, Lcze;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcze;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgeh;I)V
    .locals 0

    iput p2, p0, Lcze;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcze;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bn(Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, Lcze;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcze;->a:Ljava/lang/Object;

    check-cast p1, Lika;

    check-cast v0, Ldqj;

    invoke-virtual {v0}, Ldqj;->d()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcze;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    check-cast v0, Ldqj;

    invoke-virtual {v0}, Ldqj;->d()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcze;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    check-cast v0, Ldoq;

    iget-object v0, v0, Ldoq;->a:Lcom/google/android/apps/camera/evcomp/EvCompView;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/evcomp/EvCompView;->i(F)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcze;->a:Ljava/lang/Object;

    check-cast p1, Lika;

    invoke-interface {v0, p1}, Ldkp;->d(Lika;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcze;->a:Ljava/lang/Object;

    check-cast p1, Lika;

    check-cast v0, Ldgh;

    invoke-virtual {v0}, Ldgh;->c()V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcze;->a:Ljava/lang/Object;

    check-cast p1, Lika;

    check-cast v0, Ldfv;

    invoke-virtual {v0}, Ldfv;->c()V

    return-void

    :pswitch_5
    iget-object v0, p0, Lcze;->a:Ljava/lang/Object;

    check-cast p1, Lika;

    check-cast v0, Ldfo;

    invoke-virtual {v0}, Ldfo;->c()V

    return-void

    :pswitch_6
    iget-object v0, p0, Lcze;->a:Ljava/lang/Object;

    check-cast p1, Lhmt;

    sget-object v1, Lhmt;->a:Lhmt;

    invoke-virtual {p1, v1}, Lhmt;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    check-cast v0, Ldfb;

    invoke-virtual {v0}, Ldfb;->b()V

    return-void

    :cond_0
    check-cast v0, Ldfb;

    invoke-virtual {v0}, Ldfb;->a()V

    return-void

    :pswitch_7
    iget-object v0, p0, Lcze;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    check-cast v0, Ldec;

    iput-boolean v1, v0, Ldec;->v:Z

    invoke-virtual {v0}, Ldec;->i()V

    return-void

    :cond_1
    check-cast v0, Ldec;

    iput-boolean v2, v0, Ldec;->v:Z

    invoke-virtual {v0}, Ldec;->h()V

    return-void

    :pswitch_8
    iget-object v0, p0, Lcze;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-interface {v0}, Lgeh;->b()Lika;

    move-result-object p1

    sget-object v1, Lika;->c:Lika;

    invoke-virtual {v1, p1}, Lika;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lgec;->u:Lgec;

    invoke-interface {v0, v2, p1}, Lgeh;->o(ZLgec;)V

    :cond_2
    return-void

    :pswitch_9
    iget-object v0, p0, Lcze;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    sget-object p1, Lgec;->i:Lgec;

    invoke-interface {v0, v2, p1}, Lgeh;->o(ZLgec;)V

    return-void

    :pswitch_a
    iget-object v0, p0, Lcze;->a:Ljava/lang/Object;

    check-cast p1, Lgyw;

    check-cast v0, Lczz;

    iput-boolean v1, v0, Lczz;->g:Z

    return-void

    :pswitch_b
    iget-object v0, p0, Lcze;->a:Ljava/lang/Object;

    check-cast p1, Lgej;

    check-cast v0, Lczz;

    invoke-virtual {v0}, Lczz;->o()Lgej;

    move-result-object v1

    invoke-virtual {p1, v1}, Lgej;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v0}, Lczz;->q()Ljwb;

    move-result-object v0

    sget-object v1, Lgyr;->a:Lgyr;

    invoke-virtual {p1}, Lgej;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Invalid menu option: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_c
    sget-object p1, Lgyr;->d:Lgyr;

    goto :goto_0

    :pswitch_d
    sget-object p1, Lgyr;->c:Lgyr;

    goto :goto_0

    :pswitch_e
    sget-object p1, Lgyr;->b:Lgyr;

    goto :goto_0

    :pswitch_f
    sget-object p1, Lgyr;->a:Lgyr;

    :goto_0
    invoke-interface {v0, p1}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_10
    iget-object v0, p0, Lcze;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    check-cast v0, Lczz;

    invoke-virtual {v0}, Lczz;->t()V

    return-void

    :pswitch_11
    iget-object v0, p0, Lcze;->a:Ljava/lang/Object;

    check-cast p1, Ldbw;

    check-cast v0, Lczp;

    iget-object v1, v0, Lczp;->m:Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ldbw;->a()Lklv;

    move-result-object p1

    invoke-virtual {v0, p1}, Lczp;->j(Lklv;)V

    return-void

    :cond_5
    :goto_1
    return-void

    :pswitch_12
    iget-object v0, p0, Lcze;->a:Ljava/lang/Object;

    check-cast p1, Lfmg;

    iget-boolean p1, p1, Lfmg;->c:Z

    if-eqz p1, :cond_7

    check-cast v0, Lczp;

    iget-object p1, v0, Lczp;->e:Lczr;

    iget-object p1, p1, Lczr;->h:Ljava/util/LinkedHashMap;

    iget-object v2, v0, Lczp;->a:Ljwb;

    invoke-interface {v2}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lczp;->a()V

    invoke-virtual {v0, v1}, Lczp;->f(Z)V

    iget-object p1, v0, Lczp;->j:Lczx;

    invoke-interface {p1}, Lczx;->f()V

    return-void

    :cond_7
    :goto_2
    return-void

    :pswitch_13
    iget-object v0, p0, Lcze;->a:Ljava/lang/Object;

    check-cast p1, Lika;

    move-object v1, v0

    check-cast v1, Lczp;

    invoke-virtual {v1, p1}, Lczp;->k(Lika;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, v1, Lczp;->i:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    move-object v4, v0

    check-cast v4, Lczp;

    iput-object p1, v4, Lczp;->l:Lika;

    check-cast v0, Lczp;

    iget-object v0, v0, Lczp;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-virtual {v4, p1}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->d(Lika;)V

    goto :goto_3

    :cond_8
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1, v2}, Lczp;->d(Z)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_9
    invoke-virtual {v1, p1}, Lczp;->l(Lika;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v1, p1}, Lczp;->i(Lika;)V

    :cond_a
    return-void

    :pswitch_14
    iget-object v0, p0, Lcze;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    sget-object p1, Lgec;->t:Lgec;

    invoke-interface {v0, v2, p1}, Lgeh;->o(ZLgec;)V

    return-void

    :pswitch_15
    iget-object v0, p0, Lcze;->a:Ljava/lang/Object;

    check-cast p1, Lgej;

    sget-object p1, Lgec;->t:Lgec;

    invoke-interface {v0, v2, p1}, Lgeh;->o(ZLgec;)V

    return-void

    :pswitch_16
    iget-object v0, p0, Lcze;->a:Ljava/lang/Object;

    check-cast p1, Lika;

    check-cast v0, Lcxb;

    iget-boolean v1, v0, Lcxb;->g:Z

    if-eqz v1, :cond_b

    iput-boolean v2, v0, Lcxb;->g:Z

    return-void

    :cond_b
    sget-object v1, Lika;->c:Lika;

    invoke-virtual {p1, v1}, Lika;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, v0, Lcxb;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {v0, v2}, Lcxb;->c(Z)V

    :cond_c
    return-void

    :pswitch_17
    iget-object v0, p0, Lcze;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    check-cast v0, Lczf;

    invoke-virtual {v0}, Lczf;->d()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1a
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method
