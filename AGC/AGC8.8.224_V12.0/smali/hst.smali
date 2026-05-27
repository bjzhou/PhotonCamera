.class public final Lhst;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Loiw;Loiw;I)V
    .locals 0

    iput p3, p0, Lhst;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhst;->a:Loiw;

    iput-object p2, p0, Lhst;->b:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[B)V
    .locals 0

    iput p3, p0, Lhst;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhst;->b:Loiw;

    iput-object p2, p0, Lhst;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[C)V
    .locals 0

    iput p3, p0, Lhst;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhst;->b:Loiw;

    iput-object p2, p0, Lhst;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[F)V
    .locals 0

    iput p3, p0, Lhst;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhst;->b:Loiw;

    iput-object p2, p0, Lhst;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[I)V
    .locals 0

    iput p3, p0, Lhst;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhst;->b:Loiw;

    iput-object p2, p0, Lhst;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[S)V
    .locals 0

    iput p3, p0, Lhst;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhst;->b:Loiw;

    iput-object p2, p0, Lhst;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[Z)V
    .locals 0

    iput p3, p0, Lhst;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhst;->b:Loiw;

    iput-object p2, p0, Lhst;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[[B)V
    .locals 0

    iput p3, p0, Lhst;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhst;->b:Loiw;

    iput-object p2, p0, Lhst;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[[C)V
    .locals 0

    iput p3, p0, Lhst;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhst;->b:Loiw;

    iput-object p2, p0, Lhst;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[[I)V
    .locals 0

    iput p3, p0, Lhst;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhst;->b:Loiw;

    iput-object p2, p0, Lhst;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[[S)V
    .locals 0

    iput p3, p0, Lhst;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhst;->b:Loiw;

    iput-object p2, p0, Lhst;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[[Z)V
    .locals 0

    iput p3, p0, Lhst;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhst;->b:Loiw;

    iput-object p2, p0, Lhst;->a:Loiw;

    return-void
.end method

.method public static a(Loiw;Loiw;)Lhst;
    .locals 2

    new-instance v0, Lhst;

    const/4 v1, 0x4

    invoke-direct {v0, p0, p1, v1}, Lhst;-><init>(Loiw;Loiw;I)V

    return-object v0
.end method

.method public static b(Loiw;Loiw;)Lhst;
    .locals 2

    new-instance v0, Lhst;

    const/4 v1, 0x5

    invoke-direct {v0, p0, p1, v1}, Lhst;-><init>(Loiw;Loiw;I)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lhst;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lhst;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfbz;

    iget-object v1, p0, Lhst;->a:Loiw;

    check-cast v1, Lkao;

    invoke-virtual {v1}, Lkao;->a()Lkaq;

    move-result-object v1

    new-instance v2, Liql;

    invoke-direct {v2, v0, v1}, Liql;-><init>(Lfbz;Lkaq;)V

    return-object v2

    :pswitch_0
    iget-object v0, p0, Lhst;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    iget-object v1, p0, Lhst;->b:Loiw;

    check-cast v1, Lcsr;

    invoke-virtual {v1}, Lcsr;->a()Llbd;

    sget-object v1, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->f()V

    sget-object v0, Lmza;->a:Lmza;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lhst;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lhst;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    new-instance v2, Lnom;

    invoke-direct {v2, v0, v1}, Lnom;-><init>(Landroid/content/Context;Ldhi;)V

    return-object v2

    :pswitch_2
    iget-object v0, p0, Lhst;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lhst;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    const-string v3, "download"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Landroid/app/DownloadManager;

    const-string v4, "PersistSimpleDownloadManager.pref"

    invoke-virtual {v0, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v4, Limh;

    invoke-direct {v4, v3, v0, v2}, Limh;-><init>(Landroid/app/DownloadManager;Landroid/content/Context;Landroid/content/SharedPreferences;)V

    new-instance v0, Ligo;

    invoke-direct {v0, v4, v1}, Ligo;-><init>(Limh;Ljava/util/concurrent/Executor;)V

    return-object v0

    :pswitch_3
    iget-object v0, p0, Lhst;->b:Loiw;

    check-cast v0, Lelp;

    invoke-virtual {v0}, Lelp;->a()Landroid/view/Window;

    move-result-object v0

    iget-object v2, p0, Lhst;->a:Loiw;

    check-cast v2, Likg;

    invoke-virtual {v2}, Likg;->a()Lilz;

    move-result-object v2

    new-instance v3, Liks;

    invoke-direct {v3, v0, v2, v1}, Liks;-><init>(Landroid/view/Window;Lilz;[B)V

    return-object v3

    :pswitch_4
    iget-object v0, p0, Lhst;->b:Loiw;

    check-cast v0, Lfix;

    invoke-virtual {v0}, Lfix;->b()Lmqp;

    move-result-object v0

    iget-object v2, p0, Lhst;->a:Loiw;

    new-instance v3, Liip;

    const/4 v4, 0x7

    invoke-direct {v3, v0, v2, v4, v1}, Liip;-><init>(Lmqp;Loiw;I[B)V

    return-object v3

    :pswitch_5
    iget-object v0, p0, Lhst;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgrm;

    iget-object v1, p0, Lhst;->a:Loiw;

    new-instance v2, Liip;

    const/4 v3, 0x6

    invoke-direct {v2, v0, v1, v3}, Liip;-><init>(Lgrm;Loiw;I)V

    return-object v2

    :pswitch_6
    iget-object v0, p0, Lhst;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Libj;

    iget-object v1, p0, Lhst;->a:Loiw;

    new-instance v2, Liip;

    const/4 v3, 0x5

    invoke-direct {v2, v0, v1, v3}, Liip;-><init>(Libj;Loiw;I)V

    return-object v2

    :pswitch_7
    iget-object v0, p0, Lhst;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lczq;

    iget-object v1, p0, Lhst;->a:Loiw;

    new-instance v2, Liip;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v1, v3}, Liip;-><init>(Lczq;Loiw;I)V

    return-object v2

    :pswitch_8
    iget-object v0, p0, Lhst;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmqp;

    iget-object v1, p0, Lhst;->a:Loiw;

    new-instance v2, Liip;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v1, v3}, Liip;-><init>(Lmqp;Loiw;I)V

    return-object v2

    :pswitch_9
    iget-object v0, p0, Lhst;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhxt;

    iget-object v1, p0, Lhst;->a:Loiw;

    new-instance v2, Liip;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v1, v3}, Liip;-><init>(Lhxt;Loiw;I)V

    return-object v2

    :pswitch_a
    iget-object v0, p0, Lhst;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhsh;

    iget-object v1, p0, Lhst;->a:Loiw;

    new-instance v3, Liip;

    invoke-direct {v3, v0, v1, v2}, Liip;-><init>(Lhsh;Loiw;I)V

    return-object v3

    :pswitch_b
    iget-object v0, p0, Lhst;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclu;

    iget-object v1, p0, Lhst;->b:Loiw;

    new-instance v2, Liip;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Liip;-><init>(Lclu;Loiw;I)V

    return-object v2

    :pswitch_c
    iget-object v0, p0, Lhst;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lhst;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgto;

    new-instance v2, Lieb;

    invoke-direct {v2, v0, v1}, Lieb;-><init>(Landroid/content/Context;Lgto;)V

    return-object v2

    :pswitch_d
    iget-object v0, p0, Lhst;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lhst;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lell;

    new-instance v2, Lico;

    invoke-direct {v2, v0, v1}, Lico;-><init>(Landroid/content/Context;Lell;)V

    return-object v2

    :pswitch_e
    iget-object v0, p0, Lhst;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lhrz;

    iget-object v0, p0, Lhst;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljew;

    new-instance v0, Lhxv;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lhxv;-><init>(Lhrz;Ljew;[B[B[B[B)V

    return-object v0

    :pswitch_f
    iget-object v0, p0, Lhst;->a:Loiw;

    iget-object v1, p0, Lhst;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    sget-object v2, Ldho;->ci:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lmpx;->a:Lmpx;

    :goto_0
    return-object v0

    :pswitch_10
    iget-object v0, p0, Lhst;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgzm;

    iget-object v2, p0, Lhst;->a:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnom;

    new-instance v3, Lhwp;

    invoke-direct {v3, v0, v2, v1}, Lhwp;-><init>(Lgzm;Lnom;[B)V

    return-object v3

    :pswitch_11
    iget-object v0, p0, Lhst;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhvt;

    iget-object v1, p0, Lhst;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhtg;

    new-instance v2, Lhvf;

    invoke-direct {v2, v0, v1}, Lhvf;-><init>(Lhvt;Lhtg;)V

    return-object v2

    :pswitch_12
    iget-object v0, p0, Lhst;->a:Loiw;

    iget-object v1, p0, Lhst;->b:Loiw;

    check-cast v1, Lera;

    invoke-virtual {v1}, Lera;->a()Lbkc;

    move-result-object v1

    invoke-static {v1}, Lcdg;->p(Lbkc;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lhss;

    invoke-direct {v0}, Lhss;-><init>()V

    goto :goto_1

    :cond_1
    check-cast v0, Lhso;

    invoke-virtual {v0}, Lhso;->a()Lhsn;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_13
    iget-object v0, p0, Lhst;->a:Loiw;

    invoke-static {v0}, Logj;->a(Loiw;)Logd;

    move-result-object v0

    iget-object v1, p0, Lhst;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhsu;

    new-instance v3, Lhsr;

    invoke-direct {v3, v0, v1, v2}, Lhsr;-><init>(Logd;Lhsu;I)V

    return-object v3

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
