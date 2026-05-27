.class public final Lcko;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final synthetic a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcvm;I)V
    .locals 0

    iput p2, p0, Lcko;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcko;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;I)V
    .locals 0

    iput p2, p0, Lcko;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcko;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(Loiw;)Lcko;
    .locals 2

    new-instance v0, Lcko;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcko;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static b(Loiw;)Lcko;
    .locals 2

    new-instance v0, Lcko;

    const/16 v1, 0x13

    invoke-direct {v0, p0, v1}, Lcko;-><init>(Loiw;I)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 31

    move-object/from16 v0, p0

    iget v1, v0, Lcko;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lcko;->b:Ljava/lang/Object;

    check-cast v1, Ldwh;

    invoke-virtual {v1}, Ldwh;->a()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/google/android/apps/camera/camerafatalerror/CameraFatalErrorTrackerDatabase;

    const-string v3, "CameraFatalErrorTracker_db"

    invoke-static {v1, v2, v3}, Laek;->g(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Laps;

    move-result-object v1

    invoke-virtual {v1}, Laps;->d()V

    invoke-virtual {v1}, Laps;->a()Lapt;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/camerafatalerror/CameraFatalErrorTrackerDatabase;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v1

    :pswitch_0
    iget-object v1, v0, Lcko;->b:Ljava/lang/Object;

    check-cast v1, Lels;

    invoke-virtual {v1}, Lels;->a()Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Ldbk;

    invoke-direct {v2, v1}, Ldbk;-><init>(Landroid/content/Intent;)V

    return-object v2

    :pswitch_1
    iget-object v1, v0, Lcko;->b:Ljava/lang/Object;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhgy;

    new-instance v2, Lcvr;

    invoke-direct {v2, v1}, Lcvr;-><init>(Lhgy;)V

    return-object v2

    :pswitch_2
    iget-object v1, v0, Lcko;->b:Ljava/lang/Object;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljvs;

    new-instance v2, Lczf;

    invoke-direct {v2, v1}, Lczf;-><init>(Ljvs;)V

    return-object v2

    :pswitch_3
    iget-object v1, v0, Lcko;->b:Ljava/lang/Object;

    check-cast v1, Lcvo;

    invoke-virtual {v1}, Lcvo;->a()Lcsc;

    move-result-object v1

    iget-object v1, v1, Lcsc;->d:Ljwu;

    invoke-virtual {v1}, Ljwu;->b()Lkaf;

    move-result-object v1

    return-object v1

    :pswitch_4
    iget-object v1, v0, Lcko;->b:Ljava/lang/Object;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldfa;

    iget-object v1, v1, Ldfa;->e:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v1

    :pswitch_5
    iget-object v1, v0, Lcko;->b:Ljava/lang/Object;

    check-cast v1, Lfmj;

    invoke-virtual {v1}, Lfmj;->a()Lkli;

    move-result-object v1

    new-instance v2, Lcvr;

    invoke-direct {v2, v1}, Lcvr;-><init>(Lkli;)V

    return-object v2

    :pswitch_6
    iget-object v1, v0, Lcko;->b:Ljava/lang/Object;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgzv;

    new-instance v2, Lcvz;

    invoke-direct {v2, v1}, Lcvz;-><init>(Lgzv;)V

    return-object v2

    :pswitch_7
    iget-object v1, v0, Lcko;->b:Ljava/lang/Object;

    check-cast v1, Lcvm;

    iget-object v1, v1, Lcvm;->d:Ljava/lang/Object;

    return-object v1

    :pswitch_8
    iget-object v1, v0, Lcko;->b:Ljava/lang/Object;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    new-instance v2, Lcvl;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3}, Lcvl;-><init>(Ldhi;I)V

    return-object v2

    :pswitch_9
    iget-object v1, v0, Lcko;->b:Ljava/lang/Object;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    new-instance v3, Lcvl;

    invoke-direct {v3, v1, v2}, Lcvl;-><init>(Ldhi;I)V

    return-object v3

    :pswitch_a
    iget-object v1, v0, Lcko;->b:Ljava/lang/Object;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    new-instance v2, Lcvl;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcvl;-><init>(Ldhi;I)V

    return-object v2

    :pswitch_b
    iget-object v1, v0, Lcko;->b:Ljava/lang/Object;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcvr;

    new-instance v2, Lctv;

    invoke-direct {v2, v1, v4, v4}, Lctv;-><init>(Lcvr;[B[B)V

    return-object v2

    :pswitch_c
    iget-object v1, v0, Lcko;->b:Ljava/lang/Object;

    check-cast v1, Ldqo;

    invoke-virtual {v1}, Ldqo;->a()Lmqp;

    new-instance v1, Lcvr;

    invoke-direct {v1, v4, v4}, Lcvr;-><init>([B[B)V

    return-object v1

    :pswitch_d
    iget-object v1, v0, Lcko;->b:Ljava/lang/Object;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcrb;

    new-instance v2, Lcvr;

    invoke-direct {v2, v1}, Lcvr;-><init>(Lcrb;)V

    return-object v2

    :pswitch_e
    iget-object v1, v0, Lcko;->b:Ljava/lang/Object;

    check-cast v1, Lesc;

    invoke-virtual {v1}, Lesc;->a()Lva;

    move-result-object v1

    iget-object v4, v1, Lva;->c:Ljava/lang/Object;

    iget-object v5, v1, Lva;->a:Ljava/lang/Object;

    iget-object v1, v1, Lva;->b:Ljava/lang/Object;

    check-cast v4, Lesh;

    iget-object v6, v4, Lesh;->fY:Loiw;

    new-instance v7, Lihq;

    const/16 v8, 0xf

    invoke-direct {v7, v6, v8}, Lihq;-><init>(Loiw;I)V

    invoke-static {v7}, Logj;->b(Loiw;)Loiw;

    move-result-object v6

    sget-object v7, Ljxf;->a:Lims;

    invoke-static {v7}, Logj;->b(Loiw;)Loiw;

    move-result-object v7

    iget-object v8, v4, Lesh;->av:Loiw;

    new-instance v9, Lcrw;

    invoke-direct {v9, v6, v7, v8}, Lcrw;-><init>(Loiw;Loiw;Loiw;)V

    new-instance v8, Ljxo;

    invoke-direct {v8, v7}, Ljxo;-><init>(Loiw;)V

    new-instance v10, Ljxm;

    invoke-direct {v10, v7}, Ljxm;-><init>(Loiw;)V

    check-cast v5, Lerz;

    iget-object v7, v5, Lerz;->aj:Loiw;

    new-instance v11, Lcuj;

    invoke-direct {v11, v7, v6, v8, v10}, Lcuj;-><init>(Loiw;Loiw;Loiw;Loiw;)V

    sget-object v6, Lcpa;->a:Lcla;

    invoke-static {v6}, Logj;->b(Loiw;)Loiw;

    move-result-object v6

    move-object/from16 v19, v6

    new-instance v7, Lcko;

    invoke-direct {v7, v6, v3}, Lcko;-><init>(Loiw;I)V

    invoke-static {v7}, Logj;->b(Loiw;)Loiw;

    move-result-object v18

    iget-object v3, v4, Lesh;->hq:Loiw;

    new-instance v6, Lcvc;

    move-object/from16 v22, v6

    invoke-direct {v6, v3}, Lcvc;-><init>(Loiw;)V

    iget-object v3, v4, Lesh;->hr:Loiw;

    check-cast v1, Lese;

    iget-object v6, v1, Lese;->A:Loiw;

    new-instance v7, Lcuz;

    move-object/from16 v29, v7

    invoke-direct {v7, v3, v6}, Lcuz;-><init>(Loiw;Loiw;)V

    iget-object v13, v4, Lesh;->hp:Loiw;

    iget-object v14, v1, Lese;->R:Loiw;

    iget-object v15, v1, Lese;->S:Loiw;

    iget-object v3, v1, Lese;->T:Loiw;

    move-object/from16 v16, v3

    iget-object v3, v1, Lese;->K:Loiw;

    move-object/from16 v17, v3

    iget-object v3, v5, Lerz;->aj:Loiw;

    move-object/from16 v20, v3

    iget-object v3, v4, Lesh;->h:Loiw;

    move-object/from16 v21, v3

    iget-object v3, v4, Lesh;->cw:Loiw;

    move-object/from16 v23, v3

    iget-object v3, v1, Lese;->H:Loiw;

    move-object/from16 v24, v3

    iget-object v1, v1, Lese;->L:Loiw;

    move-object/from16 v25, v1

    iget-object v1, v4, Lesh;->hS:Loiw;

    move-object/from16 v26, v1

    iget-object v1, v5, Lerz;->bb:Loiw;

    move-object/from16 v27, v1

    iget-object v1, v4, Lesh;->f:Loiw;

    move-object/from16 v28, v1

    new-instance v1, Lcum;

    move-object v12, v1

    const/16 v30, 0x0

    invoke-direct/range {v12 .. v30}, Lcum;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;I)V

    invoke-static {v1}, Logj;->b(Loiw;)Loiw;

    move-result-object v1

    new-instance v3, Lcpb;

    invoke-direct {v3, v9, v11, v1, v2}, Lcpb;-><init>(Loiw;Loiw;Loiw;I)V

    invoke-static {v3}, Logj;->b(Loiw;)Loiw;

    move-result-object v1

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldja;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v1

    :pswitch_f
    iget-object v1, v0, Lcko;->b:Ljava/lang/Object;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v1}, Lnsy;->r(Ljava/util/concurrent/ScheduledExecutorService;)Lnox;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v1

    :pswitch_10
    iget-object v1, v0, Lcko;->b:Ljava/lang/Object;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldsx;

    invoke-static {v1}, Ldnf;->f(Ldsx;)Ldva;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v4, v5, v2}, Ldva;->c(JLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v1}, Ldva;->b()V

    const/4 v2, 0x3

    iput v2, v1, Ldva;->a:I

    iput v3, v1, Ldva;->c:I

    invoke-virtual {v1}, Ldva;->a()Lduv;

    move-result-object v1

    return-object v1

    :pswitch_11
    iget-object v1, v0, Lcko;->b:Ljava/lang/Object;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcvr;

    invoke-static {}, Lcla;->a()Lmrq;

    move-result-object v4

    new-instance v1, Lcln;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcln;-><init>(Lcvr;Lmrq;[B[B[B)V

    return-object v1

    :pswitch_12
    iget-object v1, v0, Lcko;->b:Ljava/lang/Object;

    invoke-static {v1}, Logj;->a(Loiw;)Logd;

    move-result-object v1

    new-instance v2, Lckd;

    invoke-direct {v2, v1}, Lckd;-><init>(Logd;)V

    return-object v2

    :pswitch_13
    iget-object v1, v0, Lcko;->b:Ljava/lang/Object;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgzn;

    sget-object v2, Lgzd;->am:Lgzs;

    invoke-interface {v1, v2}, Lgzn;->b(Lgzb;)Ljwb;

    move-result-object v1

    sget-object v2, Lcfv;->i:Lcfv;

    sget-object v3, Lcfv;->j:Lcfv;

    invoke-static {v1, v2, v3}, Ljwa;->b(Ljwb;Lmqi;Lmqi;)Ljwb;

    move-result-object v1

    return-object v1

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
