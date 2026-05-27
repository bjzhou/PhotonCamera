.class public final synthetic Lcpp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcpu;

.field public final synthetic b:Lnph;

.field public final synthetic c:Ljyc;


# direct methods
.method public synthetic constructor <init>(Lcpu;Lnph;Ljyc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcpp;->a:Lcpu;

    iput-object p2, p0, Lcpp;->b:Lnph;

    iput-object p3, p0, Lcpp;->c:Ljyc;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcpp;->a:Lcpu;

    iget-object v1, p0, Lcpp;->b:Lnph;

    iget-object v2, p0, Lcpp;->c:Ljyc;

    iget-object v0, v0, Lcpu;->t:Lhkn;

    sget-object v3, Lhkm;->e:Lhkm;

    invoke-virtual {v0, v3}, Lhkh;->h(Ljava/lang/Enum;)V

    invoke-interface {v2}, Ljyc;->k()Lnou;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnph;->f(Lnou;)Z

    return-void
.end method
