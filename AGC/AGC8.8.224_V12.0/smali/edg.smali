.class public final synthetic Ledg;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroid/os/Looper;I)V
    .locals 0

    iput p2, p0, Ledg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ledg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lceh;I)V
    .locals 0

    iput p2, p0, Ledg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ledg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcmc;I[B)V
    .locals 0

    iput p2, p0, Ledg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ledg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldja;I[B)V
    .locals 0

    iput p2, p0, Ledg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ledg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lefd;I)V
    .locals 0

    iput p2, p0, Ledg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ledg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Leoa;I)V
    .locals 0

    iput p2, p0, Ledg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ledg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Leop;I)V
    .locals 0

    iput p2, p0, Ledg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ledg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Leuc;I)V
    .locals 0

    iput p2, p0, Ledg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ledg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Leuj;I)V
    .locals 0

    iput p2, p0, Ledg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ledg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Levk;I)V
    .locals 0

    iput p2, p0, Ledg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ledg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfvx;I[B)V
    .locals 0

    iput p2, p0, Ledg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ledg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/Future;I)V
    .locals 0

    iput p2, p0, Ledg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ledg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljwb;I)V
    .locals 0

    iput p2, p0, Ledg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ledg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkad;I)V
    .locals 0

    iput p2, p0, Ledg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ledg;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 6

    iget v0, p0, Ledg;->b:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ledg;->a:Ljava/lang/Object;

    check-cast v0, Ldja;

    iget-object v0, v0, Ldja;->c:Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/android/libraries/lens/lenslite/dynamicloading/DLEngineApi;->shutdown()V

    return-void

    :pswitch_0
    iget-object v0, p0, Ledg;->a:Ljava/lang/Object;

    check-cast v0, Ldja;

    invoke-virtual {v0}, Ldja;->t()J

    move-result-wide v1

    sget-object v3, Lcom/google/android/libraries/lens/lenslite/dynamicloading/ApiVersion;->VERSION_8:Lcom/google/android/libraries/lens/lenslite/dynamicloading/ApiVersion;

    invoke-virtual {v3}, Lcom/google/android/libraries/lens/lenslite/dynamicloading/ApiVersion;->getVersionCode()I

    move-result v3

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    iget-object v0, v0, Ldja;->c:Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/android/libraries/lens/lenslite/dynamicloading/DLEngineApi;->stopLinkLogging()V

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, p0, Ledg;->a:Ljava/lang/Object;

    check-cast v0, Levk;

    iget-object v1, v0, Levk;->l:Leoa;

    iget-object v0, v0, Levk;->S:Lenz;

    invoke-virtual {v1, v0}, Leoa;->b(Lenz;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Ledg;->a:Ljava/lang/Object;

    check-cast v0, Levk;

    iget-object v1, v0, Levk;->v:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iget-object v0, v0, Levk;->Q:Lcom/google/android/apps/camera/bottombar/BottomBarListener;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->removeListener(Lcom/google/android/apps/camera/bottombar/BottomBarListener;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Ledg;->a:Ljava/lang/Object;

    check-cast v0, Lcmc;

    iget-object v0, v0, Lcmc;->a:Ljava/lang/Object;

    check-cast v0, Leuy;

    iget-object v0, v0, Leuy;->p:Leuo;

    invoke-virtual {v0, v1}, Leuo;->a(Z)V

    return-void

    :pswitch_4
    iget-object v0, p0, Ledg;->a:Ljava/lang/Object;

    check-cast v0, Leuj;

    iget-object v1, v0, Leuj;->o:Leoa;

    iget-object v0, v0, Leuj;->F:Lenz;

    invoke-virtual {v1, v0}, Leoa;->b(Lenz;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Ledg;->a:Ljava/lang/Object;

    check-cast v0, Leuj;

    iget-object v1, v0, Leuj;->m:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iget-object v0, v0, Leuj;->D:Lcom/google/android/apps/camera/bottombar/BottomBarListener;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->removeListener(Lcom/google/android/apps/camera/bottombar/BottomBarListener;)V

    return-void

    :pswitch_6
    iget-object v0, p0, Ledg;->a:Ljava/lang/Object;

    check-cast v0, Leuc;

    iget-object v0, v0, Leuc;->x:Lfdc;

    invoke-virtual {v0}, Lfdc;->a()V

    return-void

    :pswitch_7
    iget-object v0, p0, Ledg;->a:Ljava/lang/Object;

    check-cast v0, Leuc;

    iget-object v1, v0, Leuc;->i:Leoa;

    iget-object v0, v0, Leuc;->P:Lenz;

    invoke-virtual {v1, v0}, Leoa;->b(Lenz;)V

    return-void

    :pswitch_8
    iget-object v0, p0, Ledg;->a:Ljava/lang/Object;

    check-cast v0, Leuc;

    iget-object v1, v0, Leuc;->r:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iget-object v0, v0, Leuc;->O:Lcom/google/android/apps/camera/bottombar/BottomBarListener;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->removeListener(Lcom/google/android/apps/camera/bottombar/BottomBarListener;)V

    return-void

    :pswitch_9
    iget-object v0, p0, Ledg;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lceh;->b()V

    return-void

    :pswitch_a
    iget-object v0, p0, Ledg;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lceh;->j(Lcey;)V

    return-void

    :pswitch_b
    iget-object v0, p0, Ledg;->a:Ljava/lang/Object;

    sget-object v1, Lepb;->a:Lnak;

    invoke-interface {v0}, Lkad;->close()V

    return-void

    :pswitch_c
    iget-object v0, p0, Ledg;->a:Ljava/lang/Object;

    sget-object v2, Leou;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->c()Lnaz;

    move-result-object v2

    const-string v3, "OneCamera closed, interrupting capture."

    const/16 v4, 0x6a4

    invoke-static {v2, v3, v4}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void

    :pswitch_d
    iget-object v0, p0, Ledg;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Leop;

    iget-object v1, v1, Leop;->b:Leqc;

    invoke-interface {v1, v0}, Leqc;->e(Leqb;)V

    return-void

    :pswitch_e
    iget-object v0, p0, Ledg;->a:Ljava/lang/Object;

    check-cast v0, Leoa;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Leoa;->g(I)V

    return-void

    :pswitch_f
    iget-object v0, p0, Ledg;->a:Ljava/lang/Object;

    check-cast v0, Lfvx;

    iget-object v1, v0, Lfvx;->i:Ljava/lang/Object;

    iget-object v0, v0, Lfvx;->j:Ljava/lang/Object;

    check-cast v1, Leoa;

    invoke-virtual {v1, v0}, Leoa;->b(Lenz;)V

    return-void

    :pswitch_10
    iget-object v0, p0, Ledg;->a:Ljava/lang/Object;

    check-cast v0, Lfvx;

    iget-object v1, v0, Lfvx;->c:Ljava/lang/Object;

    iget-object v0, v0, Lfvx;->k:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/bottombar/BottomBarListener;

    check-cast v1, Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->removeListener(Lcom/google/android/apps/camera/bottombar/BottomBarListener;)V

    return-void

    :pswitch_11
    iget-object v0, p0, Ledg;->a:Ljava/lang/Object;

    check-cast v0, Lefd;

    invoke-virtual {v0}, Lefd;->i()V

    return-void

    :pswitch_12
    iget-object v0, p0, Ledg;->a:Ljava/lang/Object;

    check-cast v0, Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    return-void

    :pswitch_13
    iget-object v0, p0, Ledg;->a:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
.end method
