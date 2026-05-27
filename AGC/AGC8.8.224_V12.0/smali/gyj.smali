.class public final Lgyj;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lgyj;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lgyj;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lhjm;

    invoke-direct {v0}, Lhjm;-><init>()V

    return-object v0

    :pswitch_0
    new-instance v0, Lcom/google/android/apps/camera/stats/Instrumentation;

    invoke-direct {v0}, Lcom/google/android/apps/camera/stats/Instrumentation;-><init>()V

    return-object v0

    :pswitch_1
    new-instance v0, Ljji;

    invoke-direct {v0}, Ljji;-><init>()V

    return-object v0

    :pswitch_2
    new-instance v0, Lkxr;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lkxr;-><init>(I)V

    return-object v0

    :pswitch_3
    new-instance v0, Ljji;

    invoke-direct {v0}, Ljji;-><init>()V

    return-object v0

    :pswitch_4
    const-string v0, "smz-img"

    invoke-static {v0}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_5
    const-string v0, "smz-analysis"

    invoke-static {v0}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_6
    new-instance v0, Lhsh;

    invoke-direct {v0, v1}, Lhsh;-><init>([B)V

    return-object v0

    :pswitch_7
    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    return-object v0

    :pswitch_8
    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    return-object v0

    :pswitch_9
    new-instance v0, Llhm;

    invoke-direct {v0, v1}, Llhm;-><init>([B)V

    return-object v0

    :pswitch_a
    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0

    :pswitch_b
    new-instance v0, Lgnu;

    invoke-direct {v0}, Lgnu;-><init>()V

    return-object v0

    :pswitch_c
    new-instance v0, Lfui;

    new-instance v1, Ljvk;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Ljvk;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lfui;-><init>(Ljwb;)V

    return-object v0

    :pswitch_d
    new-instance v0, Lgyg;

    new-instance v1, Ljvk;

    sget-object v2, Lgyu;->e:Lgyu;

    iget v2, v2, Lgyu;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Ljvk;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lgyg;-><init>(Ljwb;)V

    return-object v0

    :pswitch_e
    new-instance v0, Ldja;

    invoke-direct {v0}, Ldja;-><init>()V

    return-object v0

    :pswitch_f
    new-instance v0, Ljvk;

    invoke-direct {v0, v2}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_10
    new-instance v0, Ljvk;

    sget-object v1, Lgys;->a:Lgys;

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_11
    new-instance v0, Ljvk;

    invoke-direct {v0, v2}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_12
    new-instance v0, Ljvk;

    invoke-direct {v0, v2}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_13
    new-instance v0, Ljvk;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

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
