.class public final Lgsi;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lgsi;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lgwm;
    .locals 1

    new-instance v0, Lgwm;

    invoke-direct {v0}, Lgwm;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lgsi;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljvk;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lgxd;

    invoke-direct {v0}, Lgxd;-><init>()V

    return-object v0

    :pswitch_1
    invoke-static {}, Lgsi;->a()Lgwm;

    move-result-object v0

    return-object v0

    :pswitch_2
    new-instance v0, Lbkb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbkb;-><init>([I)V

    return-object v0

    :pswitch_3
    new-instance v0, Ljul;

    const-string v1, "med-res-save"

    invoke-static {v1}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Ljul;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0

    :pswitch_4
    new-instance v0, Lgtw;

    invoke-direct {v0}, Lgtw;-><init>()V

    return-object v0

    :pswitch_5
    new-instance v0, Lgtu;

    invoke-direct {v0}, Lgtu;-><init>()V

    return-object v0

    :pswitch_6
    const-string v0, "mcfly-buffer"

    invoke-static {v0}, Ljvd;->c(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_7
    new-instance v0, Lgto;

    invoke-direct {v0}, Lgto;-><init>()V

    return-object v0

    :pswitch_8
    sget-object v0, Lgtg;->b:Ljwb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_9
    sget-object v0, Lgtg;->a:Ljwb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_a
    sget-object v0, Lgtg;->a:Ljwb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_b
    new-instance v0, Lgtb;

    invoke-direct {v0}, Lgtb;-><init>()V

    return-object v0

    :pswitch_c
    new-instance v0, Lgtl;

    invoke-direct {v0}, Lgtl;-><init>()V

    return-object v0

    :pswitch_d
    new-instance v0, Lflb;

    invoke-direct {v0}, Lflb;-><init>()V

    return-object v0

    :pswitch_e
    new-instance v0, Lgsp;

    invoke-direct {v0}, Lgsp;-><init>()V

    return-object v0

    :pswitch_f
    new-instance v0, Lflb;

    invoke-direct {v0}, Lflb;-><init>()V

    return-object v0

    :pswitch_10
    new-instance v0, Lgsj;

    invoke-direct {v0}, Lgsj;-><init>()V

    return-object v0

    :pswitch_11
    new-instance v0, Lgsj;

    invoke-direct {v0}, Lgsj;-><init>()V

    return-object v0

    :pswitch_12
    new-instance v0, Lgsj;

    invoke-direct {v0}, Lgsj;-><init>()V

    return-object v0

    :pswitch_13
    new-instance v0, Lgxb;

    invoke-direct {v0}, Lgxb;-><init>()V

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
