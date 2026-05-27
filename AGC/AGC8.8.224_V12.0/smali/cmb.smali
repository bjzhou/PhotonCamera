.class public final synthetic Lcmb;
.super Ljava/lang/Object;

# interfaces
.implements Lnno;


# instance fields
.field public final synthetic a:Lcmd;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lnwn;


# direct methods
.method public synthetic constructor <init>(Lcmd;IILnwn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcmb;->a:Lcmd;

    iput p2, p0, Lcmb;->b:I

    iput p3, p0, Lcmb;->c:I

    iput-object p4, p0, Lcmb;->d:Lnwn;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lnou;
    .locals 12

    iget-object v0, p0, Lcmb;->a:Lcmd;

    iget v1, p0, Lcmb;->b:I

    iget v2, p0, Lcmb;->c:I

    iget-object v3, p0, Lcmb;->d:Lnwn;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sget-object p1, Lpar;->b:Lpar;

    invoke-virtual {p1}, Lnws;->O()Lnwn;

    move-result-object p1

    iget-object v4, p1, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_0
    iget-object v4, p1, Lnwn;->b:Lnws;

    check-cast v4, Lpar;

    invoke-virtual {v3}, Lnwn;->i()Lnws;

    move-result-object v3

    check-cast v3, Lpau;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v4, Lpar;->a:Lpau;

    invoke-virtual {p1}, Lnwn;->i()Lnws;

    move-result-object p1

    check-cast p1, Lpar;

    invoke-virtual {p1}, Lnve;->J()[B

    move-result-object v9

    iget-object v4, v0, Lcmd;->d:Lcnt;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "photo_mode"

    invoke-static {v1, p1}, Lmwa;->n(Ljava/lang/Object;Ljava/lang/Object;)Lmwa;

    move-result-object v8

    const-string v7, "metadata"

    move-wide v5, v10

    invoke-interface/range {v4 .. v9}, Lcnt;->d(JLjava/lang/String;Ljava/util/Map;[B)Lnou;

    move-result-object p1

    invoke-static {p1}, Lnoo;->q(Lnou;)Lnoo;

    move-result-object p1

    iget-object v1, v0, Lcmd;->b:Ldhi;

    sget-object v3, Ldho;->bA:Ldhj;

    invoke-interface {v1, v3}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lclz;

    invoke-direct {v1, v0, v10, v11, v2}, Lclz;-><init>(Lcmd;JI)V

    iget-object v0, v0, Lcmd;->h:Ljava/util/concurrent/ExecutorService;

    invoke-static {p1, v1, v0}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    :cond_1
    return-object p1
.end method
