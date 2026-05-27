.class public final Llit;
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

    iput p3, p0, Llit;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llit;->a:Loiw;

    iput-object p2, p0, Llit;->b:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[B)V
    .locals 0

    iput p3, p0, Llit;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llit;->b:Loiw;

    iput-object p2, p0, Llit;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[C)V
    .locals 0

    iput p3, p0, Llit;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llit;->b:Loiw;

    iput-object p2, p0, Llit;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[I)V
    .locals 0

    iput p3, p0, Llit;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llit;->b:Loiw;

    iput-object p2, p0, Llit;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[S)V
    .locals 0

    iput p3, p0, Llit;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llit;->b:Loiw;

    iput-object p2, p0, Llit;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[Z)V
    .locals 0

    iput p3, p0, Llit;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llit;->b:Loiw;

    iput-object p2, p0, Llit;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Llit;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Llit;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Llit;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lmma;

    check-cast v1, Llzz;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3, v3}, Lmma;-><init>(Landroid/content/Context;Llzz;[B[B)V

    return-object v2

    :pswitch_0
    iget-object v0, p0, Llit;->a:Loiw;

    check-cast v0, Lmbf;

    invoke-virtual {v0}, Lmbf;->a()Lmbe;

    move-result-object v0

    iget-object v1, p0, Llit;->b:Loiw;

    check-cast v1, Lmaq;

    invoke-virtual {v1}, Lmaq;->a()Lmap;

    move-result-object v1

    new-instance v2, Lmbg;

    invoke-direct {v2, v0, v1}, Lmbg;-><init>(Lmbe;Lmap;)V

    return-object v2

    :pswitch_1
    iget-object v0, p0, Llit;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Llit;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Ljcb;->e(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Ljah;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Llit;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Llit;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v2, Lcom/google/android/libraries/vision/visionkit/f250/internal/airlock/room/F250RoomDatabase;

    const-string v3, "f250-room-database"

    invoke-static {v0, v2, v3}, Laek;->g(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Laps;

    move-result-object v0

    iput-object v1, v0, Laps;->b:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    new-array v2, v1, [Laqc;

    sget-object v3, Llya;->a:Laqc;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Laps;->b([Laqc;)V

    new-array v2, v1, [Laqc;

    sget-object v3, Llya;->b:Laqc;

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Laps;->b([Laqc;)V

    new-array v2, v1, [Laqc;

    sget-object v3, Llya;->c:Laqc;

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Laps;->b([Laqc;)V

    new-array v2, v1, [Laqc;

    sget-object v3, Llya;->d:Laqc;

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Laps;->b([Laqc;)V

    new-array v2, v1, [Laqc;

    sget-object v3, Llya;->e:Laqc;

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Laps;->b([Laqc;)V

    new-array v2, v1, [Laqc;

    sget-object v3, Llya;->f:Laqc;

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Laps;->b([Laqc;)V

    new-array v2, v1, [Laqc;

    sget-object v3, Llya;->g:Laqc;

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Laps;->b([Laqc;)V

    new-array v2, v1, [Laqc;

    sget-object v3, Llya;->j:Laqc;

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Laps;->b([Laqc;)V

    new-array v2, v1, [Laqc;

    sget-object v3, Llya;->i:Laqc;

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Laps;->b([Laqc;)V

    new-array v2, v1, [Laqc;

    sget-object v3, Llya;->h:Laqc;

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Laps;->b([Laqc;)V

    new-array v2, v1, [Laqc;

    sget-object v3, Llya;->k:Laqc;

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Laps;->b([Laqc;)V

    new-array v2, v1, [Laqc;

    sget-object v3, Llya;->o:Laqc;

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Laps;->b([Laqc;)V

    new-array v2, v1, [Laqc;

    sget-object v3, Llya;->n:Laqc;

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Laps;->b([Laqc;)V

    new-array v2, v1, [Laqc;

    sget-object v3, Llya;->m:Laqc;

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Laps;->b([Laqc;)V

    new-array v2, v1, [Laqc;

    sget-object v3, Llya;->l:Laqc;

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Laps;->b([Laqc;)V

    new-array v2, v1, [Laqc;

    sget-object v3, Llya;->p:Laqc;

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Laps;->b([Laqc;)V

    new-array v2, v1, [Laqc;

    sget-object v3, Llya;->u:Laqc;

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Laps;->b([Laqc;)V

    new-array v2, v1, [Laqc;

    sget-object v3, Llya;->t:Laqc;

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Laps;->b([Laqc;)V

    new-array v2, v1, [Laqc;

    sget-object v3, Llya;->s:Laqc;

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Laps;->b([Laqc;)V

    new-array v2, v1, [Laqc;

    sget-object v3, Llya;->r:Laqc;

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Laps;->b([Laqc;)V

    new-array v1, v1, [Laqc;

    sget-object v2, Llya;->q:Laqc;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Laps;->b([Laqc;)V

    invoke-virtual {v0}, Laps;->a()Lapt;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/vision/visionkit/f250/internal/airlock/room/F250RoomDatabase;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_3
    iget-object v0, p0, Llit;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llzz;

    iget-object v1, p0, Llit;->a:Loiw;

    check-cast v1, Logl;

    iget-object v1, v1, Logl;->a:Ljava/lang/Object;

    check-cast v1, Lmqp;

    new-instance v2, Lva;

    invoke-direct {v2, v0, v1}, Lva;-><init>(Llzz;Lmqp;)V

    return-object v2

    :pswitch_4
    iget-object v0, p0, Llit;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Llit;->a:Loiw;

    check-cast v1, Ldqo;

    invoke-virtual {v1}, Ldqo;->a()Lmqp;

    move-result-object v1

    new-instance v2, Llmg;

    check-cast v0, Llmh;

    invoke-direct {v2, v1}, Llmg;-><init>(Lmqp;)V

    return-object v2

    :pswitch_5
    iget-object v0, p0, Llit;->a:Loiw;

    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    iget-object v0, p0, Llit;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llil;

    invoke-static {v0}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v0

    return-object v0

    :pswitch_6
    iget-object v0, p0, Llit;->a:Loiw;

    check-cast v0, Logl;

    iget-object v0, v0, Logl;->a:Ljava/lang/Object;

    check-cast v0, Lmqp;

    iget-object v1, p0, Llit;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llle;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lmza;->a:Lmza;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_7
    iget-object v0, p0, Llit;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llhe;

    iget-object v1, p0, Llit;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnox;

    new-instance v2, Llku;

    invoke-direct {v2, v0, v1}, Llku;-><init>(Llhe;Lnox;)V

    return-object v2

    :pswitch_8
    iget-object v0, p0, Llit;->a:Loiw;

    check-cast v0, Logl;

    iget-object v0, v0, Logl;->a:Ljava/lang/Object;

    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    iget-object v1, p0, Llit;->b:Loiw;

    if-eqz v0, :cond_1

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llil;

    invoke-static {v0}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, Lmza;->a:Lmza;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_9
    iget-object v0, p0, Llit;->a:Loiw;

    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    iget-object v0, p0, Llit;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llil;

    invoke-static {v0}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v0

    return-object v0

    :pswitch_a
    iget-object v0, p0, Llit;->a:Loiw;

    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    iget-object v0, p0, Llit;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llil;

    invoke-static {v0}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v0

    return-object v0

    :pswitch_b
    iget-object v0, p0, Llit;->a:Loiw;

    check-cast v0, Logl;

    iget-object v0, v0, Logl;->a:Ljava/lang/Object;

    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    iget-object v1, p0, Llit;->b:Loiw;

    if-nez v0, :cond_2

    sget-object v0, Lmza;->a:Lmza;

    goto :goto_2

    :cond_2
    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llil;

    invoke-static {v0}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
