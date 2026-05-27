.class public final Lhkr;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lhkr;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lhkp;
    .locals 1

    new-instance v0, Lhkp;

    invoke-direct {v0}, Lhkp;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lhkr;->a:I

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-object v0

    :pswitch_1
    new-instance v0, Ljvk;

    new-array v1, v1, [Lhyb;

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lhxt;

    invoke-direct {v0}, Lhxt;-><init>()V

    return-object v0

    :pswitch_3
    new-instance v0, Ljvk;

    invoke-direct {v0, v2}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_4
    new-instance v0, Lhsh;

    invoke-direct {v0}, Lhsh;-><init>()V

    return-object v0

    :pswitch_5
    const-string v0, "trk-roi"

    invoke-static {v0}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_6
    const-string v0, "trk-analysis"

    invoke-static {v0}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_7
    const-string v0, "trk-deinit"

    invoke-static {v0}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_8
    new-instance v0, Ljuf;

    invoke-direct {v0}, Ljuf;-><init>()V

    return-object v0

    :pswitch_9
    const-string v0, "CheetahExecutor"

    invoke-static {v0}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_a
    invoke-static {}, Ljhp;->ap()Ljwm;

    move-result-object v0

    return-object v0

    :pswitch_b
    invoke-static {}, Ljhp;->ax()Ljyx;

    move-result-object v0

    return-object v0

    :pswitch_c
    new-instance v0, Ljvk;

    invoke-direct {v0, v2}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_d
    new-instance v0, Ljvk;

    sget-object v1, Lhmt;->a:Lhmt;

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_e
    new-instance v0, Ljvk;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_f
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "Raw"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Lhlc;

    invoke-direct {v0, v1}, Lhlc;-><init>(Ljava/io/File;)V

    return-object v0

    :pswitch_10
    invoke-static {}, Ljfc;->g()Lhlc;

    move-result-object v0

    return-object v0

    :pswitch_11
    new-instance v0, Lhkv;

    invoke-direct {v0}, Lhkv;-><init>()V

    return-object v0

    :pswitch_12
    new-instance v0, Lkrf;

    invoke-direct {v0}, Lkrf;-><init>()V

    return-object v0

    :pswitch_13
    invoke-static {}, Lhkr;->a()Lhkp;

    move-result-object v0

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
