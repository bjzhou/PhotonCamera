.class public final synthetic Lcem;
.super Ljava/lang/Object;

# interfaces
.implements Lhip;


# instance fields
.field public final synthetic a:Lnph;

.field public final synthetic b:Loiw;

.field public final synthetic c:Loiw;

.field public final synthetic d:Lcdi;


# direct methods
.method public synthetic constructor <init>(Lnph;Loiw;Lcdi;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcem;->a:Lnph;

    iput-object p2, p0, Lcem;->b:Loiw;

    iput-object p3, p0, Lcem;->d:Lcdi;

    iput-object p4, p0, Lcem;->c:Loiw;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcem;->a:Lnph;

    iget-object v1, p0, Lcem;->b:Loiw;

    iget-object v2, p0, Lcem;->d:Lcdi;

    iget-object v3, p0, Lcem;->c:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lceh;

    invoke-virtual {v0, v4}, Lnph;->e(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcdi;->i()Ljuf;

    move-result-object v0

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljvs;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lceh;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcbl;

    const/16 v4, 0x8

    invoke-direct {v3, v1, v4}, Lcbl;-><init>(Lceh;I)V

    sget-object v1, Lnnv;->a:Lnnv;

    invoke-interface {v2, v3, v1}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    return-void
.end method
