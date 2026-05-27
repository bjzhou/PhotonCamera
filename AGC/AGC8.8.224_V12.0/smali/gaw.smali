.class public final Lgaw;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lgaw;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lgaw;->a:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lfui;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljwa;->a(Ljava/lang/Object;)Ljwb;

    move-result-object v1

    invoke-direct {v0, v1}, Lfui;-><init>(Ljwb;)V

    return-object v0

    :pswitch_0
    new-instance v0, Ljvk;

    sget-object v1, Lgrx;->e:Lgrx;

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lkfd;

    invoke-direct {v0, v1}, Lkfd;-><init>(I)V

    return-object v0

    :pswitch_2
    new-instance v0, Lgfz;

    invoke-direct {v0}, Lgfz;-><init>()V

    return-object v0

    :pswitch_3
    new-instance v0, Ljvk;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_4
    sget-object v0, Lefz;->a:Lefz;

    invoke-static {v0}, Ljvw;->g(Ljava/lang/Object;)Ljvs;

    move-result-object v0

    return-object v0

    :pswitch_5
    sget-object v0, Lgbs;->a:Lgbs;

    return-object v0

    :pswitch_6
    sget-object v0, Lgbr;->a:Lgbr;

    return-object v0

    :pswitch_7
    sget-object v0, Lecy;->b:Lecy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_8
    sget-object v0, Lecy;->a:Lecy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_9
    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0

    :pswitch_a
    sget-object v0, Lecy;->d:Lecy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_b
    sget-object v0, Lfwl;->e:Lfwl;

    invoke-static {v0}, Ljvw;->g(Ljava/lang/Object;)Ljvs;

    move-result-object v0

    return-object v0

    :pswitch_c
    new-instance v0, Lgbg;

    invoke-direct {v0}, Lgbg;-><init>()V

    return-object v0

    :pswitch_d
    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0

    :pswitch_e
    invoke-static {}, Lfwt;->e()Lfwn;

    move-result-object v0

    return-object v0

    :pswitch_f
    sget-object v0, Lecy;->c:Lecy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_10
    new-instance v0, Lgnz;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_LENS_SHADING_CORRECTION_MAP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-direct {v0, v1}, Lgnz;-><init>(Landroid/hardware/camera2/CaptureResult$Key;)V

    return-object v0

    :pswitch_11
    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    return-object v0

    :pswitch_12
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_13
    new-instance v0, Ljvk;

    invoke-static {}, Lfwt;->e()Lfwn;

    move-result-object v1

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

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
