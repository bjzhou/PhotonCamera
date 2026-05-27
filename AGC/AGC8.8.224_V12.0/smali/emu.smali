.class public final Lemu;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lemu;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljwb;
    .locals 1

    sget-object v0, Leyk;->a:Ljwb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lemu;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lfcj;

    invoke-direct {v0}, Lfcj;-><init>()V

    return-object v0

    :pswitch_0
    new-instance v0, Lfbt;

    invoke-direct {v0}, Lfbt;-><init>()V

    return-object v0

    :pswitch_1
    new-instance v0, Lcom/google/android/apps/camera/logging/InstrumentationCameraEventLogger;

    invoke-direct {v0}, Lcom/google/android/apps/camera/logging/InstrumentationCameraEventLogger;-><init>()V

    return-object v0

    :pswitch_2
    throw v1

    :pswitch_3
    new-instance v0, Ljvk;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_4
    new-instance v0, Lgxb;

    sget-object v1, Lika;->r:Lika;

    invoke-direct {v0, v1}, Lgxb;-><init>(Lika;)V

    return-object v0

    :pswitch_5
    new-instance v0, Lgxb;

    sget-object v1, Lika;->g:Lika;

    invoke-direct {v0, v1}, Lgxb;-><init>(Lika;)V

    return-object v0

    :pswitch_6
    new-instance v0, Lgxb;

    sget-object v1, Lika;->l:Lika;

    invoke-direct {v0, v1}, Lgxb;-><init>(Lika;)V

    return-object v0

    :pswitch_7
    new-instance v0, Lgxb;

    sget-object v1, Lika;->m:Lika;

    invoke-direct {v0, v1}, Lgxb;-><init>(Lika;)V

    return-object v0

    :pswitch_8
    new-instance v0, Lgxb;

    sget-object v1, Lika;->h:Lika;

    invoke-direct {v0, v1}, Lgxb;-><init>(Lika;)V

    return-object v0

    :pswitch_9
    new-instance v0, Lgxb;

    sget-object v1, Lika;->b:Lika;

    invoke-direct {v0, v1}, Lgxb;-><init>(Lika;)V

    return-object v0

    :pswitch_a
    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0

    :pswitch_b
    return-object v2

    :pswitch_c
    new-instance v0, Ljvk;

    invoke-direct {v0, v2}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_d
    new-instance v0, Leph;

    invoke-direct {v0}, Leph;-><init>()V

    return-object v0

    :pswitch_e
    new-instance v0, Lnrm;

    invoke-direct {v0}, Lnrm;-><init>()V

    return-object v0

    :pswitch_f
    new-instance v0, Lgmf;

    invoke-direct {v0}, Lgmf;-><init>()V

    return-object v0

    :pswitch_10
    new-instance v0, Llas;

    invoke-direct {v0, v1}, Llas;-><init>([B)V

    return-object v0

    :pswitch_11
    new-instance v0, Ljvk;

    invoke-direct {v0, v2}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_12
    new-instance v0, Lemq;

    invoke-direct {v0}, Lemq;-><init>()V

    return-object v0

    :pswitch_13
    new-instance v0, Lems;

    invoke-direct {v0}, Lems;-><init>()V

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
