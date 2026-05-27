.class public final Lenq;
.super Ljava/lang/Object;

# interfaces
.implements Lnoj;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Lbkb;Lfyw;I[B[B)V
    .locals 0

    iput p3, p0, Lenq;->c:I

    iput-object p1, p0, Lenq;->b:Ljava/lang/Object;

    iput-object p2, p0, Lenq;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Leia;Lkfl;I)V
    .locals 0

    iput p3, p0, Lenq;->c:I

    iput-object p1, p0, Lenq;->a:Ljava/lang/Object;

    iput-object p2, p0, Lenq;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lens;Lenr;I)V
    .locals 0

    iput p3, p0, Lenq;->c:I

    iput-object p1, p0, Lenq;->b:Ljava/lang/Object;

    iput-object p2, p0, Lenq;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Leqe;Lepd;I)V
    .locals 0

    iput p3, p0, Lenq;->c:I

    iput-object p1, p0, Lenq;->b:Ljava/lang/Object;

    iput-object p2, p0, Lenq;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Leuc;Lkbf;I)V
    .locals 0

    iput p3, p0, Lenq;->c:I

    iput-object p1, p0, Lenq;->a:Ljava/lang/Object;

    iput-object p2, p0, Lenq;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Leuj;Lkbf;I)V
    .locals 0

    iput p3, p0, Lenq;->c:I

    iput-object p1, p0, Lenq;->a:Ljava/lang/Object;

    iput-object p2, p0, Lenq;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Leup;Landroid/net/Uri;I)V
    .locals 0

    iput p3, p0, Lenq;->c:I

    iput-object p1, p0, Lenq;->b:Ljava/lang/Object;

    iput-object p2, p0, Lenq;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Levk;Lkbf;I)V
    .locals 0

    iput p3, p0, Lenq;->c:I

    iput-object p1, p0, Lenq;->a:Ljava/lang/Object;

    iput-object p2, p0, Lenq;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lgqs;Lgxl;I)V
    .locals 0

    iput p3, p0, Lenq;->c:I

    iput-object p1, p0, Lenq;->a:Ljava/lang/Object;

    iput-object p2, p0, Lenq;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lgxr;Lkae;I)V
    .locals 0

    iput p3, p0, Lenq;->c:I

    iput-object p1, p0, Lenq;->a:Ljava/lang/Object;

    iput-object p2, p0, Lenq;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    iget v0, p0, Lenq;->c:I

    const-string v1, "Error starting camera"

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lenq;->a:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lgxr;

    iget-object v0, v0, Lgxr;->e:Lkaq;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Failed to set progress for "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lkaq;->i(Ljava/lang/String;)V

    return-void

    :pswitch_0
    sget-object v0, Lgqs;->e:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Lucky Shot Filter failed to return valid result."

    const/16 v2, 0xc7d

    invoke-static {v0, v1, v2, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lenq;->b:Ljava/lang/Object;

    check-cast v0, Lbkb;

    iget-object v0, v0, Lbkb;->a:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unable to log capture metadata: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lkaq;->d(Ljava/lang/String;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lenq;->b:Ljava/lang/Object;

    invoke-interface {v0}, Lkbf;->a()V

    sget-object v0, Levk;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const/16 v2, 0x7b9

    invoke-static {v0, v1, v2, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    return-void

    :pswitch_3
    sget-object v0, Leup;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    invoke-interface {v0, p1}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v0, 0x7b0

    invoke-interface {p1, v0}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const-string v0, "Failure while saving JPEG image to %s"

    iget-object v1, p0, Lenq;->a:Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lenq;->b:Ljava/lang/Object;

    check-cast p1, Leup;

    iget-object p1, p1, Leup;->e:Lcgx;

    invoke-interface {p1}, Lcgx;->m()V

    return-void

    :pswitch_4
    iget-object p1, p0, Lenq;->b:Ljava/lang/Object;

    invoke-interface {p1}, Lkbf;->a()V

    return-void

    :pswitch_5
    iget-object v0, p0, Lenq;->b:Ljava/lang/Object;

    invoke-interface {v0}, Lkbf;->a()V

    sget-object v0, Leuc;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const/16 v2, 0x791

    invoke-static {v0, v1, v2, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    return-void

    :pswitch_6
    iget-object v0, p0, Lenq;->b:Ljava/lang/Object;

    check-cast v0, Leqe;

    invoke-virtual {v0}, Leqe;->close()V

    iget-object v0, p0, Lenq;->a:Ljava/lang/Object;

    check-cast v0, Lepd;

    const-string v1, "Error compressing primary jpg file"

    invoke-static {v0, v1, p1}, Lepq;->m(Lepd;Ljava/lang/String;Ljava/lang/Throwable;)V

    :pswitch_7
    return-void

    :pswitch_8
    iget-object v0, p0, Lenq;->b:Ljava/lang/Object;

    iget-object v1, p0, Lenq;->a:Ljava/lang/Object;

    check-cast v1, Lenr;

    iget-object v1, v1, Lenr;->b:Leea;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    check-cast v0, Lens;

    invoke-virtual {v0, v1, p1}, Lens;->j(Leea;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final synthetic b(Ljava/lang/Object;)V
    .locals 23

    move-object/from16 v6, p0

    iget v0, v6, Lenq;->c:I

    const/4 v1, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    move-object/from16 v0, p1

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_b

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "progress_status"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, v6, Lenq;->b:Ljava/lang/Object;

    check-cast v2, Lkae;

    iget v2, v2, Lkae;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "progress_percentage"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v2, Lgxr;

    iget-object v2, v2, Lgxr;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    return-void

    :pswitch_0
    move-object/from16 v0, p1

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v1, v6, Lenq;->a:Ljava/lang/Object;

    iget-object v2, v6, Lenq;->b:Ljava/lang/Object;

    check-cast v1, Lgqs;

    invoke-virtual {v1, v0, v2}, Lgqs;->c(Ljava/util/Set;Lgxl;)V

    :cond_0
    return-void

    :pswitch_1
    move-object/from16 v0, p1

    check-cast v0, Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v4}, Llyh;->Q(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v3}, Llyh;->Q(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, v6, Lenq;->b:Ljava/lang/Object;

    check-cast v2, Lbkb;

    iget-object v2, v2, Lbkb;->a:Ljava/lang/Object;

    const-string v3, "Capture Metadata"

    invoke-static {v3}, Lmoz;->z(Ljava/lang/String;)Lmqo;

    move-result-object v3

    const-string v4, "Input"

    invoke-virtual {v3, v4, v1}, Lmqo;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "Reprocessing"

    invoke-virtual {v3, v1, v0}, Lmqo;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v0, Lfyw;

    iget-object v0, v0, Lfyw;->e:Lmqp;

    const-string v1, "NPF"

    invoke-virtual {v3, v1, v0}, Lmqo;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lmqo;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Capture Metadata: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lkaq;->h(Ljava/lang/String;)V

    return-void

    :pswitch_2
    move-object/from16 v0, p1

    check-cast v0, Lflk;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v7, Levk;

    iput-object v0, v7, Levk;->T:Lflk;

    iget-object v7, v7, Levk;->e:Lcgx;

    invoke-interface {v7}, Lcgx;->g()Lcha;

    move-result-object v7

    invoke-interface {v7}, Lcha;->g()V

    invoke-virtual {v0}, Lflk;->i()Lmbe;

    move-result-object v7

    iget-object v7, v7, Lmbe;->b:Ljava/lang/Object;

    new-instance v8, Lcig;

    const/16 v9, 0xf

    invoke-direct {v8, v6, v9, v5}, Lcig;-><init>(Lenq;I[S)V

    iget-object v9, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v9, Levk;

    iget-object v9, v9, Levk;->f:Ljuh;

    invoke-static {v7, v8, v9}, Ljvd;->t(Lnou;Ljzs;Ljava/util/concurrent/Executor;)V

    iget-object v7, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v7, Levk;

    iget-object v7, v7, Levk;->x:Lhwd;

    invoke-virtual {v7}, Lhwd;->h()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v7, Levk;

    iget-object v7, v7, Levk;->z:Libj;

    invoke-interface {v7, v3}, Libj;->l(Z)V

    iget-object v3, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v3, Levk;

    iget-object v3, v3, Levk;->r:Litm;

    invoke-interface {v3}, Litm;->p()V

    :cond_1
    iget-object v3, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v3, Levk;

    iget-object v7, v3, Levk;->I:Ljuf;

    invoke-virtual {v0}, Lflk;->b()Ljvs;

    move-result-object v8

    new-instance v9, Leus;

    invoke-direct {v9, v6, v1, v5}, Leus;-><init>(Lenq;I[B)V

    iget-object v1, v3, Levk;->f:Ljuh;

    invoke-interface {v8, v9, v1}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljuf;->d(Lkad;)V

    iget-object v1, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v1, Levk;

    iget-object v1, v1, Levk;->D:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v1, Levk;

    iget-object v1, v1, Levk;->D:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lckr;

    iget-object v3, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v3, Levk;

    iget-object v3, v3, Levk;->I:Ljuf;

    invoke-interface {v1, v0, v3}, Lckr;->f(Lftg;Ljuf;)V

    :cond_2
    iget-object v1, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v1, Levk;

    iget-object v3, v1, Levk;->T:Lflk;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v1, Levk;->I:Ljuf;

    invoke-virtual {v3}, Lflk;->i()Lmbe;

    move-result-object v8

    iget-object v8, v8, Lmbe;->e:Ljava/lang/Object;

    iget-object v9, v1, Levk;->R:Lkai;

    const-string v10, "PortFcDet"

    invoke-static {v10}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljuf;->d(Lkad;)V

    invoke-virtual {v3}, Lflk;->i()Lmbe;

    move-result-object v7

    iget-object v7, v7, Lmbe;->d:Ljava/lang/Object;

    iput-object v7, v1, Levk;->L:Ljvs;

    iget-object v7, v3, Lflk;->b:Lflg;

    new-instance v15, Lhsa;

    iget-object v9, v1, Levk;->p:Landroid/view/accessibility/AccessibilityManager;

    iget-object v10, v1, Levk;->q:Ldpl;

    iget-object v11, v3, Lflk;->c:Lfuz;

    iget-object v12, v1, Levk;->o:Lgft;

    iget-object v8, v1, Levk;->e:Lcgx;

    invoke-interface {v8}, Lcgx;->g()Lcha;

    move-result-object v8

    check-cast v8, Lcie;

    iget-object v14, v8, Lcie;->C:Ldyk;

    iget-object v13, v1, Levk;->s:Ldhi;

    sget-object v8, Ldho;->a:Ldhk;

    invoke-interface {v13}, Ldhi;->c()V

    iget-object v8, v1, Levk;->E:Lhxx;

    const/16 v17, 0x0

    move-object/from16 v16, v8

    move-object v8, v15

    move-object/from16 v18, v13

    move-object v13, v7

    move-object v2, v15

    move-object/from16 v15, v18

    invoke-direct/range {v8 .. v17}, Lhsa;-><init>(Landroid/view/accessibility/AccessibilityManager;Ldpl;Lfuz;Lgft;Lflg;Ldyk;Ldhi;Lhxx;[B)V

    iput-object v2, v1, Levk;->U:Lhsa;

    iget-object v2, v1, Levk;->I:Ljuf;

    iget-object v8, v1, Levk;->U:Lhsa;

    invoke-virtual {v3}, Lflk;->i()Lmbe;

    move-result-object v3

    iget-object v3, v3, Lmbe;->e:Ljava/lang/Object;

    iget-object v9, v1, Levk;->f:Ljuh;

    invoke-virtual {v8, v3, v9}, Lhsa;->a(Ljvs;Ljuh;)Lkad;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljuf;->d(Lkad;)V

    iget-object v1, v1, Levk;->U:Lhsa;

    iget-object v2, v7, Lflg;->d:Lihb;

    iget-object v2, v2, Lihb;->a:Lkaf;

    invoke-virtual {v1, v2}, Lhsa;->b(Lkaf;)V

    iget-object v1, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v1, Levk;

    iget-object v2, v1, Levk;->e:Lcgx;

    invoke-interface {v2}, Lcgx;->g()Lcha;

    move-result-object v2

    check-cast v2, Lcie;

    iget-object v2, v2, Lcie;->j:Ldms;

    iput-object v2, v1, Levk;->K:Ldms;

    iget-object v1, v1, Levk;->K:Ldms;

    invoke-virtual {v1}, Ldms;->b()V

    iget-object v1, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v1, Levk;

    iget-object v2, v1, Levk;->s:Ldhi;

    sget-object v3, Ldho;->ci:Ldhj;

    invoke-interface {v2, v3}, Ldhi;->l(Ldhj;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Levk;->T:Lflk;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lflk;->b:Lflg;

    iget-object v1, v1, Levk;->E:Lhxx;

    iget-object v2, v2, Lflg;->d:Lihb;

    iget-object v2, v2, Lihb;->a:Lkaf;

    invoke-virtual {v1, v2}, Lhxx;->d(Lkaf;)V

    :cond_3
    iget-object v1, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v1, Levk;

    iget-object v7, v1, Levk;->k:Lcbn;

    iget-object v9, v0, Lflk;->c:Lfuz;

    invoke-virtual {v0}, Lflk;->i()Lmbe;

    move-result-object v1

    iget-object v10, v1, Lmbe;->c:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ljvw;->g(Ljava/lang/Object;)Ljvs;

    move-result-object v11

    iget-object v1, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v1, Levk;

    iget-object v1, v1, Levk;->s:Ldhi;

    sget-object v2, Ldhh;->g:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v12

    iget-object v1, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v1, Levk;

    iget-object v1, v1, Levk;->F:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v13

    const/4 v14, 0x2

    move-object v8, v0

    invoke-virtual/range {v7 .. v14}, Lcbn;->a(Lcbi;Lkli;Ljvs;Ljvs;ZZI)Lcbm;

    move-result-object v1

    iget-object v2, v0, Lflk;->a:Ljuf;

    invoke-virtual {v2, v1}, Ljuf;->d(Lkad;)V

    iget-object v1, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v1, Levk;

    iget-object v1, v1, Levk;->I:Ljuf;

    invoke-virtual {v0}, Lflk;->i()Lmbe;

    move-result-object v2

    iget-object v2, v2, Lmbe;->c:Ljava/lang/Object;

    new-instance v3, Leus;

    const/4 v4, 0x7

    invoke-direct {v3, v6, v4, v5}, Leus;-><init>(Lenq;I[B)V

    const-string v4, "PortAfCb"

    invoke-static {v4}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljuf;->d(Lkad;)V

    iget-object v1, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v1, Levk;

    iget-object v1, v1, Levk;->m:Lici;

    iget-object v0, v0, Lflk;->c:Lfuz;

    invoke-virtual {v0}, Lklw;->k()Lklv;

    sget-object v0, Lklv;->a:Lklv;

    sget-object v0, Lika;->a:Lika;

    invoke-virtual {v1}, Lici;->c()V

    iget-object v0, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v0, Levk;

    iget-object v1, v0, Levk;->f:Ljuh;

    new-instance v2, Lett;

    const/16 v3, 0x12

    invoke-direct {v2, v0, v3}, Lett;-><init>(Levk;I)V

    invoke-virtual {v1, v2}, Ljuh;->execute(Ljava/lang/Runnable;)V

    iget-object v0, v6, Lenq;->b:Ljava/lang/Object;

    invoke-interface {v0}, Lkbf;->a()V

    return-void

    :pswitch_3
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Void;

    iget-object v0, v6, Lenq;->b:Ljava/lang/Object;

    check-cast v0, Leup;

    iget-object v0, v0, Leup;->e:Lcgx;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-interface {v0, v1}, Lcgx;->n(Landroid/content/Intent;)V

    return-void

    :pswitch_4
    move-object/from16 v0, p1

    check-cast v0, Lflk;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v1, Leuj;

    iput-object v0, v1, Leuj;->L:Lflk;

    iget-object v1, v1, Leuj;->d:Lcgx;

    invoke-interface {v1}, Lcgx;->g()Lcha;

    move-result-object v1

    invoke-interface {v1}, Lcha;->g()V

    invoke-virtual {v0}, Lflk;->i()Lmbe;

    move-result-object v1

    iget-object v1, v1, Lmbe;->b:Ljava/lang/Object;

    new-instance v2, Lcig;

    const/16 v3, 0xd

    invoke-direct {v2, v6, v3, v5}, Lcig;-><init>(Lenq;I[C)V

    iget-object v3, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v3, Leuj;

    iget-object v3, v3, Leuj;->e:Ljuh;

    invoke-static {v1, v2, v3}, Ljvd;->t(Lnou;Ljzs;Ljava/util/concurrent/Executor;)V

    iget-object v1, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v1, Leuj;

    iget-object v2, v1, Leuj;->H:Ljuf;

    invoke-virtual {v0}, Lflk;->b()Ljvs;

    move-result-object v3

    new-instance v4, Ldsk;

    const/16 v7, 0x14

    invoke-direct {v4, v6, v7, v5}, Ldsk;-><init>(Lenq;I[C)V

    iget-object v1, v1, Leuj;->e:Ljuh;

    invoke-interface {v3, v4, v1}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljuf;->d(Lkad;)V

    iget-object v1, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v1, Leuj;

    iget-object v7, v1, Leuj;->q:Lcbn;

    iget-object v9, v0, Lflk;->c:Lfuz;

    invoke-virtual {v0}, Lflk;->i()Lmbe;

    move-result-object v2

    iget-object v10, v2, Lmbe;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lflk;->i()Lmbe;

    move-result-object v2

    iget-object v11, v2, Lmbe;->i:Ljava/lang/Object;

    const/4 v12, 0x1

    iget-object v1, v1, Leuj;->E:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v13

    const/4 v14, 0x2

    move-object v8, v0

    invoke-virtual/range {v7 .. v14}, Lcbn;->a(Lcbi;Lkli;Ljvs;Ljvs;ZZI)Lcbm;

    move-result-object v1

    iget-object v2, v0, Lflk;->a:Ljuf;

    invoke-virtual {v2, v1}, Ljuf;->d(Lkad;)V

    iget-object v1, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v1, Leuj;

    iget-object v1, v1, Leuj;->g:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, v0, Lflk;->a:Ljuf;

    iget-object v1, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v1, Leuj;

    iget-object v1, v1, Leuj;->g:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhms;

    sget-object v2, Lika;->l:Lika;

    invoke-interface {v1, v2}, Lhms;->a(Lika;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    :cond_4
    iget-object v0, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v0, Leuj;

    iget-object v1, v0, Leuj;->L:Lflk;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v1, Lflk;->c:Lfuz;

    iget-object v2, v1, Lflk;->b:Lflg;

    new-instance v3, Lhsa;

    iget-object v8, v0, Leuj;->z:Landroid/view/accessibility/AccessibilityManager;

    iget-object v9, v0, Leuj;->A:Ldpl;

    iget-object v11, v0, Leuj;->B:Lgft;

    iget-object v4, v0, Leuj;->d:Lcgx;

    invoke-interface {v4}, Lcgx;->g()Lcha;

    move-result-object v4

    check-cast v4, Lcie;

    iget-object v13, v4, Lcie;->C:Ldyk;

    iget-object v14, v0, Leuj;->w:Ldhi;

    sget-object v4, Ldho;->a:Ldhk;

    invoke-interface {v14}, Ldhi;->c()V

    iget-object v15, v0, Leuj;->C:Lhxx;

    const/16 v16, 0x0

    move-object v7, v3

    move-object v12, v2

    invoke-direct/range {v7 .. v16}, Lhsa;-><init>(Landroid/view/accessibility/AccessibilityManager;Ldpl;Lfuz;Lgft;Lflg;Ldyk;Ldhi;Lhxx;[B)V

    iput-object v3, v0, Leuj;->M:Lhsa;

    iget-object v3, v0, Leuj;->H:Ljuf;

    iget-object v4, v0, Leuj;->M:Lhsa;

    invoke-virtual {v1}, Lflk;->i()Lmbe;

    move-result-object v1

    iget-object v1, v1, Lmbe;->e:Ljava/lang/Object;

    iget-object v5, v0, Leuj;->e:Ljuh;

    invoke-virtual {v4, v1, v5}, Lhsa;->a(Ljvs;Ljuh;)Lkad;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljuf;->d(Lkad;)V

    iget-object v0, v0, Leuj;->M:Lhsa;

    iget-object v1, v2, Lflg;->d:Lihb;

    iget-object v1, v1, Lihb;->a:Lkaf;

    invoke-virtual {v0, v1}, Lhsa;->b(Lkaf;)V

    iget-object v0, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v0, Leuj;

    iget-object v1, v0, Leuj;->e:Ljuh;

    new-instance v2, Lett;

    const/16 v3, 0xa

    invoke-direct {v2, v0, v3}, Lett;-><init>(Leuj;I)V

    invoke-virtual {v1, v2}, Ljuh;->execute(Ljava/lang/Runnable;)V

    iget-object v0, v6, Lenq;->b:Ljava/lang/Object;

    invoke-interface {v0}, Lkbf;->a()V

    return-void

    :pswitch_5
    move-object/from16 v0, p1

    check-cast v0, Lflk;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lflk;->i()Lmbe;

    move-result-object v2

    iget-object v2, v2, Lmbe;->b:Ljava/lang/Object;

    new-instance v7, Lcig;

    const/16 v8, 0xc

    invoke-direct {v7, v6, v8, v5}, Lcig;-><init>(Lenq;I[B)V

    iget-object v8, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v8, Leuc;

    iget-object v8, v8, Leuc;->f:Ljuh;

    invoke-static {v2, v7, v8}, Ljvd;->t(Lnou;Ljzs;Ljava/util/concurrent/Executor;)V

    iget-object v2, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v2, Leuc;

    iput-object v0, v2, Leuc;->R:Lflk;

    iget-object v2, v2, Leuc;->e:Lcgx;

    invoke-interface {v2}, Lcgx;->g()Lcha;

    move-result-object v2

    invoke-interface {v2}, Lcha;->g()V

    iget-object v2, v6, Lenq;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Lflk;->b()Ljvs;

    move-result-object v7

    invoke-interface {v7}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    check-cast v2, Leuc;

    invoke-virtual {v2, v7}, Leuc;->y(Z)V

    iget-object v2, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v2, Leuc;

    iget-object v7, v2, Leuc;->J:Ljuf;

    invoke-virtual {v0}, Lflk;->b()Ljvs;

    move-result-object v8

    new-instance v9, Ldsk;

    const/16 v10, 0x12

    invoke-direct {v9, v6, v10, v5}, Ldsk;-><init>(Lenq;I[B)V

    iget-object v2, v2, Leuc;->f:Ljuh;

    invoke-interface {v8, v9, v2}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljuf;->d(Lkad;)V

    iget-object v2, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v2, Leuc;

    iget-object v2, v2, Leuc;->m:Lmqp;

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lflk;->c:Lfuz;

    invoke-virtual {v2}, Lklw;->k()Lklv;

    move-result-object v2

    sget-object v5, Lklv;->b:Lklv;

    if-ne v2, v5, :cond_5

    const/4 v12, 0x1

    goto :goto_0

    :cond_5
    const/4 v12, 0x0

    :goto_0
    iget-object v2, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v2, Leuc;

    iget-object v4, v2, Leuc;->R:Lflk;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v4, Lflk;->b:Lflg;

    new-instance v7, Lhsa;

    iget-object v14, v2, Leuc;->t:Landroid/view/accessibility/AccessibilityManager;

    iget-object v15, v2, Leuc;->u:Ldpl;

    iget-object v8, v4, Lflk;->c:Lfuz;

    iget-object v9, v2, Leuc;->v:Lgft;

    iget-object v10, v2, Leuc;->e:Lcgx;

    invoke-interface {v10}, Lcgx;->g()Lcha;

    move-result-object v10

    check-cast v10, Lcie;

    iget-object v10, v10, Lcie;->C:Ldyk;

    iget-object v11, v2, Leuc;->q:Ldhi;

    sget-object v13, Ldho;->a:Ldhk;

    invoke-interface {v11}, Ldhi;->c()V

    iget-object v13, v2, Leuc;->D:Lhxx;

    const/16 v22, 0x0

    move-object/from16 v21, v13

    move-object v13, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v5

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    invoke-direct/range {v13 .. v22}, Lhsa;-><init>(Landroid/view/accessibility/AccessibilityManager;Ldpl;Lfuz;Lgft;Lflg;Ldyk;Ldhi;Lhxx;[B)V

    iput-object v7, v2, Leuc;->S:Lhsa;

    iget-object v7, v2, Leuc;->J:Ljuf;

    iget-object v8, v2, Leuc;->S:Lhsa;

    invoke-virtual {v4}, Lflk;->i()Lmbe;

    move-result-object v4

    iget-object v4, v4, Lmbe;->e:Ljava/lang/Object;

    iget-object v9, v2, Leuc;->f:Ljuh;

    invoke-virtual {v8, v4, v9}, Lhsa;->a(Ljvs;Ljuh;)Lkad;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljuf;->d(Lkad;)V

    iget-object v2, v2, Leuc;->S:Lhsa;

    iget-object v4, v5, Lflg;->d:Lihb;

    iget-object v4, v4, Lihb;->a:Lkaf;

    invoke-virtual {v2, v4}, Lhsa;->b(Lkaf;)V

    iget-object v2, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v2, Leuc;

    iget-object v4, v2, Leuc;->e:Lcgx;

    invoke-interface {v4}, Lcgx;->g()Lcha;

    move-result-object v4

    check-cast v4, Lcie;

    iget-object v4, v4, Lcie;->j:Ldms;

    iput-object v4, v2, Leuc;->K:Ldms;

    iget-object v2, v2, Leuc;->K:Ldms;

    invoke-virtual {v2}, Ldms;->b()V

    iget-object v2, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v2, Leuc;

    iget-object v4, v2, Leuc;->q:Ldhi;

    sget-object v5, Ldho;->ci:Ldhj;

    invoke-interface {v4, v5}, Ldhi;->l(Ldhj;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v2, Leuc;->R:Lflk;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v4, Lflk;->b:Lflg;

    iget-object v2, v2, Leuc;->D:Lhxx;

    iget-object v4, v4, Lflg;->d:Lihb;

    iget-object v4, v4, Lihb;->a:Lkaf;

    invoke-virtual {v2, v4}, Lhxx;->d(Lkaf;)V

    :cond_6
    iget-object v2, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v2, Leuc;

    iget-object v7, v2, Leuc;->l:Lcbn;

    iget-object v9, v0, Lflk;->c:Lfuz;

    invoke-virtual {v0}, Lflk;->i()Lmbe;

    move-result-object v4

    iget-object v10, v4, Lmbe;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lflk;->i()Lmbe;

    move-result-object v4

    iget-object v11, v4, Lmbe;->i:Ljava/lang/Object;

    iget-object v2, v2, Leuc;->G:Lmqp;

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v13

    const/4 v14, 0x2

    move-object v8, v0

    invoke-virtual/range {v7 .. v14}, Lcbn;->a(Lcbi;Lkli;Ljvs;Ljvs;ZZI)Lcbm;

    move-result-object v2

    iget-object v4, v0, Lflk;->a:Ljuf;

    invoke-virtual {v4, v2}, Ljuf;->d(Lkad;)V

    iget-object v2, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v2, Leuc;

    iget-object v2, v2, Leuc;->F:Lmqp;

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Lflk;->a:Ljuf;

    iget-object v4, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v4, Leuc;

    iget-object v4, v4, Leuc;->F:Lmqp;

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhms;

    sget-object v5, Lika;->m:Lika;

    invoke-interface {v4, v5}, Lhms;->a(Lika;)Lkad;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljuf;->d(Lkad;)V

    :cond_7
    iget-object v2, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v2, Leuc;

    iget-object v4, v2, Leuc;->f:Ljuh;

    new-instance v5, Lett;

    invoke-direct {v5, v2, v3}, Lett;-><init>(Leuc;I)V

    invoke-virtual {v4, v5}, Ljuh;->execute(Ljava/lang/Runnable;)V

    iget-object v2, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v2, Leuc;

    iget-object v3, v2, Leuc;->C:Lebi;

    iget-boolean v3, v3, Lebi;->h:Z

    if-eqz v3, :cond_8

    iget-object v2, v2, Leuc;->E:Lmqp;

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v2, Leuc;

    iget-object v3, v2, Leuc;->J:Ljuf;

    iget-object v2, v2, Leuc;->E:Lmqp;

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lckq;

    sget-object v4, Lika;->m:Lika;

    invoke-virtual {v0}, Lflk;->i()Lmbe;

    move-result-object v5

    iget-object v5, v5, Lmbe;->g:Ljava/lang/Object;

    invoke-virtual {v0}, Lflk;->i()Lmbe;

    move-result-object v0

    iget-object v0, v0, Lmbe;->a:Ljava/lang/Object;

    check-cast v5, Lgcb;

    invoke-interface {v2, v4, v5, v0}, Lckq;->a(Lika;Lgcb;Ljvs;)Lkad;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljuf;->d(Lkad;)V

    :cond_8
    iget-object v0, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v0, Leuc;

    iget-object v2, v0, Leuc;->f:Ljuh;

    iget-object v0, v0, Leuc;->w:Lebl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lett;

    invoke-direct {v3, v0, v1}, Lett;-><init>(Lebl;I)V

    invoke-virtual {v2, v3}, Ljuh;->execute(Ljava/lang/Runnable;)V

    iget-object v0, v6, Lenq;->b:Ljava/lang/Object;

    invoke-interface {v0}, Lkbf;->a()V

    return-void

    :pswitch_6
    move-object/from16 v0, p1

    check-cast v0, Lfwy;

    iget-object v1, v6, Lenq;->b:Ljava/lang/Object;

    check-cast v1, Leqe;

    invoke-virtual {v1}, Leqe;->close()V

    if-nez v0, :cond_9

    sget-object v0, Lepq;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x6ff

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    iget-object v1, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v1, Lepd;

    iget v1, v1, Lepd;->h:I

    const-string v2, "Error encoding the primary image %d"

    invoke-interface {v0, v2, v1}, Lnah;->p(Ljava/lang/String;I)V

    goto :goto_1

    :cond_9
    iget-object v1, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v1, Lepd;

    iput-boolean v3, v1, Lepd;->a:Z

    iget-object v1, v1, Lepd;->b:Leea;

    iget-object v1, v1, Leea;->v:Lgkr;

    iget-object v1, v1, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v1}, Lgxl;->k()Lhjc;

    move-result-object v1

    iget-object v2, v0, Lfwy;->b:[B

    array-length v2, v2

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lhjc;->d(J)V

    iget-object v1, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v1, Lepd;

    iget-object v1, v1, Lepd;->b:Leea;

    iget-object v1, v1, Leea;->v:Lgkr;

    iget-object v1, v1, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v1}, Lgxl;->k()Lhjc;

    move-result-object v1

    iget-object v0, v0, Lfwy;->d:Lcom/google/android/libraries/camera/exif/ExifInterface;

    check-cast v1, Lhjd;

    iput-object v0, v1, Lhjd;->g:Lcom/google/android/libraries/camera/exif/ExifInterface;

    :goto_1
    iget-object v0, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v0, Lepd;

    invoke-virtual {v0}, Lepd;->e()V

    return-void

    :pswitch_7
    move-object/from16 v2, p1

    check-cast v2, Landroid/graphics/SurfaceTexture;

    iget-object v0, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v0, Leia;

    iget-object v0, v0, Leia;->b:Lkaq;

    const-string v1, "Received SurfaceTexture"

    invoke-interface {v0, v1}, Lkaq;->f(Ljava/lang/String;)V

    iget-object v0, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v0, Leia;

    iget-object v7, v0, Leia;->e:Ljuh;

    iget-object v0, v6, Lenq;->b:Ljava/lang/Object;

    new-instance v8, Lblx;

    move-object v3, v0

    check-cast v3, Lkfl;

    const/16 v4, 0x10

    const/4 v5, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lblx;-><init>(Lenq;Landroid/graphics/SurfaceTexture;Lkfl;I[B)V

    invoke-virtual {v7, v8}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_8
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v0, Lenr;

    iget-object v0, v0, Lenr;->d:Lenu;

    sget-object v1, Lnbk;->a:Lnbc;

    iget-object v1, v0, Lenu;->a:Lgxn;

    invoke-virtual {v1}, Lgxn;->b()V

    iget-object v1, v0, Lenu;->b:Lgxr;

    invoke-virtual {v1}, Lgxr;->g()V

    iget-object v0, v0, Lenu;->c:Lhjc;

    check-cast v0, Lhjd;

    iget-object v0, v0, Lhjd;->v:Lnph;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnph;->e(Ljava/lang/Object;)Z

    iget-object v0, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v0, Lenr;

    iget-object v0, v0, Lenr;->b:Leea;

    invoke-virtual {v0}, Leea;->a()I

    iget-object v0, v6, Lenq;->b:Ljava/lang/Object;

    check-cast v0, Lens;

    iget-object v0, v0, Lens;->a:Ljava/util/Map;

    iget-object v1, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v1, Lenr;

    iget-object v1, v1, Lenr;->b:Leea;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_a
    iget-object v0, v6, Lenq;->b:Ljava/lang/Object;

    iget-object v1, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v1, Lenr;

    iget-object v1, v1, Lenr;->b:Leea;

    check-cast v0, Lens;

    const-string v2, "Kepler Controller processing failed."

    invoke-virtual {v0, v1, v2}, Lens;->j(Leea;Ljava/lang/String;)V

    return-void

    :cond_b
    iget-object v1, v6, Lenq;->a:Ljava/lang/Object;

    check-cast v1, Lgxr;

    iget-object v1, v1, Lgxr;->e:Lkaq;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Skipping progress update for empty or null uri: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lkaq;->i(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
