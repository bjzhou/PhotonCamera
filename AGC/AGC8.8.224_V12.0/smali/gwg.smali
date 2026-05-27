.class public final Lgwg;
.super Ljava/lang/Object;

# interfaces
.implements Lnoj;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public constructor <init>(Lepq;Lkbf;Lepd;I)V
    .locals 0

    iput p4, p0, Lgwg;->d:I

    iput-object p1, p0, Lgwg;->a:Ljava/lang/Object;

    iput-object p2, p0, Lgwg;->b:Ljava/lang/Object;

    iput-object p3, p0, Lgwg;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lgxl;Lgxm;Lciq;I)V
    .locals 0

    iput p4, p0, Lgwg;->d:I

    iput-object p1, p0, Lgwg;->a:Ljava/lang/Object;

    iput-object p2, p0, Lgwg;->b:Ljava/lang/Object;

    iput-object p3, p0, Lgwg;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    iget v0, p0, Lgwg;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lgwg;->b:Ljava/lang/Object;

    invoke-interface {v0}, Lkbf;->a()V

    iget-object v0, p0, Lgwg;->c:Ljava/lang/Object;

    check-cast v0, Lepd;

    const-string v1, "Error processing primary shot"

    invoke-static {v0, v1, p1}, Lepq;->m(Lepd;Ljava/lang/String;Ljava/lang/Throwable;)V

    instance-of p1, p1, Ldod;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lgwg;->c:Ljava/lang/Object;

    check-cast p1, Lepd;

    invoke-virtual {p1}, Lepd;->e()V

    goto :goto_0

    :pswitch_0
    sget-object v0, Lgwh;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    invoke-interface {v0, p1}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v0, 0xcf5

    invoke-interface {p1, v0}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const-string v0, "Failed to get MediaStoreRecord for %s, skipping."

    iget-object v1, p0, Lgwg;->a:Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lgwg;->c:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lciq;

    invoke-virtual {p1}, Lciq;->a()V

    return-void

    :cond_0
    :goto_0
    iget-object p1, p0, Lgwg;->a:Ljava/lang/Object;

    iget-object v0, p0, Lgwg;->c:Ljava/lang/Object;

    check-cast v0, Lepd;

    iget-object v0, v0, Lepd;->b:Leea;

    sget-object v1, Lmpx;->a:Lmpx;

    check-cast p1, Lepq;

    invoke-virtual {p1, v0, v1}, Lepq;->k(Leea;Lmqp;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic b(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lgwg;->d:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lgwg;->b:Ljava/lang/Object;

    invoke-interface {v0}, Lkbf;->a()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :pswitch_0
    check-cast p1, Lgxt;

    if-nez p1, :cond_0

    sget-object p1, Lgwh;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->b()Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v0, 0xcf6

    invoke-interface {p1, v0}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    iget-object v0, p0, Lgwg;->a:Ljava/lang/Object;

    const-string v1, "Failed to get MediaStoreRecord for %s, skipping."

    invoke-interface {p1, v1, v0}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lgwg;->b:Ljava/lang/Object;

    iget-object v1, p0, Lgwg;->a:Ljava/lang/Object;

    invoke-interface {v1}, Lgxl;->h()Lgxy;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lgwg;->a:Ljava/lang/Object;

    invoke-interface {v2}, Lgxl;->j()Lgyb;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lgxm;->q(Lgxy;Lgxt;Lgyb;)V

    iget-object p1, p0, Lgwg;->a:Ljava/lang/Object;

    invoke-interface {p1}, Lgxl;->h()Lgxy;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lgwg;->a:Ljava/lang/Object;

    invoke-interface {p1}, Lgxl;->a()Lkae;

    iget-object p1, p0, Lgwg;->c:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lciq;

    invoke-virtual {p1}, Lciq;->a()V

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lgwg;->c:Ljava/lang/Object;

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Processing success state was not valid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Lepd;

    const-string v1, "Error processing primary shot"

    invoke-static {p1, v1, v0}, Lepq;->m(Lepd;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    iget-object p1, p0, Lgwg;->a:Ljava/lang/Object;

    iget-object v0, p0, Lgwg;->c:Ljava/lang/Object;

    check-cast v0, Lepd;

    iget-object v0, v0, Lepd;->b:Leea;

    sget-object v1, Lmpx;->a:Lmpx;

    check-cast p1, Lepq;

    invoke-virtual {p1, v0, v1}, Lepq;->k(Leea;Lmqp;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
