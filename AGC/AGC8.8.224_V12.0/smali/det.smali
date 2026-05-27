.class public final synthetic Ldet;
.super Ljava/lang/Object;

# interfaces
.implements Lmrl;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    iput p2, p0, Ldet;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldet;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, Ldet;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldet;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/FrameLayout;I)V
    .locals 0

    iput p2, p0, Ldet;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldet;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;I)V
    .locals 0

    iput p2, p0, Ldet;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldet;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/camera/ui/views/MainActivityLayout;I)V
    .locals 0

    iput p2, p0, Ldet;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldet;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldhi;I)V
    .locals 0

    iput p2, p0, Ldet;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldet;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Letr;I)V
    .locals 0

    iput p2, p0, Ldet;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldet;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Liww;I)V
    .locals 0

    iput p2, p0, Ldet;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldet;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;I)V
    .locals 0

    iput p2, p0, Ldet;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldet;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljwd;I)V
    .locals 0

    iput p2, p0, Ldet;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldet;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Llbd;I)V
    .locals 0

    iput p2, p0, Ldet;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldet;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Llim;I)V
    .locals 0

    iput p2, p0, Ldet;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldet;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lmqp;I)V
    .locals 0

    iput p2, p0, Ldet;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldet;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lnwn;I)V
    .locals 0

    iput p2, p0, Ldet;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldet;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Logd;I)V
    .locals 0

    iput p2, p0, Ldet;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldet;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Loiw;I)V
    .locals 0

    iput p2, p0, Ldet;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldet;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Ldet;->b:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ldet;->a:Ljava/lang/Object;

    new-instance v1, Llhz;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Ljnp;->a(Landroid/content/Context;)Ljns;

    move-result-object v0

    invoke-direct {v1, v0}, Llhz;-><init>(Ljns;)V

    return-object v1

    :pswitch_0
    iget-object v0, p0, Ldet;->a:Ljava/lang/Object;

    sget-object v1, Loic;->a:Loic;

    invoke-virtual {v1}, Loic;->b()Loid;

    move-result-object v1

    check-cast v0, Landroid/content/Context;

    invoke-interface {v1, v0}, Loid;->c(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Ldet;->a:Ljava/lang/Object;

    sget-object v1, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;->a:Lmrl;

    sget-object v1, Loht;->a:Loht;

    invoke-virtual {v1}, Loht;->b()Lohu;

    move-result-object v1

    check-cast v0, Landroid/content/Context;

    invoke-interface {v1, v0}, Lohu;->d(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Ldet;->a:Ljava/lang/Object;

    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    return-object v0

    :pswitch_3
    iget-object v0, p0, Ldet;->a:Ljava/lang/Object;

    check-cast v0, Llis;

    invoke-virtual {v0}, Llis;->a()Llir;

    move-result-object v0

    return-object v0

    :pswitch_4
    iget-object v0, p0, Ldet;->a:Ljava/lang/Object;

    check-cast v0, Llim;

    iget-object v0, v0, Llim;->f:Ljava/lang/Object;

    check-cast v0, Lktn;

    invoke-virtual {v0}, Lktn;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_5
    iget-object v0, p0, Ldet;->a:Ljava/lang/Object;

    sget-object v1, Lndg;->a:Lndg;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v1, v0}, Lmvv;->r(Ljava/util/Comparator;Ljava/lang/Iterable;)Lmvv;

    move-result-object v0

    return-object v0

    :pswitch_6
    iget-object v0, p0, Ldet;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    const-string v2, "primes"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    :pswitch_7
    iget-object v0, p0, Ldet;->a:Ljava/lang/Object;

    sget-object v2, Llcl;->a:[F

    const/4 v2, 0x2

    new-array v2, v2, [Lldi;

    sget-object v3, Llcl;->a:[F

    invoke-static {v3}, Lldi;->a([F)Lldi;

    move-result-object v3

    aput-object v3, v2, v1

    sget-object v1, Llcl;->b:[F

    invoke-static {v1}, Lldi;->a([F)Lldi;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lldh;->e(Llbd;[Lldi;)Lldh;

    move-result-object v0

    invoke-static {v0}, Lktf;->l(Lkyc;)Llfg;

    move-result-object v0

    return-object v0

    :pswitch_8
    iget-object v0, p0, Ldet;->a:Ljava/lang/Object;

    check-cast v0, Ljwd;

    iget-object v0, v0, Ljwd;->a:Ljava/lang/Object;

    return-object v0

    :pswitch_9
    iget-object v0, p0, Ldet;->a:Ljava/lang/Object;

    new-instance v2, Ljava/io/File;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v3, "wearos_assets"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v3, "streamtmp"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :pswitch_a
    iget-object v0, p0, Ldet;->a:Ljava/lang/Object;

    new-instance v1, Ljjs;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Ljjs;-><init>(Landroid/app/Activity;)V

    return-object v1

    :pswitch_b
    iget-object v0, p0, Ldet;->a:Ljava/lang/Object;

    check-cast v0, Liww;

    iget v0, v0, Liww;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_c
    iget-object v0, p0, Ldet;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    :pswitch_d
    iget-object v0, p0, Ldet;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->lambda$new$0$com-google-android-apps-camera-ui-shutterbutton-ShutterButton()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_e
    iget-object v0, p0, Ldet;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyt;

    return-object v0

    :pswitch_f
    iget-object v0, p0, Ldet;->a:Ljava/lang/Object;

    return-object v0

    :pswitch_10
    iget-object v0, p0, Ldet;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    :pswitch_11
    iget-object v0, p0, Ldet;->a:Ljava/lang/Object;

    check-cast v0, Letr;

    iget-boolean v0, v0, Letr;->c:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_12
    iget-object v0, p0, Ldet;->a:Ljava/lang/Object;

    sget-object v1, Ldho;->L:Ldhk;

    invoke-interface {v0, v1}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0

    :pswitch_13
    iget-object v0, p0, Ldet;->a:Ljava/lang/Object;

    sget-object v1, Ldeu;->a:Ljava/util/regex/Pattern;

    sget-object v1, Ldht;->D:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->j(Ldhj;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-static {v1}, Lmrd;->b(C)Lmrd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmrd;->d(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    return-object v0

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
